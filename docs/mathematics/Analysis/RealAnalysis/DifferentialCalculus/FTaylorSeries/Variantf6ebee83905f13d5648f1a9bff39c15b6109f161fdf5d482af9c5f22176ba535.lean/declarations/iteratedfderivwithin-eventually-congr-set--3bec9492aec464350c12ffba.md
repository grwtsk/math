# iteratedFDerivWithin_eventually_congr_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad3dee4ba3e3f6a9fd4030b170538f3f7d6f7099",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 591,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6ebee83905f13d5648f1a9bff39c15b6109f161fdf5d482af9c5f22176ba535.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3443360-37f2-88d6-a6e1-592608c93f8f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d03f6974-3ac8-fd0c-1608-b31928f55380",
  "kind": "theorem",
  "lexical_name": "iteratedFDerivWithin_eventually_congr_set",
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
  "slug": "iteratedfderivwithin-eventually-congr-set--3bec9492aec464350c12ffba",
  "source": {
    "blob": "ad3dee4ba3e3f6a9fd4030b170538f3f7d6f7099",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 599,
    "line": 591,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantf6ebee83905f13d5648f1a9bff39c15b6109f161fdf5d482af9c5f22176ba535.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bec9492aec464350c12ffbaa3a7a001c2da18e976aa84997d3a856808aef31c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantf6ebee83905f13d5648f1a9bff39c15b6109f161fdf5d482af9c5f22176ba535.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d03f6974-3ac8-fd0c-1608-b31928f55380`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 591–599.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedFDerivWithin_eventually_congr_set (h : s =ᶠ[𝓝 x] t) (n : ℕ) :
    iteratedFDerivWithin 𝕜 n f s =ᶠ[𝓝 x] iteratedFDerivWithin 𝕜 n f t :=
  iteratedFDerivWithin_eventually_congr_set' x (h.filter_mono inf_le_left) n

/-- If two sets coincide in a punctured neighborhood of `x`,
then the corresponding iterated derivatives are equal.

Note that we also allow to puncture the neighborhood of `x` at `y`.
If `y ≠ x`, then this is a no-op. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantf6ebee83905f13d5648f1a9bff39c15b6109f161fdf5d482af9c5f22176ba535.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantf6ebee83905f13d5648f1a9bff39c15b6109f161fdf5d482af9c5f22176ba535.lean#L591).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad3dee4ba3e3f6a9fd4030b170538f3f7d6f7099` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
