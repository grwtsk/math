# positiveMass_ge_taylor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05c27119-0563-01e7-2163-9fe393cad6c9",
  "kind": "theorem",
  "lexical_name": "positiveMass_ge_taylor",
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
  "slug": "positivemass-ge-taylor--72886ff0ec0ca4081685f980",
  "source": {
    "blob": "ca18dff60385b06c24ddf50547ba4228350bc7a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 37,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variantdd453deecdc3d49c679eff2a9b647297ec1e29b4c539fda0050256ec7050b55a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72886ff0ec0ca4081685f9804aea3631cb834b3da73696379c968226f44eadbb",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variantdd453deecdc3d49c679eff2a9b647297ec1e29b4c539fda0050256ec7050b55a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05c27119-0563-01e7-2163-9fe393cad6c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveMass_ge_taylor {A : ℝ} (hA : 1 ≤ A) (d : ℕ) :
    phasePolynomialCoefficient d * A ^ (d + 1) - 1 ≤ positiveMass A := by
  have he := Real.pow_div_factorial_le_exp (A / 80)
    (show 0 ≤ A / 80 by linarith) (d + 1)
  have hm := mul_le_mul_of_nonneg_left he (show (0 : ℝ) ≤ 7 / 8 by norm_num)
  have hp := positiveMass_ge_early_exponential hA
  have heq : phasePolynomialCoefficient d * A ^ (d + 1) =
      (7 / 8 : ℝ) * ((A / 80) ^ (d + 1) / ((d + 1).factorial : ℝ)) := by
    unfold phasePolynomialCoefficient
    rw [div_pow]
    ring
  rw [← heq] at hm
  linarith

/-- The explicit threshold handles arbitrary real budget coefficients and the endpoint minus one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variantdd453deecdc3d49c679eff2a9b647297ec1e29b4c539fda0050256ec7050b55a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variantdd453deecdc3d49c679eff2a9b647297ec1e29b4c539fda0050256ec7050b55a.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca18dff60385b06c24ddf50547ba4228350bc7a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
