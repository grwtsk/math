# bsupr_limsup_dimH

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6971da2c-f911-6ee4-fe74-cb4017e4a033",
  "kind": "theorem",
  "lexical_name": "bsupr_limsup_dimH",
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
  "slug": "bsupr-limsup-dimh--d0092236a1c92e0e3b74585a",
  "source": {
    "blob": "722a8626b2272a9b5221703899750e6333813295",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 260,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variantc5231d481ece8fd070baa03b2d30d3d16d976442f19ad59c83b2d3d84c4237e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0092236a1c92e0e3b74585a019019784bad412cc84380465b06336f43120feb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variantc5231d481ece8fd070baa03b2d30d3d16d976442f19ad59c83b2d3d84c4237e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6971da2c-f911-6ee4-fe74-cb4017e4a033`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bsupr_limsup_dimH (s : Set X) : ⨆ x ∈ s, limsup dimH (𝓝[s] x).smallSets = dimH s := by
  refine le_antisymm (iSup₂_le fun x _ => ?_) ?_
  · refine limsup_le_of_le isCobounded_le_of_bot ?_
    exact eventually_smallSets.2 ⟨s, self_mem_nhdsWithin, fun t => dimH_mono⟩
  · refine le_of_forall_lt_imp_le_of_dense fun r hr => ?_
    rcases exists_mem_nhdsWithin_lt_dimH_of_lt_dimH hr with ⟨x, hxs, hxr⟩
    refine le_iSup₂_of_le x hxs ?_; rw [limsup_eq]; refine le_sInf fun b hb => ?_
    rcases eventually_smallSets.1 hb with ⟨t, htx, ht⟩
    exact (hxr t htx).le.trans (ht t Subset.rfl)

/-- In an (extended) metric space with second countable topology, the Hausdorff dimension
of a set `s` is the supremum over all `x` of the limit superiors of `dimH t` along
`(𝓝[s] x).smallSets`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variantc5231d481ece8fd070baa03b2d30d3d16d976442f19ad59c83b2d3d84c4237e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variantc5231d481ece8fd070baa03b2d30d3d16d976442f19ad59c83b2d3d84c4237e7.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `722a8626b2272a9b5221703899750e6333813295` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
