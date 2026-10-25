# heat_compatible_preserves_horizontal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc7d96d0-59ba-844b-6fb2-129539d8b11a",
  "kind": "theorem",
  "lexical_name": "heat_compatible_preserves_horizontal",
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
  "slug": "heat-compatible-preserves-horizontal--c78e5c36fd956a3051cdb707",
  "source": {
    "blob": "c14edadf2c6d42aa68c7a826c9df7ea794f3b27a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SuppliedPredicatePreservation/Variantc962962f4004a75c/HorizontalPreservation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c78e5c36fd956a3051cdb707fb63a799df2af7b79c9dc8f77d8a566a3e8e8584",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SuppliedPredicatePreservation/Variantc962962f4004a75c/HorizontalPreservation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc7d96d0-59ba-844b-6fb2-129539d8b11a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heat_compatible_preserves_horizontal
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {H : Folder.CrystallineTensor.HeatFlowAction F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    (E : Folder.CrystallineTensor.HeatCompatibleEndomorphism H e)
    (nabla : Folder.CrystallineTensor.Connection F)
    (X : C.Site.Obj)
    (s : F.Section X)
    (h : nabla.horizontal X s) :
    nabla.horizontal X (e.map X s) :=
  Folder.CrystallineTensor.heat_compatible_preserves_horizontal E nabla X s h

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedPredicatePreservation.Variantc962962f4004a75c
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SuppliedPredicatePreservation/Variantc962962f4004a75c/HorizontalPreservation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SuppliedPredicatePreservation/Variantc962962f4004a75c/HorizontalPreservation.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c14edadf2c6d42aa68c7a826c9df7ea794f3b27a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
