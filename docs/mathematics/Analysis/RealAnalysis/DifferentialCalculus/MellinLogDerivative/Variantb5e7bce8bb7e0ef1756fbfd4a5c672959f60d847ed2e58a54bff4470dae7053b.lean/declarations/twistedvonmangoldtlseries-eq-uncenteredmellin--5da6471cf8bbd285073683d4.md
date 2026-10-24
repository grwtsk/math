# twistedVonMangoldtLSeries_eq_uncenteredMellin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2388202-78ef-8a0a-5243-ae60dff1fa0b",
  "kind": "theorem",
  "lexical_name": "twistedVonMangoldtLSeries_eq_uncenteredMellin",
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
  "slug": "twistedvonmangoldtlseries-eq-uncenteredmellin--5da6471cf8bbd285073683d4",
  "source": {
    "blob": "b6000020806bd4e60fb81b36430dd648e001b3fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 334,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantb5e7bce8bb7e0ef1756fbfd4a5c672959f60d847ed2e58a54bff4470dae7053b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5da6471cf8bbd285073683d4f23acb7d432912ef678ba3f8b99f579ce8a68626",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantb5e7bce8bb7e0ef1756fbfd4a5c672959f60d847ed2e58a54bff4470dae7053b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2388202-78ef-8a0a-5243-ae60dff1fa0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem twistedVonMangoldtLSeries_eq_uncenteredMellin
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    {s : ℂ} (hs : 1 < s.re) :
    LSeries
        ((fun n : ℕ ↦ χ n) *
          (fun n : ℕ ↦ (ArithmeticFunction.vonMangoldt n : ℂ))) s =
      s * mellin (uncenteredTwistedPsiStep χ) (-s) := by
  have hIntegral := LSeries_eq_mul_integral'
    ((fun n : ℕ ↦ χ n) *
      (fun n : ℕ ↦ (ArithmeticFunction.vonMangoldt n : ℂ)))
    (show (0 : ℝ) ≤ 1 by norm_num) hs
    (twistedVonMangoldtNormPartialSums_isBigO χ)
  rw [hIntegral]
  unfold mellin uncenteredTwistedPsiStep
  congr 1
  rw [setIntegral_eq_of_subset_of_forall_sdiff_eq_zero measurableSet_Ioi
    (Ioi_subset_Ioi (show (0 : ℝ) ≤ 1 by norm_num))]
  · apply setIntegral_congr_fun measurableSet_Ioi
    intro t ht
    have ht1 : 1 ≤ t := le_of_lt ht
    simp only [smul_eq_mul, if_pos ht1, twistedPsi, Pi.mul_apply]
    rw [show -s - 1 = -(s + 1) by ring]
    ring
  · intro t ht
    have ht_le : t ≤ 1 := le_of_not_gt ht.2
    have hfloor : ⌊t⌋₊ ≤ 1 := Nat.floor_le_one_of_le_one ht_le
    interval_cases hft : ⌊t⌋₊ <;> simp [twistedPsi]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantb5e7bce8bb7e0ef1756fbfd4a5c672959f60d847ed2e58a54bff4470dae7053b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantb5e7bce8bb7e0ef1756fbfd4a5c672959f60d847ed2e58a54bff4470dae7053b.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6000020806bd4e60fb81b36430dd648e001b3fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
