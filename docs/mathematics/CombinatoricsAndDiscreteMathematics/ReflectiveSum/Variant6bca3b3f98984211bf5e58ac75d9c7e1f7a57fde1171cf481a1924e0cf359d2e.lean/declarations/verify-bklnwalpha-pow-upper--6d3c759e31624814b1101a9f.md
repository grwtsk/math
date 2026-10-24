# verify_bklnwAlpha_pow_upper

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
      "line": 1191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:804ddc54-8814-36a5-f590-743f9ccdf23f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35f51fbd-9d4a-ac9d-43c4-4607ceda281a",
  "kind": "theorem",
  "lexical_name": "verify_bklnwAlpha_pow_upper",
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
  "slug": "verify-bklnwalpha-pow-upper--6d3c759e31624814b1101a9f",
  "source": {
    "blob": "32a93c4758653263ab33bb578af15e9a25a3426f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1225,
    "line": 1191,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d3c759e31624814b1101a9f3f63fba688cfd38f17fee698a6aa8ad71e565b5c",
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

Occurrence: `result:35f51fbd-9d4a-ac9d-43c4-4607ceda281a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1191–1225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_bklnwAlpha_pow_upper (M : Nat) (target : ℚ)
    (cfg : BKLNWSumConfig := {})
    (hprec : cfg.precision ≤ 0 := by norm_num)
    (h_check : checkBKLNWAlphaPowUpperBound M target cfg = true) :
    (1 + bklnwAlpha : ℝ) * bklnwF ((2:ℝ)^M) M ≤ target := by
  -- 2^M is rational, construct its interval
  let pow2M := IntervalDyadic.ofIntervalRat (IntervalRat.singleton (2^M : ℚ)) cfg.precision
  -- Show (2:ℝ)^M ∈ pow2M
  have hpow_mem : (2:ℝ)^M ∈ pow2M := by
    show (2:ℝ)^M ∈ IntervalDyadic.ofIntervalRat (IntervalRat.singleton (2^M : ℚ)) cfg.precision
    have : ((2^M : ℚ) : ℝ) = (2:ℝ)^M := by push_cast; ring
    rw [← this]
    exact_mod_cast IntervalDyadic.mem_ofIntervalRat (IntervalRat.mem_singleton (2^M : ℚ)) cfg.precision hprec
  -- Positivity: 2^M ≥ 1
  have hpos : pow2M.toIntervalRat.lo > 0 := by
    have h1 : (1 : ℚ) ≤ 2^M := by
      have : (1 : ℚ) ≤ 2 := by norm_num
      exact one_le_pow₀ this
    exact IntervalDyadic.ofIntervalRat_lo_pos (le_refl _) h1 cfg.precision hprec
  -- bklnwF membership
  have hmem_bklnw := mem_bklnwSumDyadic hpow_mem hpos M cfg hprec
  -- (1+α) membership
  have hmem_alpha : (1 + bklnwAlpha : ℝ) ∈
      IntervalDyadic.ofIntervalRat (IntervalRat.singleton (1 + bklnwAlpha)) cfg.precision := by
    exact_mod_cast IntervalDyadic.mem_ofIntervalRat (IntervalRat.mem_singleton (1 + bklnwAlpha)) cfg.precision hprec
  -- Product and round
  have hmem_prod := IntervalDyadic.mem_mul hmem_alpha hmem_bklnw
  have hmem_round := IntervalDyadic.roundOut_contains hmem_prod cfg.precision
  -- Extract upper bound
  have hhi := IntervalDyadic.le_hi_of_mem hmem_round
  simp only [checkBKLNWAlphaPowUpperBound, bklnwAlphaSumPowDyadic, bklnwSumDyadic] at h_check
  have hbound := IntervalDyadic.upperBoundedBy_spec h_check
  exact le_trans hhi hbound

end LeanCert.Engine
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean#L1191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32a93c4758653263ab33bb578af15e9a25a3426f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
