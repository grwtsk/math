# exponential_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d1fa1ea-516c-0c61-6db2-3db89a3432a8",
  "kind": "theorem",
  "lexical_name": "exponential_primitive",
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
  "slug": "exponential-primitive--47091387a9b51f8b1b32c7e3",
  "source": {
    "blob": "737d41f8e4ce6a9d8bf00177c63a30068979ef8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47091387a9b51f8b1b32c7e39111b93b24c246670a36ae4b2089d243db8788d2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d1fa1ea-516c-0c61-6db2-3db89a3432a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_primitive (A z : ℂ) (x : ℝ) :
    HasDerivAt (fun y : ℝ ↦ Complex.exp (z*y) * (fullPrimitive A z).eval (y:ℂ))
      (z^9 * ((bumpPolynomial A).derivative.derivative.eval (x:ℂ) -
         (bumpPolynomial A).eval (x:ℂ) / 4) * Complex.exp (z*x)) x := by
  have hx : HasDerivAt (fun y : ℝ ↦ z * (y:ℂ)) z x := by
    simpa using (((hasDerivAt_id (x:ℂ)).const_mul z).comp_ofReal)
  have h := hx.cexp.mul (((fullPrimitive A z).hasDerivAt (x:ℂ)).comp_ofReal)
  convert h using 1 <;> try rfl
  have hp := congrArg (Polynomial.eval (x:ℂ)) (fullPrimitive_derivative A z)
  simp only [eval_add, eval_mul, eval_C, eval_sub] at hp
  linear_combination (-(Complex.exp (z*x))) * hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `737d41f8e4ce6a9d8bf00177c63a30068979ef8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
