# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Position.Variantce3b9db3222e76df137ceba703ed6f93106ad3e64b14fbc983e3a7d8765afaae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `daaacce52ab4320b949e8e1b1d4c63d7c975c11b` · SHA-256 `07487d23ee65c76995c9c8db4e4a611a462266eef484f3c599e4202e37208783`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Position.Varianta2c2b46428e3e78bf253011464c7d79c63e3ba0823ccc350f98612572c158d21","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a2c2b46428e3e78bf253011464c7d79c63e3ba0823ccc350f98612572c158d21","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Position.Varianta2c2b46428e3e78bf253011464c7d79c63e3ba0823ccc350f98612572c158d21","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a2c2b46428e3e78bf253011464c7d79c63e3ba0823ccc350f98612572c158d21","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/Position.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Sebastian Ullrich
-/
module

prelude
public import Lean.Data.Json.FromToJson.Basic
public import Lean.ToExpr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Position.Varianta2c2b46428e3e78bf253011464c7d79c63e3ba0823ccc350f98612572c158d21

public section

namespace Lean

structure Position where
  line   : Nat
  column : Nat
  deriving Inhabited, DecidableEq, Repr, ToJson, FromJson

namespace Position
protected def lt : Position → Position → Bool
  | ⟨l₁, c₁⟩, ⟨l₂, c₂⟩ => Prod.lexLt (l₁, c₁) (l₂, c₂)

instance : ToFormat Position :=
  ⟨fun ⟨l, c⟩ => "⟨" ++ format l ++ ", " ++ format c ++ "⟩"⟩

instance : ToString Position :=
  ⟨fun ⟨l, c⟩ => "⟨" ++ toString l ++ ", " ++ toString c ++ "⟩"⟩

instance : ToExpr Position where
  toExpr p   := mkAppN (mkConst ``Position.mk) #[toExpr p.line, toExpr p.column]
  toTypeExpr := mkConst ``Position

end Position

/-- Content of a file together with precalculated positions of newlines. -/
structure FileMap where
  /-- The content of the file. -/
  source    : String
  /-- The positions of newline characters.
  The first entry is always `0` and the last always the index of the last character.
  In particular, if the last character is a newline, that index will appear twice. -/
  positions : Array String.Pos.Raw
  deriving Inhabited

class MonadFileMap (m : Type → Type) where
  getFileMap : m FileMap

export MonadFileMap (getFileMap)

namespace FileMap

/-- The last line should always be `positions.size - 1`. -/
def getLastLine (fmap : FileMap) : Nat :=
  fmap.positions.size - 1

/-- The line numbers associated with the `positions` of the `FileMap`.
`fmap.getLine i` is the iᵗʰ entry of `#[1, 2, …, n-1, n-1]`
where `n` is the `size` of `positions`. -/
def getLine (fmap : FileMap) (x : Nat) : Nat :=
  min (x + 1) fmap.getLastLine

partial def ofString (s : String) : FileMap :=
  let rec loop (i : String.Pos.Raw) (ps : Array String.Pos.Raw) : FileMap :=
    if i.atEnd s then { source := s, positions := ps.push i }
    else
      let c := i.get s
      let i := i.next s
      if c == '\n' then loop i (ps.push i)
      else loop i ps
  loop 0 #[0]

partial def toPosition (fmap : FileMap) (pos : String.Pos.Raw) : Position :=
  match fmap with
  | { source := str, positions := ps } =>
    if ps.size >= 2 && pos <= ps.back! then
      let rec toColumn (i : String.Pos.Raw) (c : Nat) : Nat :=
        if i == pos || i.atEnd str then c
        else toColumn (i.next str) (c+1)
      let rec loop (b e : Nat) :=
        let posB := ps[b]!
        if e == b + 1 then { line := fmap.getLine b, column := toColumn posB 0 }
        else
          let m := (b + e) / 2;
          let posM := ps[m]!
          if pos == posM then { line := fmap.getLine m, column := 0 }
          else if pos > posM then loop m e
          else loop b m
      loop 0 (ps.size - 1)
    else if ps.isEmpty then
      ⟨0, 0⟩
    else
      -- Some systems like the delaborator use synthetic positions without an input file,
      -- which would violate `toPositionAux`'s invariant.
      -- Can also happen with EOF errors, which are not strictly inside the file.
      ⟨fmap.getLastLine, ps.back!.byteDistance pos⟩

/-- Convert a `Lean.Position` to a `String.Pos`. -/
def ofPosition (text : FileMap) (pos : Position) : String.Pos.Raw :=
  let colPos :=
    if h : pos.line - 1 < text.positions.size then
      text.positions[pos.line - 1]
    else if text.positions.isEmpty then
      0
    else
      text.positions.back!
  (text.source.pos! colPos).nextn pos.column |>.offset

/--
Returns the position of the start of (1-based) line `line`.
This gives the same result as `map.ofPosition ⟨line, 0⟩`, but is more efficient.
-/
def lineStart (map : FileMap) (line : Nat) : String.Pos.Raw :=
  if h : line - 1 < map.positions.size then
    map.positions[line - 1]
  else map.positions.back?.getD 0

end FileMap
end Lean

def Lean.String.toFileMap (s : String) : Lean.FileMap :=
  Lean.FileMap.ofString s
```
