# isIso_quotient_map_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6585aee6a4155a8620b3a5499806de3788d7997e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7b28350eed0b0874001e5e1292a9b95627c5bd52164976eeaf5391c2d10ba48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1da5ace-ac3c-ac3c-617b-706afa62d023",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad2aab6a-d066-550e-b7db-e40645a06dcf",
  "kind": "lemma",
  "lexical_name": "isIso_quotient_map_iff",
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
  "slug": "isiso-quotient-map-iff--7c3a27f3c6cec9436f8319c2",
  "source": {
    "blob": "6585aee6a4155a8620b3a5499806de3788d7997e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 200,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variante7b28350eed0b0874001e5e1292a9b95627c5bd52164976eeaf5391c2d10ba48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c3a27f3c6cec9436f8319c23912a98d6fe7b2f9e74e74ef89838c548044b0f1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variante7b28350eed0b0874001e5e1292a9b95627c5bd52164976eeaf5391c2d10ba48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad2aab6a-d066-550e-b7db-e40645a06dcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_quotient_map_iff
    {K L : CochainComplex.Plus (InjectiveObject C)} (f : K ⟶ L) :
    IsIso ((quotient _).map f) ↔
    CochainComplex.Plus.quasiIso C ((InjectiveObject.ι C).mapCochainComplexPlus.map f) := by
  rw [← isIso_iff_of_reflects_iso _ (HomotopyCategory.Plus.ι (InjectiveObject C)),
    ← isIso_iff_of_reflects_iso _ (Functor.mapHomotopyCategory (InjectiveObject.ι C) (.up ℤ))]
  dsimp
  rw [HomologicalComplex.isIso_quotient_map_iff_homotopyEquivalences,
    ← CochainComplex.IsKInjective.quasiIso_iff]
  rfl

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
open HomologicalComplex in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variante7b28350eed0b0874001e5e1292a9b95627c5bd52164976eeaf5391c2d10ba48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variante7b28350eed0b0874001e5e1292a9b95627c5bd52164976eeaf5391c2d10ba48.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6585aee6a4155a8620b3a5499806de3788d7997e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
