# MultilinearMap.uncurry_curryLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba4e9163-cbf5-ebc1-d352-c78b6df211f7",
  "kind": "theorem",
  "lexical_name": "MultilinearMap.uncurry_curryLeft",
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
  "slug": "multilinearmap-uncurry-curryleft--47a591ddbd525264c92eec59",
  "source": {
    "blob": "e71025235973c20399e21b8685010bbbf7b27c16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 100,
    "path": "GRWTSK/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47a591ddbd525264c92eec59665eccc35c53ea61461ec8797ef8b8e0d302d079",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba4e9163-cbf5-ebc1-d352-c78b6df211f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MultilinearMap.uncurry_curryLeft (f : MultilinearMap R M M₂) :
    f.curryLeft.uncurryLeft = f := by
  ext m
  simp

variable (R M M₂)

/-- The space of multilinear maps on `Π (i : Fin (n+1)), M i` is canonically isomorphic to
the space of linear maps from `M 0` to the space of multilinear maps on
`Π (i : Fin n), M i.succ`, by separating the first variable. We register this isomorphism as a
linear isomorphism in `multilinearCurryLeftEquiv R M M₂`.

The direct and inverse maps are given by `f.curryLeft` and `f.uncurryLeft`. Use these
unless you need the full framework of linear equivs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e71025235973c20399e21b8685010bbbf7b27c16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
