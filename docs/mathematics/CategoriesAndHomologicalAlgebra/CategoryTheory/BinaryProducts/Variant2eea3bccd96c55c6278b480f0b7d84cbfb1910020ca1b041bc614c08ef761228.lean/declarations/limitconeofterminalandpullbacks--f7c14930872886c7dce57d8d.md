# limitConeOfTerminalAndPullbacks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dbc36e1dbd2a4cc07eefe9d982ef1d3600bf1695344bca165168ec482ed7f83e",
  "kind": "def",
  "lexical_name": "limitConeOfTerminalAndPullbacks",
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
  "slug": "limitconeofterminalandpullbacks--f7c14930872886c7dce57d8d",
  "source": {
    "blob": "89d02148d7a274e23ed0a8ac50774abb76bab725",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 83,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant2eea3bccd96c55c6278b480f0b7d84cbfb1910020ca1b041bc614c08ef761228.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7c14930872886c7dce57d8d48ee8280e0a03257a04020f0cd6fee0abd55e8a8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant2eea3bccd96c55c6278b480f0b7d84cbfb1910020ca1b041bc614c08ef761228.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dbc36e1dbd2a4cc07eefe9d982ef1d3600bf1695344bca165168ec482ed7f83e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def limitConeOfTerminalAndPullbacks [HasTerminal C] [HasPullbacks C]
    (F : Discrete WalkingPair ⥤ C) : LimitCone F where
  cone :=
    { pt :=
        pullback (terminal.from (F.obj ⟨WalkingPair.left⟩))
          (terminal.from (F.obj ⟨WalkingPair.right⟩))
      π :=
        Discrete.natTrans fun x =>
          Discrete.casesOn x fun x => WalkingPair.casesOn x (pullback.fst _ _) (pullback.snd _ _) }
  isLimit :=
    isBinaryProductOfIsTerminalIsPullback F _ terminalIsTerminal _ _ (pullbackIsPullback _ _)

variable (C) in
-- This is not an instance, as it is not always how one wants to construct binary products!
/-- Any category with pullbacks and terminal object has binary products. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant2eea3bccd96c55c6278b480f0b7d84cbfb1910020ca1b041bc614c08ef761228.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant2eea3bccd96c55c6278b480f0b7d84cbfb1910020ca1b041bc614c08ef761228.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89d02148d7a274e23ed0a8ac50774abb76bab725` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
