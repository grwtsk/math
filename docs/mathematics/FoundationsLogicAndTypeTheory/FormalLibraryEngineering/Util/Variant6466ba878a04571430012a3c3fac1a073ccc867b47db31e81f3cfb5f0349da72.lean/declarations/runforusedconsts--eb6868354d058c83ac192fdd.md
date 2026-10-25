# runForUsedConsts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a248e061312b2650efcb86fe122ad7928a7cbc6194ec002516b70d6c46d647b4",
  "kind": "def",
  "lexical_name": "runForUsedConsts",
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
  "slug": "runforusedconsts--eb6868354d058c83ac192fdd",
  "source": {
    "blob": "abe28151c16e616ca0f204cbd0334323d0307d7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant6466ba878a04571430012a3c3fac1a073ccc867b47db31e81f3cfb5f0349da72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb6868354d058c83ac192fdd0cb8c4bac0e00d65917e93196431fd8edb531cff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant6466ba878a04571430012a3c3fac1a073ccc867b47db31e81f3cfb5f0349da72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a248e061312b2650efcb86fe122ad7928a7cbc6194ec002516b70d6c46d647b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runForUsedConsts [Monad m] (info : Lean.ConstantInfo) (f : Lean.Name → m Unit) : m Unit := do
  info.type.getUsedConstants.forM f
  f info.name
  if let some val := info.value? (allowOpaque := true) then
    val.getUsedConstants.forM f

  match info with
  | .axiomInfo .. | .quotInfo .. | .defnInfo .. | .thmInfo .. | .opaqueInfo .. => return ()
  | .inductInfo info =>
    info.ctors.forM f
    info.all.forM f
  | .ctorInfo info =>
    f info.induct
  | .recInfo info =>
    info.rules.forM fun rule => do
      f rule.ctor
      rule.rhs.getUsedConstants.forM f

end Comparator
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant6466ba878a04571430012a3c3fac1a073ccc867b47db31e81f3cfb5f0349da72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant6466ba878a04571430012a3c3fac1a073ccc867b47db31e81f3cfb5f0349da72.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abe28151c16e616ca0f204cbd0334323d0307d7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
