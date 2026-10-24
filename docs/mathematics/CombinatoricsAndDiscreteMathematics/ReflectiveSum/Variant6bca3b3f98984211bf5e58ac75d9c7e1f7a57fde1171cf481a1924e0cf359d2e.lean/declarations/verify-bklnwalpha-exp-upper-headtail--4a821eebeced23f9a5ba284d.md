# verify_bklnwAlpha_exp_upper_headTail

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
      "line": 997,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d879e118-9425-1b86-19ce-67c0527fa792",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3664d541-a223-19d9-9796-3ce64ad0325a",
  "kind": "theorem",
  "lexical_name": "verify_bklnwAlpha_exp_upper_headTail",
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
  "slug": "verify-bklnwalpha-exp-upper-headtail--4a821eebeced23f9a5ba284d",
  "source": {
    "blob": "32a93c4758653263ab33bb578af15e9a25a3426f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1068,
    "line": 997,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a821eebeced23f9a5ba284dde17e37a14e8c6e2db1fd44506a7380352c70a83",
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

Occurrence: `result:3664d541-a223-19d9-9796-3ce64ad0325a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 997–1068.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_bklnwAlpha_exp_upper_headTail (b limit headLimit : Nat) (target : ℚ)
    (cfg : BKLNWSumConfig := {})
    (hprec : cfg.precision ≤ 0 := by norm_num)
    (hb : b ≥ 1 := by norm_num)
    (hhead : 3 ≤ headLimit)
    (hle : headLimit ≤ limit)
    (hexppos : checkExpBLoGe1 b cfg.precision cfg.taylorDepth = true)
    (h_check : checkBKLNWAlphaExpUpperBoundHeadTail b limit headLimit target cfg = true) :
    (1 + bklnwAlpha : ℝ) * bklnwF (Real.exp (b : ℝ)) limit ≤ target := by
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
  have hhead_hi :
      bklnwF (Real.exp (b : ℝ)) headLimit ≤ (bklnwSumExpDyadicCached b headLimit cfg).hi.toRat :=
    IntervalDyadic.le_hi_of_mem hhead_mem_cached
  have htail_mem : bklnwExpTerm b (headLimit + 1) ∈ expTermIntervalDyadic b (headLimit + 1) cfg :=
    mem_expTermIntervalDyadic b (headLimit + 1) cfg hprec
  have htail_hi :
      bklnwExpTerm b (headLimit + 1) ≤ (expTermIntervalDyadic b (headLimit + 1) cfg).hi.toRat :=
    IntervalDyadic.le_hi_of_mem htail_mem
  have hsum_upper :
      bklnwF (Real.exp (b : ℝ)) limit ≤
        (bklnwSumExpDyadicCached b headLimit cfg).hi.toRat +
          (((limit - headLimit : Nat) : ℝ) * (expTermIntervalDyadic b (headLimit + 1) cfg).hi.toRat) := by
    calc
      bklnwF (Real.exp (b : ℝ)) limit
          ≤ bklnwF (Real.exp (b : ℝ)) headLimit +
              (((limit - headLimit : Nat) : ℝ) * bklnwExpTerm b (headLimit + 1)) :=
            bklnwF_exp_tail_upper b limit headLimit hhead hle
      _ ≤ (bklnwSumExpDyadicCached b headLimit cfg).hi.toRat +
            (((limit - headLimit : Nat) : ℝ) * bklnwExpTerm b (headLimit + 1)) := by
          gcongr
      _ ≤ (bklnwSumExpDyadicCached b headLimit cfg).hi.toRat +
            (((limit - headLimit : Nat) : ℝ) * (expTermIntervalDyadic b (headLimit + 1) cfg).hi.toRat) := by
          gcongr
  have halpha_nonneg : (0 : ℝ) ≤ (1 + bklnwAlpha : ℝ) := by
    norm_num [bklnwAlpha]
  have hscaled :
      (1 + bklnwAlpha : ℝ) * bklnwF (Real.exp (b : ℝ)) limit ≤
        (1 + bklnwAlpha : ℝ) *
          ((bklnwSumExpDyadicCached b headLimit cfg).hi.toRat +
            (((limit - headLimit : Nat) : ℝ) * (expTermIntervalDyadic b (headLimit + 1) cfg).hi.toRat)) :=
    mul_le_mul_of_nonneg_left hsum_upper halpha_nonneg
  have hcheck_q :
      (1 + bklnwAlpha) *
          ((bklnwSumExpDyadicCached b headLimit cfg).hi.toRat +
            ((limit - headLimit : Nat) : ℚ) * (expTermIntervalDyadic b (headLimit + 1) cfg).hi.toRat)
        ≤ target := by
    simpa [checkBKLNWAlphaExpUpperBoundHeadTail] using h_check
  have hcheck_r :
      (1 + bklnwAlpha : ℝ) *
          (((bklnwSumExpDyadicCached b headLimit cfg).hi.toRat : ℝ) +
            (((limit - headLimit : Nat) : ℚ) : ℝ) *
              ((expTermIntervalDyadic b (headLimit + 1) cfg).hi.toRat : ℝ))
        ≤ target := by
    exact_mod_cast hcheck_q
  have hcheck_r' :
      (1 + bklnwAlpha : ℝ) *
          ((bklnwSumExpDyadicCached b headLimit cfg).hi.toRat +
            (((limit - headLimit : Nat) : ℝ) * (expTermIntervalDyadic b (headLimit + 1) cfg).hi.toRat))
        ≤ target := by
    simpa using hcheck_r
  exact le_trans hscaled hcheck_r'

/-- Bridge theorem for symbolic head-tail lower bounds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean#L997).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32a93c4758653263ab33bb578af15e9a25a3426f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
