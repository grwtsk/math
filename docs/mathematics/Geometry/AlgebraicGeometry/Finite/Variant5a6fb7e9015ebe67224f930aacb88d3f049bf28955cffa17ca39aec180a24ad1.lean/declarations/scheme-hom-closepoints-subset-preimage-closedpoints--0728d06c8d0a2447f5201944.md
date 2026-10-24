# Scheme.Hom.closePoints_subset_preimage_closedPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4d254dae0e2c1bd8ceb4ce6accb356ec05d9467",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d17aee3b-2caa-ccd2-0b84-b8f524a3ad23",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7930d37c-d3b9-6b5f-327f-1d6a818d58e2",
  "kind": "lemma",
  "lexical_name": "Scheme.Hom.closePoints_subset_preimage_closedPoints",
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
  "slug": "scheme-hom-closepoints-subset-preimage-closedpoints--0728d06c8d0a2447f5201944",
  "source": {
    "blob": "a4d254dae0e2c1bd8ceb4ce6accb356ec05d9467",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 155,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0728d06c8d0a2447f5201944b908e028c87a96e3a8f4d1821e110b37ec30b253",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7930d37c-d3b9-6b5f-327f-1d6a818d58e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.Hom.closePoints_subset_preimage_closedPoints
    {X Y : Scheme.{u}} (f : X ⟶ Y) [JacobsonSpace Y] [LocallyOfFiniteType f] :
    closedPoints X ⊆ f.base ⁻¹' closedPoints Y := by
  intro x hx
  have := isClosed_singleton_iff_isClosedImmersion.mp hx
  have := (isFinite_iff_locallyOfFiniteType_of_jacobsonSpace
    (f := X.fromSpecResidueField x ≫ f)).mpr inferInstance
  simpa [Set.range_comp, Scheme.range_fromSpecResidueField] using
    (X.fromSpecResidueField x ≫ f).isClosedMap.isClosed_range

@[stacks 01TB "(1) => (2)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4d254dae0e2c1bd8ceb4ce6accb356ec05d9467` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
