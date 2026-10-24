# affineCombination_mem_closedInterior_face_iff_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a58d755-bb2f-80f4-23fd-830188433aa4",
  "kind": "lemma",
  "lexical_name": "affineCombination_mem_closedInterior_face_iff_nonneg",
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
  "slug": "affinecombination-mem-closedinterior-face-iff-nonneg--c19bd33c98a47c1995cd49d4",
  "source": {
    "blob": "7ad06735d7ccbc4a48f226c875c5799ed4eb37e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 607,
    "line": 598,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4ce319c5e1f47fbb923477dd07df8aaaf719873b2c76e199e82325c816c9ae1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c19bd33c98a47c1995cd49d4565863f6473f37f13ae1ebde05d5c92a9c12f43a",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4ce319c5e1f47fbb923477dd07df8aaaf719873b2c76e199e82325c816c9ae1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a58d755-bb2f-80f4-23fd-830188433aa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 598–607.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma affineCombination_mem_closedInterior_face_iff_nonneg [IsOrderedAddMonoid k] {n : ℕ}
    (s : Simplex k P n) {fs : Finset (Fin (n + 1))} {m : ℕ} (h : #fs = m + 1)
    {w : Fin (n + 1) → k} (hw : ∑ i, w i = 1) :
    Finset.univ.affineCombination k s.points w ∈ (s.face h).closedInterior ↔
      (∀ i ∈ fs, 0 ≤ w i) ∧ (∀ i ∉ fs, w i = 0) := by
  rw [s.affineCombination_mem_closedInterior_face_iff_mem_Icc h hw]
  refine ⟨by grind, fun ⟨hii, hi0⟩ ↦ ⟨fun i hi ↦ ⟨hii i hi, ?_⟩, hi0⟩⟩
  rw [← hw, ← Finset.sum_subset (Finset.subset_univ fs) fun j _ ↦ hi0 j]
  exact Finset.single_le_sum (fun t ht ↦ (hii t ht)) hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4ce319c5e1f47fbb923477dd07df8aaaf719873b2c76e199e82325c816c9ae1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4ce319c5e1f47fbb923477dd07df8aaaf719873b2c76e199e82325c816c9ae1.lean#L598).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ad06735d7ccbc4a48f226c875c5799ed4eb37e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
