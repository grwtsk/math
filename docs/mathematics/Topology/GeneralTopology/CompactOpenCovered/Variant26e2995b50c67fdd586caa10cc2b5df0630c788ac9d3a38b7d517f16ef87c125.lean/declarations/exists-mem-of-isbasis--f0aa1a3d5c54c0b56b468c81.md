# exists_mem_of_isBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0c827a7-73fa-11a6-35fa-c308f1c06cfd",
  "kind": "lemma",
  "lexical_name": "exists_mem_of_isBasis",
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
  "slug": "exists-mem-of-isbasis--f0aa1a3d5c54c0b56b468c81",
  "source": {
    "blob": "727304af98e65385a9f5b9a0d0c9f8f24f08e7af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 137,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpenCovered/Variant26e2995b50c67fdd586caa10cc2b5df0630c788ac9d3a38b7d517f16ef87c125.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0aa1a3d5c54c0b56b468c813d5e8ab139172836d349fe0f54a7bfcb9c298330",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOpenCovered/Variant26e2995b50c67fdd586caa10cc2b5df0630c788ac9d3a38b7d517f16ef87c125.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0c827a7-73fa-11a6-35fa-c308f1c06cfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_mem_of_isBasis {B : ∀ i, Set (Opens (X i))} (hB : ∀ i, IsBasis (B i))
    (hBc : ∀ (i : ι), ∀ U ∈ B i, IsCompact U.1)
    {U : Set S} (hU : IsCompactOpenCovered f U) :
    ∃ (n : ℕ) (a : Fin n → ι) (V : ∀ i, Opens (X (a i))),
      (∀ i, V i ∈ B (a i)) ∧ ⋃ i, f (a i) '' V i = U := by
  suffices h : ∃ (κ : Type _) (_ : Finite κ) (a : κ → ι) (V : ∀ i, Opens (X (a i))),
      (∀ i, V i ∈ B (a i)) ∧ (∀ i, IsCompact (V i).1) ∧ ⋃ i, f (a i) '' V i = U by
    obtain ⟨κ, _, a, V, hB, hc, hU⟩ := h
    cases nonempty_fintype κ
    refine ⟨Fintype.card κ, a ∘ (Fintype.equivFin κ).symm, fun i ↦ V _, fun i ↦ hB _, ?_⟩
    simp [← hU, ← (Fintype.equivFin κ).symm.surjective.iUnion_comp, Function.comp_apply]
  obtain ⟨s, hs, V, hc, hunion⟩ := hU
  choose Us UsB hUsf hUs using fun i : s ↦ (hB i.1).exists_finite_of_isCompact (hc i i.2)
  let σ := Σ i : s, Us i
  have : Finite s := hs
  have (i : _) : Finite (Us i) := hUsf i
  refine ⟨σ, inferInstance, fun i ↦ i.1.1, fun i ↦ i.2.1, fun i ↦ UsB _ (by simp),
      fun _ ↦ hBc _ _ (UsB _ (by simp)), ?_⟩
  rw [← hunion]
  ext x
  simp_rw [Set.mem_iUnion]
  refine ⟨fun ⟨i, hi, o, ho⟩ ↦ by aesop, fun ⟨i, hi, h, hmem, heq⟩ ↦ ?_⟩
  rw [hUs ⟨i, hi⟩, coe_sSup, Set.mem_iUnion] at hmem
  obtain ⟨a, ha⟩ := hmem
  simp only [Set.mem_iUnion, SetLike.mem_coe, exists_prop] at ha
  use ⟨⟨i, hi⟩, ⟨a, ha.1⟩⟩, h, ha.2, heq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpenCovered/Variant26e2995b50c67fdd586caa10cc2b5df0630c788ac9d3a38b7d517f16ef87c125.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpenCovered/Variant26e2995b50c67fdd586caa10cc2b5df0630c788ac9d3a38b7d517f16ef87c125.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `727304af98e65385a9f5b9a0d0c9f8f24f08e7af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
