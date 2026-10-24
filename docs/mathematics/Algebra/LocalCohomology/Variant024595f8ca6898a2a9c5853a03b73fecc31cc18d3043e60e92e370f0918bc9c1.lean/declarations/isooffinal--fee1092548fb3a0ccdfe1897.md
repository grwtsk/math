# isoOfFinal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24dfb234ca4110b3f6b8e74dfe44c5b52a5583fd9ca6ad56b50d0aa91b794bc5",
  "kind": "abbrev",
  "lexical_name": "isoOfFinal",
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
  "slug": "isooffinal--fee1092548fb3a0ccdfe1897",
  "source": {
    "blob": "a0038fa3bb6b59bea8e289beef5a49c7c1fc87ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 128,
    "path": "GRWTSK/Algebra/LocalCohomology/Variant024595f8ca6898a2a9c5853a03b73fecc31cc18d3043e60e92e370f0918bc9c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fee1092548fb3a0ccdfe189769a2e7a1c356038b952be479da9735d6d24fd50c",
  "verification": {
    "reference": "docs/verification/Algebra/LocalCohomology/Variant024595f8ca6898a2a9c5853a03b73fecc31cc18d3043e60e92e370f0918bc9c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24dfb234ca4110b3f6b8e74dfe44c5b52a5583fd9ca6ad56b50d0aa91b794bc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev isoOfFinal [Functor.Initial I'] (i : ℕ)
    [HasColimit (diagram (I' ⋙ I) i)] [HasColimit (diagram I i)] :
    ofDiagram.{u} (I' ⋙ I) i ≅ ofDiagram I i :=
  HasColimit.isoOfNatIso (diagramComp.{u} I' I i) ≪≫ Functor.Final.colimitIso _ _

end

section Diagrams

variable {R : Type u} [CommRing R]

/-- The functor sending a natural number `i` to the `i`-th power of the ideal `J` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalCohomology/Variant024595f8ca6898a2a9c5853a03b73fecc31cc18d3043e60e92e370f0918bc9c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalCohomology/Variant024595f8ca6898a2a9c5853a03b73fecc31cc18d3043e60e92e370f0918bc9c1.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0038fa3bb6b59bea8e289beef5a49c7c1fc87ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
