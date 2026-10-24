# bernoulli_eval_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f099a489-94b1-9f3c-0142-1714b4a104f2",
  "kind": "theorem",
  "lexical_name": "bernoulli_eval_one_sub",
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
  "slug": "bernoulli-eval-one-sub--96212ea79e803fb0ff640c09",
  "source": {
    "blob": "eb2ba67c8994e3be558f0b3bf4dce8fafa0ec5dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 256,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantf1f5df1585a4d8be9f68701f364d13828f613e5ba4da1284e65a81f9cdd65719.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96212ea79e803fb0ff640c09db76e9f74cc8636c97313e931ce42a8e53d5ed2e",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantf1f5df1585a4d8be9f68701f364d13828f613e5ba4da1284e65a81f9cdd65719.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f099a489-94b1-9f3c-0142-1714b4a104f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bernoulli_eval_one_sub (n : ℕ) (x : ℚ) :
    (bernoulli n).eval (1 - x) = (-1) ^ n * (bernoulli n).eval x := by
  simpa using congr_arg (Polynomial.eval x) (bernoulli_comp_one_sub_X n)

open PowerSeries

variable {A : Type*} [CommRing A] [Algebra ℚ A]

-- TODO: define exponential generating functions, and use them here
-- This name should probably be updated afterwards
/-- The theorem that $(e^X - 1) * ∑ Bₙ(t)* X^n/n! = Xe^{tX}$ -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantf1f5df1585a4d8be9f68701f364d13828f613e5ba4da1284e65a81f9cdd65719.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BernoulliPolynomials/Variantf1f5df1585a4d8be9f68701f364d13828f613e5ba4da1284e65a81f9cdd65719.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb2ba67c8994e3be558f0b3bf4dce8fafa0ec5dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
