# normalized_integrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12c71ec6-fbc4-b5dd-e509-060d87156d8d",
  "kind": "theorem",
  "lexical_name": "normalized_integrand_integrable",
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
  "slug": "normalized-integrand-integrable--8d579e2137e51400615bc334",
  "source": {
    "blob": "087cfb63431c4ab8169415f624330d2424f0e800",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 51,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt05/Variantd768d2f79c07ec042b18f3dc38288983d4d4186a0671c61e2046cf38278a827a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d579e2137e51400615bc3348dce93ea63d971bba75ab0bd04f26d6b3fa96d69",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt05/Variantd768d2f79c07ec042b18f3dc38288983d4d4186a0671c61e2046cf38278a827a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12c71ec6-fbc4-b5dd-e509-060d87156d8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_integrand_integrable {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    Integrable (fun x : ℝ => (normalizedTest explicitSecondDerivative A x : ℂ)*
      Complex.exp (z*(x : ℂ))) := by
  have hq := (normalizedTest_contDiff A (show 0 < A by linarith)).continuous
  have hqs := normalizedTest_hasCompactSupport A (show 0 < A by linarith)
  have hc : Continuous (fun x : ℝ =>
      (normalizedTest explicitSecondDerivative A x : ℂ)*Complex.exp (z*(x : ℂ))) := by
    fun_prop
  exact hc.integrable_of_hasCompactSupport
    ((hqs.comp_left (show (Complex.ofReal (0 : ℝ)) = 0 by simp)).mul_right)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt05/Variantd768d2f79c07ec042b18f3dc38288983d4d4186a0671c61e2046cf38278a827a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt05/Variantd768d2f79c07ec042b18f3dc38288983d4d4186a0671c61e2046cf38278a827a.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `087cfb63431c4ab8169415f624330d2424f0e800` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
