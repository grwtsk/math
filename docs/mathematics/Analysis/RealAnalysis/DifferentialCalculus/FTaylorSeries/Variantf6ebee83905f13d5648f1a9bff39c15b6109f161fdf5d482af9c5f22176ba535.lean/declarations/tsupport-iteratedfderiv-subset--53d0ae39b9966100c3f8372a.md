# tsupport_iteratedFDeriv_subset

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
      "line": 858,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6ebee83905f13d5648f1a9bff39c15b6109f161fdf5d482af9c5f22176ba535.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:685b6520-5c31-ba1d-dad6-b81e1c742f81",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b946d5ee-b8cb-3ed9-d7b3-589bdd8df31a",
  "kind": "theorem",
  "lexical_name": "tsupport_iteratedFDeriv_subset",
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
  "slug": "tsupport-iteratedfderiv-subset--53d0ae39b9966100c3f8372a",
  "source": {
    "blob": "ad3dee4ba3e3f6a9fd4030b170538f3f7d6f7099",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 868,
    "line": 858,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantf6ebee83905f13d5648f1a9bff39c15b6109f161fdf5d482af9c5f22176ba535.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53d0ae39b9966100c3f8372adfac3061e745912d9ac864df232a308d07ca4f68",
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

Occurrence: `result:b946d5ee-b8cb-3ed9-d7b3-589bdd8df31a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 858–868.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tsupport_iteratedFDeriv_subset (n : ℕ) : tsupport (iteratedFDeriv 𝕜 n f) ⊆ tsupport f := by
  induction n with
  | zero =>
    rw [iteratedFDeriv_zero_eq_comp]
    exact closure_minimal ((support_comp_subset (map_zero _) _).trans subset_closure)
      isClosed_closure
  | succ n IH =>
    rw [iteratedFDeriv_succ_eq_comp_left]
    exact closure_minimal ((support_comp_subset (map_zero _) _).trans
      ((support_fderiv_subset 𝕜).trans IH)) isClosed_closure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantf6ebee83905f13d5648f1a9bff39c15b6109f161fdf5d482af9c5f22176ba535.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantf6ebee83905f13d5648f1a9bff39c15b6109f161fdf5d482af9c5f22176ba535.lean#L858).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad3dee4ba3e3f6a9fd4030b170538f3f7d6f7099` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
