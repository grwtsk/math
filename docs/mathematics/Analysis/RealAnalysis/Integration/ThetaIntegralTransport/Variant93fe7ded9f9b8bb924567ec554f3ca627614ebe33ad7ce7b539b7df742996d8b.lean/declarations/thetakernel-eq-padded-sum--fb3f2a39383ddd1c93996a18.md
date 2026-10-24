# thetaKernel_eq_padded_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06347d93-af99-7d3e-77f7-9caa42ba03bb",
  "kind": "theorem",
  "lexical_name": "thetaKernel_eq_padded_sum",
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
  "slug": "thetakernel-eq-padded-sum--fb3f2a39383ddd1c93996a18",
  "source": {
    "blob": "7234b2fd921e44fd22137c8075fbb788e9d5ea8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaIntegralTransport/Variant93fe7ded9f9b8bb924567ec554f3ca627614ebe33ad7ce7b539b7df742996d8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb3f2a39383ddd1c93996a18a080b12f78f53a2dc92136eff57c04d98dc088ce",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaIntegralTransport/Variant93fe7ded9f9b8bb924567ec554f3ca627614ebe33ad7ce7b539b7df742996d8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06347d93-af99-7d3e-77f7-9caa42ba03bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaKernel_eq_padded_sum (A : ℝ) (q : ℕ) (hq : 1 ≤ q) :
    thetaKernel A q = ∑ k ∈ Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1),
      sourceSamplingKernel A ((q : ℝ) * (k : ℝ)) := by
  have hq0 : (0 : ℝ) < q := by exact_mod_cast (show 0 < q by omega)
  have hq1 : (1 : ℝ) ≤ q := by exact_mod_cast hq
  rw [thetaKernel_eq_sum_sourceSamplingKernel A q hq]
  simp only [Nat.cast_mul]
  apply sum_subset
  · intro k hk
    obtain ⟨hk1, hkB⟩ := mem_Icc.mp hk
    exact mem_Icc.mpr ⟨hk1, by omega⟩
  · intro k hk hout
    have hk' := mem_Icc.mp hk
    have hkN : k = ⌊Real.exp (2 * A)⌋₊ + 1 := by
      by_contra h
      exact hout (mem_Icc.mpr ⟨hk'.1, by omega⟩)
    have hk0 : (0 : ℝ) < k := by exact_mod_cast (show 0 < k by omega)
    apply MertensTransport.sourceSamplingKernel_zero_of_exp_le A _ (mul_pos hq0 hk0)
    have hf := Nat.lt_floor_add_one (Real.exp (2 * A))
    have hkX : Real.exp (2 * A) < (k : ℝ) := by
      simpa only [hkN, Nat.cast_add, Nat.cast_one] using hf
    nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaIntegralTransport/Variant93fe7ded9f9b8bb924567ec554f3ca627614ebe33ad7ce7b539b7df742996d8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaIntegralTransport/Variant93fe7ded9f9b8bb924567ec554f3ca627614ebe33ad7ce7b539b7df742996d8b.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7234b2fd921e44fd22137c8075fbb788e9d5ea8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
