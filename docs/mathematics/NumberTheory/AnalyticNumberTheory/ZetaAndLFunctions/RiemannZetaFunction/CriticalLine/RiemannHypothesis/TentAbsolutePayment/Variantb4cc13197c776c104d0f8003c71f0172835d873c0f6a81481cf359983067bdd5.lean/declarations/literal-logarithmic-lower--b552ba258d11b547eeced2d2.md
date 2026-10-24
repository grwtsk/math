# literal_logarithmic_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ef7a145-50d9-0cc7-3fa5-e9c28ec95e74",
  "kind": "theorem",
  "lexical_name": "literal_logarithmic_lower",
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
  "slug": "literal-logarithmic-lower--b552ba258d11b547eeced2d2",
  "source": {
    "blob": "1fcce839472f1060b7d7680b2353c36f4df2a312",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TentAbsolutePayment/Variantb4cc13197c776c104d0f8003c71f0172835d873c0f6a81481cf359983067bdd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b552ba258d11b547eeced2d2a5ce3e28d7a825e41624fe17c2b6fd6936da71ca",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TentAbsolutePayment/Variantb4cc13197c776c104d0f8003c71f0172835d873c0f6a81481cf359983067bdd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ef7a145-50d9-0cc7-3fa5-e9c28ec95e74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_logarithmic_lower {t : ℝ} (ht : Real.log 6 ≤ t) :
    Real.exp (t / 2) / 24 ≤ logarithmicAbsoluteMass t := by
  have h6 : (6 : ℝ) ≤ Real.exp t := by
    calc
      6 = Real.exp (Real.log 6) := (Real.exp_log (by norm_num)).symm
      _ ≤ _ := Real.exp_le_exp.mpr ht
  have hs := Real.sq_sqrt (Real.exp_pos t).le
  have he : Real.exp (t / 2) ^ 2 = Real.exp t := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have hroot : Real.sqrt (Real.exp t) = Real.exp (t / 2) := by
    nlinarith [Real.sqrt_nonneg (Real.exp t), Real.exp_pos (t / 2)]
  have h := actual_absolute_tent_mass_lower h6
  rw [hroot] at h
  exact h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TentAbsolutePayment/Variantb4cc13197c776c104d0f8003c71f0172835d873c0f6a81481cf359983067bdd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TentAbsolutePayment/Variantb4cc13197c776c104d0f8003c71f0172835d873c0f6a81481cf359983067bdd5.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fcce839472f1060b7d7680b2353c36f4df2a312` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
