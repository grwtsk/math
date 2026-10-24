# groupCohomologyπ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64ac2af28ec096abfb56f9bddc363a3be61fd74a70dfea0091b4c2e6d59afe09",
  "kind": "abbrev",
  "lexical_name": "groupCohomologyπ",
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
  "slug": "groupcohomology--547af3edb0506cdfb53b041a",
  "source": {
    "blob": "752787cd3e067cb7f17daf08ce13ffefa17733c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 254,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:547af3edb0506cdfb53b041aaed9af7128cb6fc83995eae5f87ddd032400e46e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64ac2af28ec096abfb56f9bddc363a3be61fd74a70dfea0091b4c2e6d59afe09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev groupCohomologyπ [Group G] (A : Rep k G) (n : ℕ) :
    groupCohomology.cocycles A n ⟶ groupCohomology A n :=
  (inhomogeneousCochains A).homologyπ n

/-- The `n`th group cohomology of a `k`-linear `G`-representation `A` is isomorphic to
`Extⁿ(k, A)` (taken in `Rep k G`), where `k` is a trivial `k`-linear `G`-representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `752787cd3e067cb7f17daf08ce13ffefa17733c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
