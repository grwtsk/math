# profiniteSolidification

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39aa0a1d0b9c983e3a09899112ab317c84d0feb6c454a2e55aaf42c12dad25da",
  "kind": "def",
  "lexical_name": "profiniteSolidification",
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
  "slug": "profinitesolidification--b5a73e78ea0acfed5e195b94",
  "source": {
    "blob": "76f90dad730660afb17bf38f2ea5281988ed63af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 77,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant4b249b066fcaf7758ab1cde4bc2fe4ee0725f99edfbc349ffe975db11a3795c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5a73e78ea0acfed5e195b9434bf50c930730a5547706a38d78c9cf546d6aeac",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant4b249b066fcaf7758ab1cde4bc2fe4ee0725f99edfbc349ffe975db11a3795c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39aa0a1d0b9c983e3a09899112ab317c84d0feb6c454a2e55aaf42c12dad25da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def profiniteSolidification : profiniteFree R ⟶ profiniteSolid.{u} R :=
  (profiniteSolid R).liftOfIsRightKanExtension (profiniteSolidCounit R) _ (𝟙 _)

end Condensed

/--
The predicate on condensed `R`-modules describing the property of being solid.

TODO: This is not the correct definition of solid `R`-modules for a general `R`. The correct one is
as follows: Use this to define solid modules over a finite type `ℤ`-algebra `R`. In particular this
gives a definition of solid modules over `ℤ[X]` (polynomials in one variable). Then a solid
`R`-module over a general ring `R` is the condition that for every `r ∈ R` and every ring
homomorphism `ℤ[X] → R` such that `X` maps to `r`, the underlying `ℤ[X]`-module is solid.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant4b249b066fcaf7758ab1cde4bc2fe4ee0725f99edfbc349ffe975db11a3795c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant4b249b066fcaf7758ab1cde4bc2fe4ee0725f99edfbc349ffe975db11a3795c8.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76f90dad730660afb17bf38f2ea5281988ed63af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
