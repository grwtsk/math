# polynomial_lt_exp_two_mul_div_four_of_ge_threshold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd09de9d-d80b-b727-d142-83a839104153",
  "kind": "theorem",
  "lexical_name": "polynomial_lt_exp_two_mul_div_four_of_ge_threshold",
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
  "slug": "polynomial-lt-exp-two-mul-div-four-of-ge-threshold--99d3debfda88e43fca30d8a1",
  "source": {
    "blob": "3566e10e2a75b8364c4577ebc8a7622b57f1aa2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 66,
    "path": "GRWTSK/Analysis/SpecialFunctions/ExponentialPolynomialDomination.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99d3debfda88e43fca30d8a1fc97eb92ef2f38b2e427655149af68b8ab5c0cd2",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/ExponentialPolynomialDomination.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd09de9d-d80b-b727-d142-83a839104153`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomial_lt_exp_two_mul_div_four_of_ge_threshold (C : ℝ) (d : ℕ) {T : ℝ}
    (hC : 0 ≤ C)
    (hT : max 1 (2 * C * ((d + 1).factorial : ℝ)) + 1 ≤ T) :
    C * (1 + T) ^ d < Real.exp (2 * T) / 4 := by
  have hleft : (1 : ℝ) ≤ max 1 (2 * C * ((d + 1).factorial : ℝ)) :=
    le_max_left _ _
  have hright : 2 * C * ((d + 1).factorial : ℝ) ≤
      max 1 (2 * C * ((d + 1).factorial : ℝ)) := le_max_right _ _
  have hone : 1 ≤ T := by linarith
  have hbeyond : 2 * C * ((d + 1).factorial : ℝ) < T := by linarith
  exact polynomial_lt_exp_two_mul_div_four C d hC hone hbeyond

end GRWTSK.Analysis.SpecialFunctions.ExponentialPolynomialDomination
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SpecialFunctions/ExponentialPolynomialDomination.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/ExponentialPolynomialDomination.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3566e10e2a75b8364c4577ebc8a7622b57f1aa2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
