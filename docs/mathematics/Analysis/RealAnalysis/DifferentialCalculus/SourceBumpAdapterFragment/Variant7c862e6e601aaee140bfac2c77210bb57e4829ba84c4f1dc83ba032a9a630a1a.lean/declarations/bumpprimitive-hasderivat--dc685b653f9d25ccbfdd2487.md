# bumpPrimitive_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:381492d8-0c7d-beea-7fa3-82cec3d619ba",
  "kind": "theorem",
  "lexical_name": "bumpPrimitive_hasDerivAt",
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
  "slug": "bumpprimitive-hasderivat--dc685b653f9d25ccbfdd2487",
  "source": {
    "blob": "a31da75dc33eef501011af1c85118f025916db25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 18,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpAdapterFragment/Variant7c862e6e601aaee140bfac2c77210bb57e4829ba84c4f1dc83ba032a9a630a1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc685b653f9d25ccbfdd2487ada367626c359286fa0f00cd0a65900e2d56edb4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpAdapterFragment/Variant7c862e6e601aaee140bfac2c77210bb57e4829ba84c4f1dc83ba032a9a630a1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:381492d8-0c7d-beea-7fa3-82cec3d619ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem bumpPrimitive_hasDerivAt (z : ℂ) (x : ℝ) :
    HasDerivAt (fun y : ℝ => Complex.exp (z * y) *
      (ZeroTransform.primitivePolynomial 1 z).eval (y : ℂ))
      (z ^ 9 * (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (z * x)) x := by
  have hx : HasDerivAt (fun y : ℝ => z * (y : ℂ)) z x := by
    simpa using (((hasDerivAt_id (x : ℂ)).const_mul z).comp_ofReal)
  have h := hx.cexp.mul
    (((ZeroTransform.primitivePolynomial 1 z).hasDerivAt (x : ℂ)).comp_ofReal)
  convert! h using 1
  have hp := congrArg (Polynomial.eval (x : ℂ)) (ZeroTransform.primitive_derivative 1 z)
  simp only [eval_add, eval_mul, eval_C, ZeroTransform.bumpPolynomial, eval_pow,
    eval_sub, eval_X, one_pow] at hp
  linear_combination (-(Complex.exp (z * x))) * hp

/-- The original bump moment has the source's exact two-endpoint closed formula. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpAdapterFragment/Variant7c862e6e601aaee140bfac2c77210bb57e4829ba84c4f1dc83ba032a9a630a1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpAdapterFragment/Variant7c862e6e601aaee140bfac2c77210bb57e4829ba84c4f1dc83ba032a9a630a1a.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a31da75dc33eef501011af1c85118f025916db25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
