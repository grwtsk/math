# LinearIndependent.eventually

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d1c2a4d7b4532225c58289c25d1964dc73d5457",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1743c097-ea61-bd69-4663-75141162e530",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2bfbce8e-8a7a-ca2e-befd-86b8352e2bef",
  "kind": "theorem",
  "lexical_name": "LinearIndependent.eventually",
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
  "slug": "linearindependent-eventually--1af041a6426621be162e43de",
  "source": {
    "blob": "4d1c2a4d7b4532225c58289c25d1964dc73d5457",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 232,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1af041a6426621be162e43de60caeedd9227bec1c7118458a79f85ba203b0b7d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bfbce8e-8a7a-ca2e-befd-86b8352e2bef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem LinearIndependent.eventually {ι} [Finite ι] {f : ι → E}
    (hf : LinearIndependent 𝕜 f) : ∀ᶠ g in 𝓝 f, LinearIndependent 𝕜 g := by
  cases nonempty_fintype ι
  simp only [Fintype.linearIndependent_iff'] at hf ⊢
  rcases LinearMap.exists_antilipschitzWith _ hf with ⟨K, K0, hK⟩
  have : Tendsto (fun g : ι → E => ∑ i, ‖g i - f i‖) (𝓝 f) (𝓝 <| ∑ i, ‖f i - f i‖) :=
    tendsto_finset_sum _ fun i _ =>
      Tendsto.norm <| ((continuous_apply i).tendsto _).sub tendsto_const_nhds
  simp only [sub_self, norm_zero, Finset.sum_const_zero] at this
  refine' (this.eventually (gt_mem_nhds <| inv_pos.2 K0)).mono fun g hg => _
  replace hg : ∑ i, ‖g i - f i‖₊ < K⁻¹
  · rw [← NNReal.coe_lt_coe]
    push_cast
    exact hg
  rw [LinearMap.ker_eq_bot]
  refine' (hK.add_sub_lipschitzWith (LipschitzWith.of_dist_le_mul fun v u => _) hg).injective
  simp only [dist_eq_norm, LinearMap.lsum_apply, Pi.sub_apply, LinearMap.sum_apply,
    LinearMap.comp_apply, LinearMap.proj_apply, LinearMap.smulRight_apply, LinearMap.id_apply, ←
    Finset.sum_sub_distrib, ← smul_sub, ← sub_smul, NNReal.coe_sum, coe_nnnorm, Finset.sum_mul]
  refine' norm_sum_le_of_le _ fun i _ => _
  rw [norm_smul, mul_comm]
  gcongr
  exact norm_le_pi_norm (v - u) i
#align linear_independent.eventually LinearIndependent.eventually

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant9396737cdada300dcfe5ae7d54b9e425ecb5c05fd4a77d22710b128a4f6ea8c1.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d1c2a4d7b4532225c58289c25d1964dc73d5457` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
