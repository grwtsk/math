# shouldExtractLetValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5c9da1c4300b54752749f326c17299dbe3644f19e674f1bf179608e79d4dbbf",
  "kind": "def",
  "lexical_name": "shouldExtractLetValue",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "shouldextractletvalue--a0f15d522a2bb3bed1129769",
  "source": {
    "blob": "b9ec0a623f726f43f411ec78b8698507a8ef4bc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0f15d522a2bb3bed1129769e6dfa2d7e4bef92f6b6e6e653cd12ff84c6c7043",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5c9da1c4300b54752749f326c17299dbe3644f19e674f1bf179608e79d4dbbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def shouldExtractLetValue (isRoot : Bool) (v : LetValue .pure) : M Bool := do
  match v with
  | .lit (.str _) => return true
  | .lit (.nat v) =>
    -- The old compiler's implementation used the runtime's `is_scalar` function, which
    -- introduces a dependency on the architecture used by the compiler.
    return !isRoot || v >= Nat.pow 2 63
  | .lit _ | .erased => return !isRoot
  | .const name _ args =>
    if (← read).sccDecls.any (·.name == name) then
      return false
    if hasNeverExtractAttribute (← getEnv) name then
      return false
    if isRoot then
      if let some constInfo := (← getEnv).find? name then
        let shouldExtract := match constInfo with
        | .defnInfo val => val.type.isForall
        | .ctorInfo _ => !(args.all isIrrelevantArg)
        | _ => true
        if !shouldExtract then
          return false
      if let some decl ← LCNF.getMonoDecl? name then
        -- We don't want to extract constants as root terms
        if decl.getArity == 0 then
          return false
    args.allM shouldExtractArg
  | .fvar fnVar args => return (← shouldExtractFVar fnVar) && (← args.allM shouldExtractArg)
  | .proj _ _ baseVar => shouldExtractFVar baseVar

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variantde8477d6bacd2e984f7ac60bb48dabe723c391ae0f6e27f2ad28dd3e967f015c.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9ec0a623f726f43f411ec78b8698507a8ef4bc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
