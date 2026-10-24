# differentiableAt_completedLFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2eeac60c-5b36-2765-bd5b-9af3508d8659",
  "kind": "lemma",
  "lexical_name": "differentiableAt_completedLFunction",
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
  "slug": "differentiableat-completedlfunction--9bb54f004d570c948bbaee43",
  "source": {
    "blob": "fa988fadb21e31fc33d9b06a1f1d2711f31a4cda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 251,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bb54f004d570c948bbaee43600490ac906a47cc14139720acd92226d68ce43d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2eeac60c-5b36-2765-bd5b-9af3508d8659`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma differentiableAt_completedLFunction (χ : DirichletCharacter ℂ N) (s : ℂ)
    (hs₀ : s ≠ 0 ∨ N ≠ 1) (hs₁ : s ≠ 1 ∨ χ ≠ 1) :
    DifferentiableAt ℂ (completedLFunction χ) s :=
  ZMod.differentiableAt_completedLFunction _ _ (by have := χ.map_zero'; tauto)
    (by have := χ.sum_eq_zero_of_ne_one; tauto)

/-- The completed L-function of a non-trivial Dirichlet character is differentiable everywhere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa988fadb21e31fc33d9b06a1f1d2711f31a4cda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
