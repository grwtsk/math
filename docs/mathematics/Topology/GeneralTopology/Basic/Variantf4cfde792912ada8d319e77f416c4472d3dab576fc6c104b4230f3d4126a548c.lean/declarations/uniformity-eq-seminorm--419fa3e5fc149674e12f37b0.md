# uniformity_eq_seminorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1aec35bffddaf94f76bbd74293bc89515d4b7b3f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 451,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39034086-3aa1-bcd4-f7dc-d4c43dd28560",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70cc8710-6d9c-7777-023f-a08f7d83e491",
  "kind": "lemma",
  "lexical_name": "uniformity_eq_seminorm",
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
  "slug": "uniformity-eq-seminorm--419fa3e5fc149674e12f37b0",
  "source": {
    "blob": "1aec35bffddaf94f76bbd74293bc89515d4b7b3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 451,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:419fa3e5fc149674e12f37b08bd51a16c93c9691c6ad7cf3f130aca9fc054301",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70cc8710-6d9c-7777-023f-a08f7d83e491`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 451–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma uniformity_eq_seminorm :
    𝓤 (ContinuousMultilinearMap 𝕜 E G) = ⨅ r > 0, 𝓟 {f | ‖f.1 - f.2‖ < r} := by
  refine (ContinuousMultilinearMap.seminorm 𝕜 E G).uniformity_eq_of_hasBasis
    (ContinuousMultilinearMap.hasBasis_nhds_zero_of_basis Metric.nhds_basis_closedBall)
    ?_ fun (s, r) ⟨hs, hr⟩ ↦ ?_
  · rcases NormedField.exists_lt_norm 𝕜 1 with ⟨c, hc⟩
    have hc₀ : 0 < ‖c‖ := one_pos.trans hc
    simp only [hasBasis_nhds_zero.mem_iff, Prod.exists]
    use 1, closedBall 0 ‖c‖, closedBall 0 1
    suffices ∀ f : ContinuousMultilinearMap 𝕜 E G, (∀ x, ‖x‖ ≤ ‖c‖ → ‖f x‖ ≤ 1) → ‖f‖ ≤ 1 by
      simpa [NormedSpace.isVonNBounded_closedBall, closedBall_mem_nhds, Set.subset_def, Set.MapsTo]
    intro f hf
    refine opNorm_le_bound (by positivity) <|
      f.1.bound_of_shell_of_continuous f.2 (fun _ ↦ hc₀) (fun _ ↦ hc) fun x hcx hx ↦ ?_
    calc
      ‖f x‖ ≤ 1 := hf _ <| (pi_norm_le_iff_of_nonneg (norm_nonneg c)).2 fun i ↦ (hx i).le
      _ = ∏ i : ι, 1 := by simp
      _ ≤ ∏ i, ‖x i‖ := by gcongr with i; simpa only [div_self hc₀.ne'] using hcx i
      _ = 1 * ∏ i, ‖x i‖ := (one_mul _).symm
  · rcases (NormedSpace.isVonNBounded_iff' _).1 hs with ⟨ε, hε⟩
    rcases exists_pos_mul_lt hr (ε ^ Fintype.card ι) with ⟨δ, hδ₀, hδ⟩
    refine ⟨δ, hδ₀, fun f hf x hx ↦ ?_⟩
    simp only [Seminorm.mem_ball_zero, mem_closedBall_zero_iff] at hf ⊢
    replace hf : ‖f‖ ≤ δ := hf.le
    replace hx : ‖x‖ ≤ ε := hε x hx
    calc
      ‖f x‖ ≤ ‖f‖ * ε ^ Fintype.card ι := le_opNorm_mul_pow_card_of_le f hx
      _ ≤ δ * ε ^ Fintype.card ι := by have := (norm_nonneg x).trans hx; gcongr
      _ ≤ r := (mul_comm _ _).trans_le hδ.le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf4cfde792912ada8d319e77f416c4472d3dab576fc6c104b4230f3d4126a548c.lean#L451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1aec35bffddaf94f76bbd74293bc89515d4b7b3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
