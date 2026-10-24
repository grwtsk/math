# HasStrictDerivAt.real_of_complex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36ab5525d676165c6bd9ca5ef59df9924159da14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eadbb5862732e6127ade72c6b720e5bca0d40a326c68add400ea7310517f8b05.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afca0e7b-392d-1cd6-3ff1-46a42de35973",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fd6ee8c-defa-322c-7beb-c5bdd439c211",
  "kind": "theorem",
  "lexical_name": "HasStrictDerivAt.real_of_complex",
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
  "slug": "hasstrictderivat-real-of-complex--fb08e7c2bb02f59f424dfb3b",
  "source": {
    "blob": "36ab5525d676165c6bd9ca5ef59df9924159da14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 29,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Varianteadbb5862732e6127ade72c6b720e5bca0d40a326c68add400ea7310517f8b05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb08e7c2bb02f59f424dfb3b4134129059a968e562902ee795476d189d25d694",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Varianteadbb5862732e6127ade72c6b720e5bca0d40a326c68add400ea7310517f8b05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fd6ee8c-defa-322c-7beb-c5bdd439c211`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasStrictDerivAt.real_of_complex (h : HasStrictDerivAt e e' z) :
    HasStrictDerivAt (fun x : ℝ => (e x).re) e'.re z := by
  have A : HasStrictFDerivAt ((↑) : ℝ → ℂ) ofRealCLM z := ofRealCLM.hasStrictFDerivAt
  have B :
    HasStrictFDerivAt e ((ContinuousLinearMap.smulRight 1 e' : ℂ →L[ℂ] ℂ).restrictScalars ℝ)
      (ofRealCLM z) :=
    h.hasStrictFDerivAt.restrictScalars ℝ
  have C : HasStrictFDerivAt re reCLM (e (ofRealCLM z)) := reCLM.hasStrictFDerivAt
  simpa using (C.comp z (B.comp z A)).hasStrictDerivAt

/-- If a complex function `e` is differentiable at a real point, then the function `ℝ → ℝ` given by
the real part of `e` is also differentiable at this point, with a derivative equal to the real part
of the complex derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Varianteadbb5862732e6127ade72c6b720e5bca0d40a326c68add400ea7310517f8b05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Varianteadbb5862732e6127ade72c6b720e5bca0d40a326c68add400ea7310517f8b05.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36ab5525d676165c6bd9ca5ef59df9924159da14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
