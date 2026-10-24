# posPart_memLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41277d05-04ec-198e-26bd-e23e4231f2b8",
  "kind": "theorem",
  "lexical_name": "posPart_memLp",
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
  "slug": "pospart-memlp--33d9ee7fbdc84d2e8598cfbf",
  "source": {
    "blob": "74d7bf292d711254a5c8355d6ebed0d742d94693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 39,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variant2396397688f340a835b3750dc8cbb6106cf8d2c786c682ddc141a4299b235480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33d9ee7fbdc84d2e8598cfbf99f2cc3734d95be0a5fd3272ff175bb12f3a2a0d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variant2396397688f340a835b3750dc8cbb6106cf8d2c786c682ddc141a4299b235480.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41277d05-04ec-198e-26bd-e23e4231f2b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem posPart_memLp {σ : Measure ℝ} {f : ℝ → ℝ}
    (hf : Measurable f) (hf2 : MemLp f 2 σ) : MemLp (fun x => max (f x) 0) 2 σ := by
  apply hf2.of_le_mul (c := 1) (hf.max measurable_const).aestronglyMeasurable
  filter_upwards [] with x
  rw [one_mul, Real.norm_eq_abs, abs_of_nonneg (le_max_right _ _), Real.norm_eq_abs]
  exact max_le (le_abs_self _) (abs_nonneg _)

/-- An L² real annihilator of all power moments vanishes. The finite positive
and negative density measures acquire their transform domain by Hölder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variant2396397688f340a835b3750dc8cbb6106cf8d2c786c682ddc141a4299b235480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variant2396397688f340a835b3750dc8cbb6106cf8d2c786c682ddc141a4299b235480.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74d7bf292d711254a5c8355d6ebed0d742d94693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
