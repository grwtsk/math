# dslope_eventuallyEq_slope_nhdsNE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:520e7a8b-c0db-50aa-e87c-fcd343962b8e",
  "kind": "theorem",
  "lexical_name": "dslope_eventuallyEq_slope_nhdsNE",
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
  "slug": "dslope-eventuallyeq-slope-nhdsne--fbd0e11c3df8e5870c9ea2e1",
  "source": {
    "blob": "fd3b5a36fa421ca352f45c6c6ff26a5906bdcc57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 67,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbd0e11c3df8e5870c9ea2e104b30a28b804aa4cb0cd8342b39b6b835ba93961",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:520e7a8b-c0db-50aa-e87c-fcd343962b8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dslope_eventuallyEq_slope_nhdsNE (f : 𝕜 → E) : dslope f a =ᶠ[𝓝[≠] a] slope f a :=
  (eqOn_dslope_slope f a).eventuallyEq_of_mem self_mem_nhdsWithin

@[deprecated (since := "2025-03-02")]
alias dslope_eventuallyEq_slope_punctured_nhds := dslope_eventuallyEq_slope_nhdsNE

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Variantb114713c14e7d20a58e83e743aebf0f384bb3207c036481d793424eb2254f757.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd3b5a36fa421ca352f45c6c6ff26a5906bdcc57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
