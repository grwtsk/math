# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Anchor.Variant9fa92aea236dab9cafa34e286a5ee8c1ba93bc533cfe41c7260e6fd398626d6a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7cee02ee798d669f74a9c4ba7a6cf77442dfb2e3` · SHA-256 `141e44427400d5058a5110b59e3c3d6fdbe5ee6eff10dc992d4c569eff469e7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasAnchor.Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.HasAnchor.Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Anchor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types
import Lean.Meta.Tactic.Grind.MarkNestedSubsingletons
import Init.Omega

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasAnchor.Variant82ac1229be96f30c5bbb36729ec63dac28437f76523ef83ef3150cad4e2beaaa

namespace Lean.Meta.Grind

/-!
Anchor (aka stable hash) support for `grind`. We use
anchors to reference terms in the `grind` state.
-/

/--
Hashes names for computing anchors (aka stable hash codes)
-/
def hashName (n : Name) : UInt64 :=
  if n.hasMacroScopes || n.isInaccessibleUserName || n.isImplementationDetail then
    0
  else if isPrivateName n then
    hash (privateToUserName n)
  else if n.isInternal then
    /-
    **Note** We consider hashing the prefix, but it was not good enough.
    For example, an internal name may depend on the name of theorem being defined.
    Moreover, changing a `theorem` to an `example` would break anchors.
    -/
    0
  else
    hash n

-- `mixHash` variant where `0` is treated as don't care
def mix (a b : UInt64) : UInt64 :=
  if a == 0 then b
  else if b == 0 then a
  else mixHash a b

public partial def getAnchor (e : Expr) : GrindM UInt64 := do
  if let some a := (← get).anchors.find? { expr := e } then
    return a
  let a ← match e with
    | .const declName _ =>
      /-
      **Note**: we skip matcher declaration names because they may introduce some
      "instability". Recall that `match` auxiliary declarations are reused.
      -/
      if (← isMatcher declName) then pure 0
      else pure <| hashName declName
    | .fvar fvarId =>
      let userName := (← fvarId.getDecl).userName
      pure <| hashName userName
    | .mdata _ b => getAnchor b
    | .letE n v t b _ =>
      pure <| mix (hashName n) <| mix (← getAnchor t) <| mix (← getAnchor v) (← getAnchor b)
    | .lam n d b _ | .forallE n d b _ =>
      pure <| mix (hashName n) <| mix (← getAnchor d) (← getAnchor b)
    | .proj _ i s => pure <| mix (hash i) (← getAnchor s)
    | .bvar idx => pure <| hash idx
    | .lit v => pure <| hash v
    | .app .. => e.withApp fun f args => do
      if isMarkedSubsingletonConst f && args.size == 2 then
        -- **Note**: we only visit the type of marked subsingleton terms.
        getAnchor args[0]!
      else
        let pinfos ← if f.hasLooseBVars then
          pure #[]
        else
          pure <| (← getFunInfo f).paramInfo
        let mut r ← getAnchor f
        for h : i in *...args.size do
          let arg := args[i]
          if h : i < pinfos.size then
            let info := pinfos[i]
            -- **Note**: we ignore instances we computing stable hash codes
            -- TODO: evaluate whether we should ignore regular implicit arguments too.
            unless info.isImplicit do
              r := mix r (← getAnchor arg)
          else
            r := mix r (← getAnchor arg)
        pure r
    | .sort _ | .mvar _ => pure 0
  modify fun s => { s with anchors := s.anchors.insert { expr := e } a }
  return a

/--
Example: `{ numDigits := 4, anchorPrefix := 0x0c88 }.matches 0x0c88ab10ef20206a` returns `true`
-/
public def AnchorRef.matches (anchorRef : AnchorRef) (anchor : UInt64) : Bool :=
  let shift := 64 - anchorRef.numDigits.toUInt64*4
  anchorRef.anchorPrefix == anchor >>> shift

public class HasAnchor (α : Type u) where
  getAnchor : α → UInt64

/--
Returns the number of digits needed to distinguish the anchors in `es`.

Elements with identical (full) anchors cannot be distinguished by adding more digits.
Thus, they are ignored by this function. Callers must handle these collisions separately
(e.g., the `cases` tactic uses ordinal references such as `#a56e/2`).
-/
public def getNumDigitsForAnchors [HasAnchor α] (es : Array α) : Nat :=
  go 4
where
  go (numDigits : Nat) : Nat := Id.run do
    if 4*numDigits  < 64 then
      let shift := 64 - 4*numDigits
      let mut found : Std.HashMap UInt64 UInt64 := {}
      for e in es do
        let a := HasAnchor.getAnchor e
        let a' := a >>> shift.toUInt64
        if let some b := found[a']? then
          -- **Note**: if the full anchors are equal, expanding the number of digits does not help.
          if b != a then
            return (← go (numDigits+1))
        else
          found  := found.insert a' a
      return numDigits
    else
      return numDigits
  termination_by 64 - 4*numDigits

public structure ExprWithAnchor where
  e      : Expr
  anchor : UInt64

public instance : HasAnchor ExprWithAnchor where
  getAnchor e := e.anchor

public def mkAnchorSyntaxFromPrefix (numDigits : Nat) (anchorPrefix : UInt64) : CoreM (TSyntax ``Parser.Tactic.anchor) := do
  let hexnum := mkNode `hexnum #[mkAtom (anchorPrefixToString numDigits anchorPrefix)]
  `(Parser.Tactic.anchor| #$hexnum)

public def mkAnchorSyntax (numDigits : Nat) (anchor : UInt64) : CoreM (TSyntax ``Parser.Tactic.anchor) := do
  let anchorPrefix := anchor >>> (64 - 4*numDigits.toUInt64)
  mkAnchorSyntaxFromPrefix numDigits anchorPrefix

public def SplitInfo.getAnchor (s : SplitInfo) : GrindM UInt64 := do
  Grind.getAnchor s.getExpr

end Lean.Meta.Grind
```
