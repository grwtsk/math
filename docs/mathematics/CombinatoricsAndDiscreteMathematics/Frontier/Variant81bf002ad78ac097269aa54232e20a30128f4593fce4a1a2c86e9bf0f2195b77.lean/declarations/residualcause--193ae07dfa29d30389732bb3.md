# ResidualCause

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dfc0b61287ab5df3b73e6696b583a4e460e13db594d86d84300bfdd55d2d0668",
  "kind": "inductive",
  "lexical_name": "ResidualCause",
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
  "slug": "residualcause--193ae07dfa29d30389732bb3",
  "source": {
    "blob": "b6cda084f3130a2b7f745b1d9fd21eff738ae87f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 12,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Frontier/Variant81bf002ad78ac097269aa54232e20a30128f4593fce4a1a2c86e9bf0f2195b77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:193ae07dfa29d30389732bb3d5979fbc82683b06e63db6acfeb4055c5a795514",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Frontier/Variant81bf002ad78ac097269aa54232e20a30128f4593fce4a1a2c86e9bf0f2195b77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dfc0b61287ab5df3b73e6696b583a4e460e13db594d86d84300bfdd55d2d0668`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ResidualCause
  | fuelExhausted
  | budgetExhausted
      (dimensions : Finset BudgetDimension)
  | blockedByUnknowns
  | modeStopped
  | compatibilityBudgetExhausted
deriving DecidableEq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Frontier/Variant81bf002ad78ac097269aa54232e20a30128f4593fce4a1a2c86e9bf0f2195b77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Frontier/Variant81bf002ad78ac097269aa54232e20a30128f4593fce4a1a2c86e9bf0f2195b77.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6cda084f3130a2b7f745b1d9fd21eff738ae87f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
