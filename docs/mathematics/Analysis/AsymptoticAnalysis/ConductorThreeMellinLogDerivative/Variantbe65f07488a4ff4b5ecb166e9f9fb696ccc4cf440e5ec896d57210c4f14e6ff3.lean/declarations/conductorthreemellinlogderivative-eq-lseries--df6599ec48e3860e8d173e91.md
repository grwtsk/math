# conductorThreeMellinLogDerivative_eq_LSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "318e08dfc8b50fabc6eb0f843f58534e97cd8517",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be65f07488a4ff4b5ecb166e9f9fb696ccc4cf440e5ec896d57210c4f14e6ff3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14966acb-fd75-d6ba-81b5-d67b0a500843",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cbd160b9-dfa3-527b-061d-2f17da9e2911",
  "kind": "theorem",
  "lexical_name": "conductorThreeMellinLogDerivative_eq_LSeries",
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
  "slug": "conductorthreemellinlogderivative-eq-lseries--df6599ec48e3860e8d173e91",
  "source": {
    "blob": "318e08dfc8b50fabc6eb0f843f58534e97cd8517",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 151,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variantbe65f07488a4ff4b5ecb166e9f9fb696ccc4cf440e5ec896d57210c4f14e6ff3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df6599ec48e3860e8d173e91cc39d9dbe70e046403cf5a2cba035421b481b2ff",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variantbe65f07488a4ff4b5ecb166e9f9fb696ccc4cf440e5ec896d57210c4f14e6ff3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbd160b9-dfa3-527b-061d-2f17da9e2911`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreeMellinLogDerivative_eq_LSeries
    (hHalf : TwistedPsiHalfPlusEpsilon) {s : ℂ} (hs : 1 < s.re) :
    conductorThreeMellinLogDerivative s =
      LSeries conductorThreeComplexVonMangoldt s := by
  let r : ℝ := 3 / 4
  have hrhalf : (1 / 2 : ℝ) < r := by dsimp [r]; norm_num
  have hrs : r < s.re := by dsimp [r]; linarith
  have hO := coefficientPartialSums_isBigO_rpow hHalf hrhalf
  have hS : LSeriesSummable conductorThreeComplexVonMangoldt s := by
    change LSeriesSummable
      ((fun n : ℕ ↦ conductorThreeCharacter n) *
        (fun n : ℕ ↦ (ArithmeticFunction.vonMangoldt n : ℂ))) s
    exact DirichletCharacter.LSeriesSummable_twist_vonMangoldt
      conductorThreeCharacter hs
  have hIntegral := LSeries_eq_mul_integral
    conductorThreeComplexVonMangoldt (show 0 ≤ r by dsimp [r]; norm_num)
    hrs hS hO
  rw [hIntegral]
  unfold conductorThreeMellinLogDerivative mellin conductorThreePsiStep
  congr 1
  rw [setIntegral_eq_of_subset_of_forall_sdiff_eq_zero measurableSet_Ioi
    (Ioi_subset_Ioi (show (0 : ℝ) ≤ 1 by norm_num))]
  · apply setIntegral_congr_fun measurableSet_Ioi
    intro t ht
    simp only [smul_eq_mul]
    rw [show -s - 1 = -(s + 1) by ring]
    ring
  · intro t ht
    have ht_le : t ≤ 1 := le_of_not_gt ht.2
    have hfloor : ⌊t⌋₊ ≤ 1 := Nat.floor_le_one_of_le_one ht_le
    interval_cases hft : ⌊t⌋₊ <;>
      simp [conductorThreeComplexVonMangoldt]

/-- On `re s > 1`, the Mellin candidate agrees with the negative logarithmic
derivative of the analytically continued conductor-three `L`-function. -/
@[surface_adapter, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variantbe65f07488a4ff4b5ecb166e9f9fb696ccc4cf440e5ec896d57210c4f14e6ff3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variantbe65f07488a4ff4b5ecb166e9f9fb696ccc4cf440e5ec896d57210c4f14e6ff3.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `318e08dfc8b50fabc6eb0f843f58534e97cd8517` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
