# im_apply_eq_zero_of_tendsto_nhds_opNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c59927f16d4b962da2748cc8403cf9333d5b892",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2570fbe3-5d4e-e2d1-dd3e-56d53ec62973",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a42320c8-61d8-a26a-29dc-91b96cf1af08",
  "kind": "lemma",
  "lexical_name": "im_apply_eq_zero_of_tendsto_nhds_opNorm",
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
  "slug": "im-apply-eq-zero-of-tendsto-nhds-opnorm--ef9484697ea4da3ca6b0758f",
  "source": {
    "blob": "7c59927f16d4b962da2748cc8403cf9333d5b892",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 87,
    "path": "GRWTSK/Topology/GeneralTopology/PositiveLinearFunctional/Variant1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef9484697ea4da3ca6b0758fc74c11566d6bd2a865f0149b7d3c7bbd98c1e3b8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PositiveLinearFunctional/Variant1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a42320c8-61d8-a26a-29dc-91b96cf1af08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma im_apply_eq_zero_of_tendsto_nhds_opNorm {l : Filter A}
    (hl : l.IsIncreasingApproximateUnit) (hf : l.Tendsto (f ·) (𝓝 ‖f‖)) {a : A}
    (ha : IsSelfAdjoint a) : (f a).im = 0 := by
  by_cases ‖f‖ = 0
  · simp_all
  suffices ∀ (t : ℝ), ‖f a + I * t * ‖f‖‖ ^ 2 ≤ ‖f‖ ^ 2 * (‖a‖ ^ 2 + t ^ 2) by
    contrapose! this
    refine ⟨(‖f‖ ^ 2 * ‖a‖ ^ 2 - ‖f a‖ ^ 2 + 1) / (2 * (f a).im * ‖f‖), ?_⟩
    simp [normSq, ← normSq_eq_norm_sq, -ofReal_div]; field_simp; grind
  intro t
  suffices (fun x ↦ ‖f (a + (I * t) • x)‖ ^ 2) ≤ᶠ[l]
        (fun x ↦ ‖f‖ ^ 2 * (‖a‖ ^ 2 + t ^ 2 + |t| * ‖a * x - x * a‖)) by
    refine le_of_tendsto_of_tendsto (hb := hl.neBot) ?_ ?_ this
    · simp_rw [map_add, map_smul, smul_eq_mul]
      apply_rules [Tendsto.pow, Tendsto.norm, Tendsto.const_add, Tendsto.const_mul]
    · simpa using (hl.tendsto_mul_left a).sub (hl.tendsto_mul_right a)
        |>.norm |>.const_mul _ |>.const_add _ |>.const_mul _
  filter_upwards [hl.eventually_isSelfAdjoint, hl.eventually_norm] with x hx hx2
  grw [f.le_opNorm, mul_pow, mul_le_mul_iff_of_pos_left (by simp_all), sq, ← norm_star_mul_self]
  calc
    _ = ‖a * a + (t ^ 2 : ℂ) • (x * x) + (I * t) • (a * x + -(x * a))‖ := by
      simp [add_mul, mul_add, smul_mul_assoc, mul_smul_comm, smul_smul, mul_mul_mul_comm]
      grind [sq]
    _ ≤ ‖a‖ ^ 2 + t ^ 2 + |t| * ‖a * x - x * a‖ := by
      grw [add_assoc, sq, norm_add_le, norm_add_le, ← sub_eq_add_neg, sq, ← norm_star_mul_self,
        add_assoc, ha.star_eq, add_le_add_iff_left, norm_smul, norm_mul_le x, hx2, hx2]
      simp [norm_smul, sq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PositiveLinearFunctional/Variant1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PositiveLinearFunctional/Variant1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c59927f16d4b962da2748cc8403cf9333d5b892` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
