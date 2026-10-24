# MeasurableSet.eq_preimage_restrict_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0913b417-c1ca-fb33-d3a3-d40bb75957f9",
  "kind": "lemma",
  "lexical_name": "MeasurableSet.eq_preimage_restrict_countable",
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
  "slug": "measurableset-eq-preimage-restrict-countable--2d2aa34eab4d2fca0a243fb9",
  "source": {
    "blob": "2f94d2f3a0ff3d5830d0500dc701143cb84e1896",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 500,
    "line": 479,
    "path": "GRWTSK/Analysis/MeasureTheory/Cylinders/Variantc1bd2a2248090516c28718d323adfcc82ac6dcb50b0f94a2e4b4f181d4142e76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d2aa34eab4d2fca0a243fb994318c7ee7a05cd66e9a8e2e50eae08a3fe29ced",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Cylinders/Variantc1bd2a2248090516c28718d323adfcc82ac6dcb50b0f94a2e4b4f181d4142e76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0913b417-c1ca-fb33-d3a3-d40bb75957f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–500.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MeasurableSet.eq_preimage_restrict_countable
    [∀ i, MeasurableSpace (α i)] {s : Set (Π i, α i)} (hs : MeasurableSet s) :
    ∃ I : Set ι, ∃ t, I.Countable ∧ s = I.domRestrict ⁻¹' t := by
  refine induction_on_inter generateFrom_squareCylinders.symm
    (isPiSystem_squareCylinders (fun _ ↦ isPiSystem_measurableSet) (by simp))
    ⟨∅, ∅, by simp⟩ ?_ ?_ ?_ s hs
  · rintro - ⟨I, t, -, rfl⟩
    exact ⟨I, univ.pi (fun i ↦ t i), I.countable_toSet, by ext; simp⟩
  · rintro - - ⟨I, t, hI, rfl⟩
    exact ⟨I, tᶜ, hI, by simp⟩
  intro f df mf hf
  choose! I t hI hf using hf
  refine ⟨⋃ n, I n, ⋃ n, (⋃ k, I k).domRestrict '' (f n), countable_iUnion hI, ?_⟩
  ext x
  simp only [hf, mem_iUnion, mem_preimage, preimage_iUnion, mem_image]
  refine ⟨fun ⟨i, hi⟩ ↦ ⟨i, x, hi, rfl⟩, fun ⟨n, x', hn, hx⟩ ↦ ⟨n, ?_⟩⟩
  have (x : Π i, α i) : (I n).domRestrict x =
      (fun (x : Π (i : ⋃ k, I k), α i) (i : I n) ↦ x ⟨i.1, subset_iUnion I n i.2⟩)
      ((⋃ k, I k).domRestrict x) := rfl
  rwa [this, ← hx, ← this]

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Cylinders/Variantc1bd2a2248090516c28718d323adfcc82ac6dcb50b0f94a2e4b4f181d4142e76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Cylinders/Variantc1bd2a2248090516c28718d323adfcc82ac6dcb50b0f94a2e4b4f181d4142e76.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f94d2f3a0ff3d5830d0500dc701143cb84e1896` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
