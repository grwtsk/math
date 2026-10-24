# BoundedLatticeHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fba5f8b264e6e8a114511cf93f3a1c146a3cbe6f054e58ef88b8832f338e0ec5",
  "kind": "structure",
  "lexical_name": "BoundedLatticeHom",
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
  "slug": "boundedlatticehom--f5dcca7575f32550e1220112",
  "source": {
    "blob": "e663732895f971d05403d0edf6ffdbce32644704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 63,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoundedLattice/Variant93799baabc48fc7adcef51aaa71cc62a82882dda252a484117647a6db960c533.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5dcca7575f32550e12201121e9b31a3d597f00bef7960f5611335ac71a9cea3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoundedLattice/Variant93799baabc48fc7adcef51aaa71cc62a82882dda252a484117647a6db960c533.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fba5f8b264e6e8a114511cf93f3a1c146a3cbe6f054e58ef88b8832f338e0ec5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BoundedLatticeHom (α β : Type*) [Lattice α] [Lattice β] [BoundedOrder α]
  [BoundedOrder β] extends LatticeHom α β where
  /-- A `BoundedLatticeHom` preserves the top element.

  Do not use this directly. Use `map_top` instead. -/
  map_top' : toFun ⊤ = ⊤
  /-- A `BoundedLatticeHom` preserves the bottom element.

  Do not use this directly. Use `map_bot` instead. -/
  map_bot' : toFun ⊥ = ⊥

-- TODO: remove this configuration and use the default configuration.
initialize_simps_projections SupBotHom (+toSupHom, -toFun)
initialize_simps_projections InfTopHom (+toInfHom, -toFun)
initialize_simps_projections BoundedLatticeHom (+toLatticeHom, -toFun)

section

/-- `SupBotHomClass F α β` states that `F` is a type of finitary supremum-preserving morphisms.

You should extend this class when you extend `SupBotHom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoundedLattice/Variant93799baabc48fc7adcef51aaa71cc62a82882dda252a484117647a6db960c533.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoundedLattice/Variant93799baabc48fc7adcef51aaa71cc62a82882dda252a484117647a6db960c533.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e663732895f971d05403d0edf6ffdbce32644704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
