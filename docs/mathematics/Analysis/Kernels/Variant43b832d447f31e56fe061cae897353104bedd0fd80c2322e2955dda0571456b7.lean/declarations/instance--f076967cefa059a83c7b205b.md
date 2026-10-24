# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:55e9af8cd20e3f191a406d893d70710977870313ea4c6a7aded1a6feca875bc2",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--f076967cefa059a83c7b205b",
  "source": {
    "blob": "152ba3a3d004a66207acb714fc84ca85797ea536",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 121,
    "path": "GRWTSK/Analysis/Kernels/Variant43b832d447f31e56fe061cae897353104bedd0fd80c2322e2955dda0571456b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f076967cefa059a83c7b205b47cef474d059eb32c55a6cc712e546c4f61740af",
  "verification": {
    "reference": "docs/verification/Analysis/Kernels/Variant43b832d447f31e56fe061cae897353104bedd0fd80c2322e2955dda0571456b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:55e9af8cd20e3f191a406d893d70710977870313ea4c6a7aded1a6feca875bc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Limits.HasEqualizers.{u, u + 1} SemiNormedGrp :=
  @hasEqualizers_of_hasLimit_parallelPair SemiNormedGrp _ fun {_ _ f g} =>
    SemiNormedGrp.hasLimit_parallelPair f g

end EqualizersAndKernels

section Cokernel

-- PROJECT: can we reuse the work to construct cokernels in `SemiNormedGrp₁` here?
-- I don't see a way to do this that is less work than just repeating the relevant parts.
/-- Auxiliary definition for `HasCokernels SemiNormedGrp`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Kernels/Variant43b832d447f31e56fe061cae897353104bedd0fd80c2322e2955dda0571456b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Kernels/Variant43b832d447f31e56fe061cae897353104bedd0fd80c2322e2955dda0571456b7.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `152ba3a3d004a66207acb714fc84ca85797ea536` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
