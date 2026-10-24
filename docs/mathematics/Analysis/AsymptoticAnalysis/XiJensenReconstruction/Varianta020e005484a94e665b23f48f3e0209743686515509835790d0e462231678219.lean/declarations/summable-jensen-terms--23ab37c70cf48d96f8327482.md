# summable_jensen_terms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86ac1a35-139a-2cc8-c25d-238be34083f5",
  "kind": "lemma",
  "lexical_name": "summable_jensen_terms",
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
  "slug": "summable-jensen-terms--23ab37c70cf48d96f8327482",
  "source": {
    "blob": "74887238ae4b4f342c7c8994aaccea6667f19843",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 106,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23ab37c70cf48d96f832748254ccffc048ffcdf1f5998373fe70699e1b92fc88",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86ac1a35-139a-2cc8-c25d-238be34083f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma summable_jensen_terms (n : ℕ) (z : ℂ) :
    Summable (fun k => ((weight n k * coefficient k : ℝ) : ℂ) * (-z ^ 2) ^ k) := by
  apply (summable_coefficient_radius ‖z‖ (norm_nonneg z)).of_norm_bounded
  intro k
  simp only [norm_mul, norm_pow, norm_neg, Complex.norm_real,
    Real.norm_of_nonneg (mul_nonneg (weight_nonneg n k)
      (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula k).le),
    ← pow_mul]
  have h := mul_le_mul_of_nonneg_right (weight_le_one n k)
    (mul_nonneg (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula k).le
      (pow_nonneg (norm_nonneg z) (2 * k)))
  simpa only [one_mul, mul_assoc] using h

/-- Quantitative reconstruction on every fixed disk, including the omitted coefficient tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74887238ae4b4f342c7c8994aaccea6667f19843` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
