# evenBasis_two_det_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d924e8ff-d183-aeac-f26e-2653956322e1",
  "kind": "theorem",
  "lexical_name": "evenBasis_two_det_nonnegative",
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
  "slug": "evenbasis-two-det-nonnegative--19ee24453bbf4e284d51e442",
  "source": {
    "blob": "7acb19a2c79c05fc693d63775e83e1ed1cdea5a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 183,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta22f93c24338e3ba2e64c1dfffdf67f8b8962dea79336a9bd660788dd0d25cb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19ee24453bbf4e284d51e442c8f301cd24fd71ef707cac074aee656bbe463fc6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta22f93c24338e3ba2e64c1dfffdf67f8b8962dea79336a9bd660788dd0d25cb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d924e8ff-d183-aeac-f26e-2653956322e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evenBasis_two_det_nonnegative (m : Fin 2 ↪o ℕ) (nodes : Fin 2 ↪o ℝ)
    (hnodes : ∀ i, 0 ≤ nodes i) :
    0 ≤ Matrix.det (fun i j : Fin 2 => evenBasis (m j) (nodes i)) := by
  change 0 ≤ Matrix.det (Matrix.of fun i j : Fin 2 => evenBasis (m j) (nodes i))
  rw [Matrix.det_fin_two]
  simp only [Matrix.of_apply]
  simp only [evenBasis]
  rw [div_mul_div_comm, div_mul_div_comm,
    mul_comm (((2 * m 1).factorial : ℝ)) (((2 * m 0).factorial : ℝ)), ← sub_div]
  apply div_nonneg
  · apply monomial_cross_nonnegative
    · exact mul_nonneg (by norm_num) (hnodes 0)
    · exact mul_le_mul_of_nonneg_left (nodes.monotone (by decide)) (by norm_num)
    · exact Nat.mul_le_mul_left 2 (m.monotone (by decide))
  · positivity

/-- Source sign regularity supplies the ordered minors of the original row-debt
factor, including its exact reversal orientation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta22f93c24338e3ba2e64c1dfffdf67f8b8962dea79336a9bd660788dd0d25cb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta22f93c24338e3ba2e64c1dfffdf67f8b8962dea79336a9bd660788dd0d25cb4.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7acb19a2c79c05fc693d63775e83e1ed1cdea5a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
