# ExcenterExists.excenter_notMem_affineSpan_face

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e8e7231-98a7-5a9c-4be0-c250211b79c0",
  "kind": "lemma",
  "lexical_name": "ExcenterExists.excenter_notMem_affineSpan_face",
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
  "slug": "excenterexists-excenter-notmem-affinespan-face--909775d3dcb58119d2d31bfa",
  "source": {
    "blob": "401cc1ded433db248dd46aeca64cc5cd3edffc93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 617,
    "line": 600,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:909775d3dcb58119d2d31bfa58fc5d5f5e1f8eabbe599ec7572bea5cc3895921",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e8e7231-98a7-5a9c-4be0-c250211b79c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 600–617.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ExcenterExists.excenter_notMem_affineSpan_face {signs : Finset (Fin (n + 1))}
    (h : s.ExcenterExists signs) {fs : Finset (Fin (n + 1))} {m : ℕ} (hfs : #fs = m + 1)
    (hne : m ≠ n) : s.excenter signs ∉ affineSpan ℝ (Set.range (s.face hfs).points) := by
  intro hm
  rw [range_face_points] at hm
  obtain ⟨i, hi⟩ : ∃ i, i ∉ (fs : Set (Fin (n + 1))) := by
    simp only [SetLike.mem_coe]
    have hc : #fs < #(Finset.univ : Finset (Fin (n + 1))) := by
      have : m + 1 ≤ #fs := hfs.ge
      grw [fs.subset_univ] at this
      simp only [Finset.card_univ, Fintype.card_fin] at *
      lia
    obtain ⟨i, -, hi⟩ := Finset.exists_mem_notMem_of_card_lt_card hc
    exact ⟨i, hi⟩
  rw [excenter_eq_affineCombination] at hm
  exact h.excenterWeights_ne_zero i (s.independent.eq_zero_of_affineCombination_mem_affineSpan
    h.sum_excenterWeights_eq_one hm (Finset.mem_univ i) hi)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean#L600).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401cc1ded433db248dd46aeca64cc5cd3edffc93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
