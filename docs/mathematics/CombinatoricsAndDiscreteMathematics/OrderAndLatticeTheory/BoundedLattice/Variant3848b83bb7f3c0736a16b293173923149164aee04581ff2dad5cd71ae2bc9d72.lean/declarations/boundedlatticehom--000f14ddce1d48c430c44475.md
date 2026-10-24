# BoundedLatticeHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ba506045e9998ce6fd1852ac92452f9a56ff74d122fca8000295a75ec7e23e8",
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
  "slug": "boundedlatticehom--000f14ddce1d48c430c44475",
  "source": {
    "blob": "53e35c7d1c1693b9a8d51b21ae1f625feb3f2d11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoundedLattice/Variant3848b83bb7f3c0736a16b293173923149164aee04581ff2dad5cd71ae2bc9d72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:000f14ddce1d48c430c444753d3256524e14058324c71f8df6c92864a85231ff",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoundedLattice/Variant3848b83bb7f3c0736a16b293173923149164aee04581ff2dad5cd71ae2bc9d72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ba506045e9998ce6fd1852ac92452f9a56ff74d122fca8000295a75ec7e23e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–75.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoundedLattice/Variant3848b83bb7f3c0736a16b293173923149164aee04581ff2dad5cd71ae2bc9d72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoundedLattice/Variant3848b83bb7f3c0736a16b293173923149164aee04581ff2dad5cd71ae2bc9d72.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53e35c7d1c1693b9a8d51b21ae1f625feb3f2d11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
