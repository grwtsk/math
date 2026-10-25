# mem_ofIntervalRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b77f3102dc0f912b0389995fefcaf7161365b344",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 595,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15ffbc18-c3e6-ea98-6e09-790a323bd55b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0c00933-2a00-7882-c98e-ea0d7788c115",
  "kind": "theorem",
  "lexical_name": "mem_ofIntervalRat",
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
  "slug": "mem-ofintervalrat--21d276f9cb3d52a2778063f6",
  "source": {
    "blob": "b77f3102dc0f912b0389995fefcaf7161365b344",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 635,
    "line": 595,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21d276f9cb3d52a2778063f6ca774a3f0f699ee57bf7427bcda4dff624cc7a65",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0c00933-2a00-7882-c98e-ea0d7788c115`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 595–635.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_ofIntervalRat {x : ℝ} {I : IntervalRat} (hx : x ∈ I) (prec : Int)
    (hprec : prec ≤ 0 := by norm_num) :
    x ∈ ofIntervalRat I prec := by
  -- The conversion uses floor/ceil which provides outward rounding:
  -- floor(lo * 2^n) * 2^(-n) ≤ lo ≤ x ≤ hi ≤ ceil(hi * 2^n) * 2^(-n)
  -- This follows from floor(a) ≤ a and a ≤ ceil(a), combined with
  -- the fact that multiplying by 2^(-n) when prec = -n cancels the 2^n factor.
  simp only [mem_def, ofIntervalRat, IntervalRat.mem_def] at *
  have h2n_pos : (0 : ℚ) < (2 : ℚ) ^ (-prec).toNat := pow_pos (by norm_num) _
  have hfloor : (⌊I.lo * (2 : ℚ) ^ (-prec).toNat⌋ : ℚ) ≤ I.lo * (2 : ℚ) ^ (-prec).toNat := Int.floor_le _
  have hceil : I.hi * (2 : ℚ) ^ (-prec).toNat ≤ (⌈I.hi * (2 : ℚ) ^ (-prec).toNat⌉ : ℚ) := Int.le_ceil _
  have hzpow_pos : (0 : ℚ) < (2 : ℚ) ^ prec := zpow_pos (by norm_num) _
  -- Key: 2^(-prec).toNat * 2^prec = 1 when prec ≤ 0 (so (-prec).toNat = -prec)
  have hcancel : (2 : ℚ) ^ (-prec).toNat * (2 : ℚ) ^ prec = 1 := by
    set n := (-prec).toNat with hn_def
    have hprec_eq : prec = -(n : ℤ) := by omega
    rw [hprec_eq, zpow_neg, zpow_natCast]
    exact mul_inv_cancel₀ (ne_of_gt h2n_pos)
  constructor
  · -- Lower bound
    rw [Dyadic.toRat_scale2, Dyadic.toRat_ofInt]
    have hle : (⌊I.lo * (2 : ℚ) ^ (-prec).toNat⌋ : ℚ) * (2 : ℚ) ^ prec ≤ I.lo := by
      calc (⌊I.lo * (2 : ℚ) ^ (-prec).toNat⌋ : ℚ) * (2 : ℚ) ^ prec
          ≤ (I.lo * (2 : ℚ) ^ (-prec).toNat) * (2 : ℚ) ^ prec := by
            apply mul_le_mul_of_nonneg_right hfloor (le_of_lt hzpow_pos)
        _ = I.lo * ((2 : ℚ) ^ (-prec).toNat * (2 : ℚ) ^ prec) := by ring
        _ = I.lo * 1 := by rw [hcancel]
        _ = I.lo := by ring
    exact le_trans (by exact_mod_cast hle) hx.1
  · -- Upper bound
    rw [Dyadic.toRat_scale2, Dyadic.toRat_ofInt]
    have hle : I.hi ≤ (⌈I.hi * (2 : ℚ) ^ (-prec).toNat⌉ : ℚ) * (2 : ℚ) ^ prec := by
      calc I.hi = I.hi * 1 := by ring
        _ = I.hi * ((2 : ℚ) ^ (-prec).toNat * (2 : ℚ) ^ prec) := by rw [hcancel]
        _ = (I.hi * (2 : ℚ) ^ (-prec).toNat) * (2 : ℚ) ^ prec := by ring
        _ ≤ (⌈I.hi * (2 : ℚ) ^ (-prec).toNat⌉ : ℚ) * (2 : ℚ) ^ prec := by
            apply mul_le_mul_of_nonneg_right hceil (le_of_lt hzpow_pos)
    exact le_trans hx.2 (by exact_mod_cast hle)

end IntervalDyadic
end LeanCert.Core
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean#L595).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b77f3102dc0f912b0389995fefcaf7161365b344` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
