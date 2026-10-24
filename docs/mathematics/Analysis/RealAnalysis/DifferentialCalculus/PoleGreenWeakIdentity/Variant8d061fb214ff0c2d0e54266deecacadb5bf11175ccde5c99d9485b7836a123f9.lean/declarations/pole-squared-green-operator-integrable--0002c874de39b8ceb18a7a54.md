# pole_squared_green_operator_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95eadd25-5eb6-1b4b-7ee1-eb65643fc3bf",
  "kind": "theorem",
  "lexical_name": "pole_squared_green_operator_integrable",
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
  "slug": "pole-squared-green-operator-integrable--0002c874de39b8ceb18a7a54",
  "source": {
    "blob": "8df11993623d61d84400371425eb4501fd8ee032",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 165,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0002c874de39b8ceb18a7a54b568c1ecf6bbd0592398a4ab729abe4ae31685fb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95eadd25-5eb6-1b4b-7ee1-eb65643fc3bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pole_squared_green_operator_integrable (f : ℝ → ℝ)
    (hf : ContDiff ℝ 4 f) (hcf : HasCompactSupport f) :
    Integrable (fun t ↦ poleSquaredGreenKernel t * poleSquaredDifferentialOperator f t) := by
  have hcomp : HasCompactSupport (fun t ↦ poleSquaredGreenKernel t *
      poleSquaredDifferentialOperator f t) := by
    apply hcf.mono'
    intro t ht
    by_contra h
    have hz (k : ℕ) := iterated_deriv_eq_zero_of_not_mem_tsupport f k t h
    have h0 : f t = 0 := by simpa using hz 0
    have hp : poleSquaredDifferentialOperator f t = 0 := by
      simp [poleSquaredDifferentialOperator, hz 4, hz 2, h0]
    simp [Function.mem_support, hp] at ht
  have hc : Continuous poleSquaredGreenKernel := by unfold poleSquaredGreenKernel; fun_prop
  exact (hc.mul (pole_squared_operator_continuous f hf)).integrable_of_hasCompactSupport hcomp

/-- Compact support converts the finite Green jump calculation into the exact full-line identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8df11993623d61d84400371425eb4501fd8ee032` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
