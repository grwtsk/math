# isDominant_restrict_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ad7fff667d7fa3e24e987c9bfb46df7e3aadc4ae5239d6732de93593504a433",
  "kind": "instance",
  "lexical_name": "isDominant_restrict_hom",
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
  "slug": "isdominant-restrict-hom--95d1f176e767e9b872dd4975",
  "source": {
    "blob": "3fe6df1938136a164e754a143b94c2dd4136aa55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 47,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Dominant/Variant8dd49632a9e9fe4b3eef7f92d1ef276b8c8db852bf606bffd38fff8a24de01ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95d1f176e767e9b872dd49756ca0f57c51c580bfa7828fde5b0d37095b22a2fe",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Dominant/Variant8dd49632a9e9fe4b3eef7f92d1ef276b8c8db852bf606bffd38fff8a24de01ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ad7fff667d7fa3e24e987c9bfb46df7e3aadc4ae5239d6732de93593504a433`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isDominant_restrict_hom (f : X.PartialMap Y) [IsDominant f.hom] (U : X.Opens)
    (hU : Dense (U : Set X)) (hU' : U ≤ f.domain) : IsDominant (f.restrict U hU hU').hom := by
  dsimp only [restrict_domain, restrict_hom]
  have : IsDominant (X.homOfLE hU') := Opens.isDominant_homOfLE hU hU'
  rwa [IsDominant.comp_iff]

/-- If a restriction of `f` is dominant, then `f` is dominant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Dominant/Variant8dd49632a9e9fe4b3eef7f92d1ef276b8c8db852bf606bffd38fff8a24de01ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Dominant/Variant8dd49632a9e9fe4b3eef7f92d1ef276b8c8db852bf606bffd38fff8a24de01ea.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fe6df1938136a164e754a143b94c2dd4136aa55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
