# IntervalDyadic.ofIntervalRat_lo_pos

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
      "line": 537,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:abc566f6-52ff-f0a0-66d6-538cfed68235",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ced84731-fdab-9a58-3627-54b25e140102",
  "kind": "theorem",
  "lexical_name": "IntervalDyadic.ofIntervalRat_lo_pos",
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
  "slug": "intervaldyadic-ofintervalrat-lo-pos--556713185c6b0aceccf0592a",
  "source": {
    "blob": "32a93c4758653263ab33bb578af15e9a25a3426f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 537,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:556713185c6b0aceccf0592a6273122ea32b0f1aa3152b4f3c7fecf1563a23c2",
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

Occurrence: `result:ced84731-fdab-9a58-3627-54b25e140102`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 537–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IntervalDyadic.ofIntervalRat_lo_pos {lo hi : ℚ} (hle : lo ≤ hi)
    (hpos : lo ≥ 1) (prec : Int) (hprec : prec ≤ 0) :
    (IntervalDyadic.ofIntervalRat ⟨lo, hi, hle⟩ prec).toIntervalRat.lo > 0 := by
  simp only [IntervalDyadic.toIntervalRat, IntervalDyadic.ofIntervalRat]
  -- Need to show: (Dyadic.ofInt ⌊lo * 2^n⌋).scale2(prec).toRat > 0
  -- where n = (-prec).toNat
  rw [Core.Dyadic.toRat_scale2, Core.Dyadic.toRat_ofInt]
  -- Goal: ⌊lo * 2^n⌋ * 2^prec > 0
  -- Since prec ≤ 0, 2^prec > 0
  have h2prec_pos : (0 : ℚ) < (2 : ℚ) ^ prec := zpow_pos (by norm_num : (0 : ℚ) < 2) prec
  -- Since lo ≥ 1 and 2^n ≥ 1 (for n ≥ 0), lo * 2^n ≥ 1
  have hn_def : (-prec).toNat = (-prec : ℤ).toNat := rfl
  have hn_eq : ((-prec : ℤ).toNat : ℤ) = -prec := by omega
  have h2n_pos : (0 : ℚ) < (2 : ℚ) ^ (-prec).toNat := pow_pos (by norm_num : (0 : ℚ) < 2) _
  have h2n_ge1 : (1 : ℚ) ≤ (2 : ℚ) ^ (-prec).toNat := by
    have h2ge1 : (1 : ℚ) ≤ 2 := by norm_num
    calc (1 : ℚ) = 2 ^ 0 := by simp
      _ ≤ 2 ^ (-prec).toNat := pow_le_pow_right₀ h2ge1 (by omega : 0 ≤ (-prec).toNat)
  have hprod_ge1 : lo * (2 : ℚ) ^ (-prec).toNat ≥ 1 := by
    calc lo * (2 : ℚ) ^ (-prec).toNat ≥ 1 * 1 := mul_le_mul hpos h2n_ge1 (by norm_num) (by linarith)
      _ = 1 := by ring
  have hfloor_pos : 0 < ⌊lo * (2 : ℚ) ^ (-prec).toNat⌋ := by
    rw [Int.floor_pos]
    exact hprod_ge1
  calc (⌊lo * (2 : ℚ) ^ (-prec).toNat⌋ : ℚ) * (2 : ℚ) ^ prec
      > 0 * (2 : ℚ) ^ prec := by
        apply mul_lt_mul_of_pos_right _ h2prec_pos
        exact_mod_cast hfloor_pos
    _ = 0 := by ring

/-- Certificate correctness: if checkBKLNWSumUpperBound returns true,
    then the actual sum is bounded.

    This theorem connects native_decide verification to mathematical truth.
    Requires x_lo ≥ 1 for positivity of the dyadic interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean#L537).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32a93c4758653263ab33bb578af15e9a25a3426f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
