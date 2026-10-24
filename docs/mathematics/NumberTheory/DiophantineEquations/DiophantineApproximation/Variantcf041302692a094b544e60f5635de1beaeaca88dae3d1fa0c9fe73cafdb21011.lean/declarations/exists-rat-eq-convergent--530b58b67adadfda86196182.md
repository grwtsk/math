# exists_rat_eq_convergent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f36b92d3-e5c5-03a8-1ea6-ce7957506ee9",
  "kind": "theorem",
  "lexical_name": "exists_rat_eq_convergent",
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
  "slug": "exists-rat-eq-convergent--530b58b67adadfda86196182",
  "source": {
    "blob": "1fefffd0d1f9f27fec2b4fbc7911a7592389611e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 611,
    "line": 594,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:530b58b67adadfda861961824d9d27b1d865b91003543ee159efb13560492944",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f36b92d3-e5c5-03a8-1ea6-ce7957506ee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 594–611.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_rat_eq_convergent {q : ℚ} (h : |ξ - q| < 1 / (2 * (q.den : ℝ) ^ 2)) :
    ∃ n, q = ξ.convergent n := by
  refine' q.num_div_den ▸ exists_rat_eq_convergent' ⟨_, fun hd => _, _⟩
  · exact coprime_iff_nat_coprime.mpr (natAbs_ofNat q.den ▸ q.reduced)
  · rw [← q.den_eq_one_iff.mp (Nat.cast_eq_one.mp hd)] at h
    simpa only [Rat.coe_int_den, Nat.cast_one, one_pow, mul_one] using (abs_lt.mp h).1
  · obtain ⟨hq₀, hq₁⟩ := aux₀ (Nat.cast_pos.mpr q.pos)
    replace hq₁ := mul_pos hq₀ hq₁
    have hq₂ : (0 : ℝ) < 2 * (q.den * q.den) := mul_pos zero_lt_two (mul_pos hq₀ hq₀)
    rw [cast_ofNat] at *
    rw [(by norm_cast : (q.num / q.den : ℝ) = (q.num / q.den : ℚ)), Rat.num_div_den]
    exact h.trans (by rw [← one_div, sq, one_div_lt_one_div hq₂ hq₁, ← sub_pos]; ring_nf; exact hq₀)
#align real.exists_rat_eq_convergent Real.exists_rat_eq_convergent

/-- The main result, *Legendre's Theorem* on rational approximation:
if `ξ` is a real number and `q` is a rational number such that `|ξ - q| < 1/(2*q.den^2)`,
then `q` is a convergent of the continued fraction expansion of `ξ`.
This is the version using `generalized_contined_fraction.convergents`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean#L594).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fefffd0d1f9f27fec2b4fbc7911a7592389611e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
