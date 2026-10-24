# correction_minimum_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42ac14d8-d5ed-106e-13d8-ba0d2b1fc5bd",
  "kind": "theorem",
  "lexical_name": "correction_minimum_unique",
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
  "slug": "correction-minimum-unique--befa3d7bae64de2cca1fdbfd",
  "source": {
    "blob": "b27b5f4d535686c261536dab344ce378307c1df6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 87,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionOptimization/Variant544a63c09b4b134afce557c5a3fd4842de3bf0c2f037bbe325593c6335d1cf92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:befa3d7bae64de2cca1fdbfd7db974a792c2da23aae9ed02e2368d68360ff817",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionOptimization/Variant544a63c09b4b134afce557c5a3fd4842de3bf0c2f037bbe325593c6335d1cf92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42ac14d8-d5ed-106e-13d8-ba0d2b1fc5bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correction_minimum_unique {ι : Type*} (s : Finset ι) (q d r : ι → ℝ)
    (hq : ∀ i ∈ s, 0 < q i) (hd : ∀ i ∈ s, d i ≠ 0)
    (hS : inverseWeightSum s q d ≠ 0) (m : ℝ)
    (hm : ∑ i ∈ s, r i / d i = m)
    (hcost : ∑ i ∈ s, q i * r i ^ 2 = m ^ 2 / inverseWeightSum s q d) :
    ∀ i ∈ s, r i = optimalCorrection s q d m i := by
  have heq := correction_cost_identity s q d r (fun i hi => (hq i hi).ne') hd hS m hm
  have hzero : (∑ i ∈ s, q i * (r i - optimalCorrection s q d m i) ^ 2) = 0 := by
    linarith
  intro i hi
  have hterm := Finset.single_le_sum
    (fun j hj => mul_nonneg (hq j hj).le (sq_nonneg (r j - optimalCorrection s q d m j))) hi
  rw [hzero] at hterm
  have he : q i * (r i - optimalCorrection s q d m i) ^ 2 = 0 :=
    le_antisymm hterm (mul_nonneg (hq i hi).le (sq_nonneg _))
  have hsquare : (r i - optimalCorrection s q d m i) ^ 2 = 0 :=
    (mul_eq_zero.mp he).resolve_left (hq i hi).ne'
  exact sub_eq_zero.mp (sq_eq_zero_iff.mp hsquare)

/-- A two-point correction realizes both moments with exact logarithmic normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionOptimization/Variant544a63c09b4b134afce557c5a3fd4842de3bf0c2f037bbe325593c6335d1cf92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionOptimization/Variant544a63c09b4b134afce557c5a3fd4842de3bf0c2f037bbe325593c6335d1cf92.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b27b5f4d535686c261536dab344ce378307c1df6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
