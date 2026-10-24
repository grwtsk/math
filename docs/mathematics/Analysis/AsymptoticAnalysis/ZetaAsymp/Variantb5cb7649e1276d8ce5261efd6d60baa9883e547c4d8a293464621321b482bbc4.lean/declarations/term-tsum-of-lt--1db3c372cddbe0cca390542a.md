# term_tsum_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e480af9f9916b5dec99f1a66725f221e6618d221",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 199,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e2e413b-1916-a8be-2e11-ddf48e91819d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64da766d-d1d8-d5bb-cc1b-48b55835fdee",
  "kind": "lemma",
  "lexical_name": "term_tsum_of_lt",
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
  "slug": "term-tsum-of-lt--1db3c372cddbe0cca390542a",
  "source": {
    "blob": "e480af9f9916b5dec99f1a66725f221e6618d221",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 199,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1db3c372cddbe0cca390542a3dab3b76aa29f8962a35b130528741f77a3e3622",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64da766d-d1d8-d5bb-cc1b-48b55835fdee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma term_tsum_of_lt {s : ℝ} (hs : 1 < s) :
    term_tsum s = (1 / (s - 1) - 1 / s * ∑' n : ℕ, 1 / (n + 1 : ℝ) ^ s) := by
  apply HasSum.tsum_eq
  rw [hasSum_iff_tendsto_nat_of_nonneg (fun n ↦ term_nonneg (n + 1) s)]
  change Tendsto (fun N ↦ term_sum s N) atTop _
  simp_rw [term_sum_of_lt _ hs]
  apply Tendsto.sub
  · rw [show 𝓝 (1 / (s - 1)) = 𝓝 (1 / (s - 1) - 1 / (s - 1) * 0) by simp]
    simp_rw [mul_sub, mul_one]
    refine tendsto_const_nhds.sub (Tendsto.const_mul _ ?_)
    refine tendsto_const_nhds.div_atTop <| (tendsto_rpow_atTop (by linarith)).comp ?_
    exact tendsto_atTop_add_const_right _ _ tendsto_natCast_atTop_atTop
  · rw [← sub_zero (tsum _)]
    apply (((Summable.hasSum ?_).tendsto_sum_nat).sub ?_).const_mul
    · exact_mod_cast (summable_nat_add_iff 1).mpr (summable_one_div_nat_rpow.mpr hs)
    · apply tendsto_of_tendsto_of_tendsto_of_le_of_le tendsto_const_nhds
      · change Tendsto (fun n : ℕ ↦ (1 / ↑(n + 1) : ℝ) ^ (s - 1)) ..
        rw [show 𝓝 (0 : ℝ) = 𝓝 (0 ^ (s - 1)) by rw [zero_rpow]; linarith]
        refine Tendsto.rpow_const ?_ (Or.inr <| by linarith)
        exact (tendsto_const_div_atTop_nhds_zero_nat _).comp (tendsto_add_atTop_nat _)
      · intro n
        positivity
      · intro n
        dsimp only
        transitivity (n + 1) / (n + 1) ^ s
        · gcongr
          linarith
        · apply le_of_eq
          rw [rpow_sub_one, ← div_mul, div_one, mul_comm, one_div, inv_rpow, ← div_eq_mul_inv]
          · norm_cast
          all_goals positivity

/-- Reformulation of `ZetaAsymptotics.term_tsum_of_lt` which is useful for some computations
below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e480af9f9916b5dec99f1a66725f221e6618d221` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
