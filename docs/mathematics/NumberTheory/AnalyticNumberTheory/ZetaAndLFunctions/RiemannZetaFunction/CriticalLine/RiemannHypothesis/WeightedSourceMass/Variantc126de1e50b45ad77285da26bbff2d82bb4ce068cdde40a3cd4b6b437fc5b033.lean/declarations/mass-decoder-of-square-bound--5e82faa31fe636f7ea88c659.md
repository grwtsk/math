# mass_decoder_of_square_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd3f4ac9-c581-f112-c593-86995ca96577",
  "kind": "theorem",
  "lexical_name": "mass_decoder_of_square_bound",
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
  "slug": "mass-decoder-of-square-bound--5e82faa31fe636f7ea88c659",
  "source": {
    "blob": "f1564a0e82407607c0e56cd934c6be7796962f1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 81,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceMass/Variantc126de1e50b45ad77285da26bbff2d82bb4ce068cdde40a3cd4b6b437fc5b033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e82faa31fe636f7ea88c659b2e5616598a81e1f6e284126d978e1b774f236dc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceMass/Variantc126de1e50b45ad77285da26bbff2d82bb4ce068cdde40a3cd4b6b437fc5b033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd3f4ac9-c581-f112-c593-86995ca96577`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mass_decoder_of_square_bound {A y E : ℝ} (hA : 1 ≤ A)
    (he : 0 ≤ E) (hcs : |y| ^ 2 ≤ 4 * A * E) :
    |y / (∫ x : ℝ, prescribedSource A x)| ≤ massDecoder * Real.sqrt E := by
  have hp : 0 < A := by linarith
  have hrootE := Real.sq_sqrt he
  have hrootA := Real.sq_sqrt hp.le
  have hbound : |y| ≤ 2 * Real.sqrt A * Real.sqrt E := by
    have hright : 0 ≤ 2 * Real.sqrt A * Real.sqrt E := by positivity
    nlinarith only [hcs, hrootE, hrootA, hright, abs_nonneg y]
  have hmassabs : |∫ x : ℝ, prescribedSource A x| =
      Real.sqrt A * bumpMass / (4 * Real.sqrt (sourceZ A)) := by
    rw [prescribed_mass hA, abs_div, abs_neg, abs_of_nonneg (by unfold bumpMass; positivity),
      abs_of_nonneg (by positivity)]
  have hZ := normalization_uniform hA
  rw [← sourceZ_eq A hA] at hZ
  have hm : 0 < Real.sqrt A * bumpMass / (4 * Real.sqrt (sourceZ A)) := by
    exact div_pos (mul_pos (Real.sqrt_pos.mpr hp) (by norm_num [bumpMass]))
      (mul_pos (by norm_num) (Real.sqrt_pos.mpr (sourceZ_pos A hA)))
  rw [abs_div, hmassabs]
  apply (div_le_iff₀ hm).mpr
  have hzroot := Real.sqrt_le_sqrt hZ
  have hprice : 2 * Real.sqrt A * Real.sqrt E ≤
      massDecoder * Real.sqrt E *
        (Real.sqrt A * bumpMass / (4 * Real.sqrt (sourceZ A))) := by
    unfold massDecoder
    have hb : bumpMass ≠ 0 := by norm_num [bumpMass]
    have hz : Real.sqrt (sourceZ A) ≠ 0 := (Real.sqrt_pos.mpr (sourceZ_pos A hA)).ne'
    rw [show 8 * Real.sqrt unitNormalization / bumpMass *
      Real.sqrt E *
      (Real.sqrt A * bumpMass / (4 * Real.sqrt (sourceZ A))) =
      (8 * Real.sqrt unitNormalization * Real.sqrt E * Real.sqrt A) /
      (4 * Real.sqrt (sourceZ A)) by field_simp [hb]]
    apply (le_div_iff₀ (mul_pos (by norm_num : (0 : ℝ) < 4)
      (Real.sqrt_pos.mpr (sourceZ_pos A hA)))).mpr
    nlinarith only [mul_le_mul_of_nonneg_left hzroot
      (by positivity : 0 ≤ 8 * Real.sqrt A * Real.sqrt E)]
  exact hbound.trans hprice

/-- This decoder requires actual support in the finite source window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceMass/Variantc126de1e50b45ad77285da26bbff2d82bb4ce068cdde40a3cd4b6b437fc5b033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceMass/Variantc126de1e50b45ad77285da26bbff2d82bb4ce068cdde40a3cd4b6b437fc5b033.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1564a0e82407607c0e56cd934c6be7796962f1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
