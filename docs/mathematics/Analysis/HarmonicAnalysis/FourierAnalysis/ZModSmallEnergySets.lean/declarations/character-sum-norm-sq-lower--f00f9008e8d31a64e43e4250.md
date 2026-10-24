# character_sum_norm_sq_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc216943-3c77-b435-3494-664ed7e8c6c2",
  "kind": "theorem",
  "lexical_name": "character_sum_norm_sq_lower",
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
  "slug": "character-sum-norm-sq-lower--f00f9008e8d31a64e43e4250",
  "source": {
    "blob": "991e5cd3b742f2c3f3235e1d34715f5f8db95e20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 116,
    "path": "GRWTSK/Analysis/Fourier/ZModSmallEnergySets.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f00f9008e8d31a64e43e4250addc83566c6ad9220164a4f274d638f429a382a2",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc216943-3c77-b435-3494-664ed7e8c6c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem character_sum_norm_sq_lower (B : Finset (ZMod p)) (x : ZMod p)
    (hx : x ∈ smallEnergyPoints B (1 / 200)) :
    (4 / 5 : ℝ) * (B.card : ℝ) ^ 2 ≤
      ‖∑ χ ∈ B, ZMod.stdAddChar (χ * x)‖ ^ 2 := by
  have htrig := Finset.sum_le_sum (s := B) (fun χ _ =>
    one_sub_modularDistance_sq_le_stdAddChar_re (χ * x))
  have hre : (B.card : ℝ) - 20 * ∑ χ ∈ B, modularDistance (χ * x) ^ 2 ≤
      (∑ χ ∈ B, ZMod.stdAddChar (χ * x)).re := by
    simpa only [Complex.re_sum, Finset.sum_sub_distrib, Finset.sum_const,
      nsmul_eq_mul, mul_one, ← Finset.mul_sum] using htrig
  rw [mem_smallEnergyPoints] at hx
  have hnorm := Complex.re_le_norm (∑ χ ∈ B, ZMod.stdAddChar (χ * x))
  have hc : (0 : ℝ) ≤ B.card := by positivity
  nlinarith [norm_nonneg (∑ χ ∈ B, ZMod.stdAddChar (χ * x))]

/-- Source Lemma 3.6, valid for every nonempty frequency set, without symmetry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModSmallEnergySets.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `991e5cd3b742f2c3f3235e1d34715f5f8db95e20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
