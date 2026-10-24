# log_derivative_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8eec924d-6625-931f-8124-2c5531568dca",
  "kind": "theorem",
  "lexical_name": "log_derivative_split",
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
  "slug": "log-derivative-split--8c3890a34141206dbc281cec",
  "source": {
    "blob": "f325456531fdcfd2a8619f8d8b8ef67d4bea91da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 91,
    "path": "GRWTSK/Analysis/Complex/IsolatedSimpleZeroContour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c3890a34141206dbc281cec59cab668a3de4f4a6d62be54663677b935eb1ec2",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IsolatedSimpleZeroContour.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8eec924d-6625-931f-8124-2c5531568dca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_derivative_split (f : ℂ → ℂ) (root z : ℂ)
    (rootZero : f root = 0) (factorAnalytic : AnalyticAt ℂ (dslope f root) z)
    (factorNonzero : dslope f root z ≠ 0) (distinct : z ≠ root) :
    deriv f z / f z = 1 / (z - root) + regularPart f root z := by
  have productDerivative : HasDerivAt (fun w : ℂ => (w - root) * dslope f root w)
      (dslope f root z + (z - root) * deriv (dslope f root) z) z := by
    simpa only [one_mul] using
      ((hasDerivAt_id z).sub_const root).mul factorAnalytic.differentiableAt.hasDerivAt
  have functionsEqual : (fun w : ℂ => (w - root) * dslope f root w) = f :=
    funext (fun w => factorization f root w rootZero)
  rw [functionsEqual] at productDerivative
  rw [productDerivative.deriv, ← factorization f root z rootZero]
  unfold regularPart
  field_simp [sub_ne_zero.mpr distinct, factorNonzero] <;> ring

/-- The analytic extension agrees with the original expression away from its pole. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/IsolatedSimpleZeroContour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/IsolatedSimpleZeroContour.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f325456531fdcfd2a8619f8d8b8ef67d4bea91da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
