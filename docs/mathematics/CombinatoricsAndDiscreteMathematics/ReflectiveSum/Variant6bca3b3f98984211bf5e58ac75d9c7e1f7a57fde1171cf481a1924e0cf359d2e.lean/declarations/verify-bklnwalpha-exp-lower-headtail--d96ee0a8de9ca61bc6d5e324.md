# verify_bklnwAlpha_exp_lower_headTail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32a93c4758653263ab33bb578af15e9a25a3426f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1069,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da2face9-062c-3b0f-b1f0-32dcc39ffe8a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82478eca-0f2b-85e4-d754-21834cfff0e9",
  "kind": "theorem",
  "lexical_name": "verify_bklnwAlpha_exp_lower_headTail",
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
  "slug": "verify-bklnwalpha-exp-lower-headtail--d96ee0a8de9ca61bc6d5e324",
  "source": {
    "blob": "32a93c4758653263ab33bb578af15e9a25a3426f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1112,
    "line": 1069,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d96ee0a8de9ca61bc6d5e32497c0d82bbc18ce600109cbc603978388a6a325a1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82478eca-0f2b-85e4-d754-21834cfff0e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1069–1112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_bklnwAlpha_exp_lower_headTail (b limit headLimit : Nat) (target : ℚ)
    (cfg : BKLNWSumConfig := {})
    (hprec : cfg.precision ≤ 0 := by norm_num)
    (hb : b ≥ 1 := by norm_num)
    (hhead : 3 ≤ headLimit)
    (hle : headLimit ≤ limit)
    (hexppos : checkExpBLoGe1 b cfg.precision cfg.taylorDepth = true)
    (h_check : checkBKLNWAlphaExpLowerBoundHeadTail b limit headLimit target cfg = true) :
    target ≤ (1 + bklnwAlpha : ℝ) * bklnwF (Real.exp (b : ℝ)) limit := by
  let bInterval := IntervalDyadic.ofIntervalRat (IntervalRat.singleton b) cfg.precision
  let expB := expIntervalDyadic bInterval cfg.toDyadicConfig
  have hexp : Real.exp (b : ℝ) ∈ expB := mem_expB_of_nat b cfg hprec
  have hpos : expB.toIntervalRat.lo > 0 := expB_lo_pos b hb cfg hprec hexppos
  have hhead_mem_std : bklnwF (Real.exp (b : ℝ)) headLimit ∈ bklnwSumExpDyadic b headLimit cfg := by
    unfold bklnwSumExpDyadic
    simpa [bInterval, expB] using mem_bklnwSumDyadic hexp hpos headLimit cfg hprec
  have hhead_mem_cached : bklnwF (Real.exp (b : ℝ)) headLimit ∈ bklnwSumExpDyadicCached b headLimit cfg := by
    rw [bklnwSumExpDyadicCached_eq b headLimit cfg]
    exact hhead_mem_std
  have hhead_lo :
      (bklnwSumExpDyadicCached b headLimit cfg).lo.toRat ≤ bklnwF (Real.exp (b : ℝ)) headLimit :=
    IntervalDyadic.lo_le_of_mem hhead_mem_cached
  have hhead_le_limit :
      bklnwF (Real.exp (b : ℝ)) headLimit ≤ bklnwF (Real.exp (b : ℝ)) limit :=
    bklnwF_exp_head_lower b limit headLimit hhead hle
  have hsum_lower :
      (bklnwSumExpDyadicCached b headLimit cfg).lo.toRat ≤ bklnwF (Real.exp (b : ℝ)) limit :=
    le_trans hhead_lo hhead_le_limit
  have halpha_nonneg : (0 : ℝ) ≤ (1 + bklnwAlpha : ℝ) := by
    norm_num [bklnwAlpha]
  have hscaled :
      (1 + bklnwAlpha : ℝ) * (bklnwSumExpDyadicCached b headLimit cfg).lo.toRat ≤
        (1 + bklnwAlpha : ℝ) * bklnwF (Real.exp (b : ℝ)) limit :=
    mul_le_mul_of_nonneg_left hsum_lower halpha_nonneg
  have hcheck_q :
      target ≤ (1 + bklnwAlpha) * (bklnwSumExpDyadicCached b headLimit cfg).lo.toRat := by
    simpa [checkBKLNWAlphaExpLowerBoundHeadTail] using h_check
  have hcheck_r :
      target ≤ (1 + bklnwAlpha : ℝ) * (bklnwSumExpDyadicCached b headLimit cfg).lo.toRat := by
    exact_mod_cast hcheck_q
  exact le_trans hcheck_r hscaled

/-- Bridge theorem: if checkBKLNWAlphaExpUpperBound passes,
    then (1+α) * bklnwF(exp b, limit) ≤ target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean#L1069).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32a93c4758653263ab33bb578af15e9a25a3426f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
