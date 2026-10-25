# DeflectionCocycle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36046467ec7d4bfa64ac7977b7c69724b23c1039d485c9ec4eaa02eb9bc34dd5",
  "kind": "structure",
  "lexical_name": "DeflectionCocycle",
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
  "slug": "deflectioncocycle--11928c306c43690366aeb33b",
  "source": {
    "blob": "94f6407ac944fe3d7e8e823a5c0f7827e8a299ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 11,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cocycle/Variantbe247e2cb812e778f1cd7687481830913e37780d03595717e08748e87e3cae7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11928c306c43690366aeb33be3b5ee1dd5156ce7b17bf27e913e601762776868",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cocycle/Variantbe247e2cb812e778f1cd7687481830913e37780d03595717e08748e87e3cae7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36046467ec7d4bfa64ac7977b7c69724b23c1039d485c9ec4eaa02eb9bc34dd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DeflectionCocycle
    (Chart : Type uChart)
    (Wall : Type uWall) where
  overlaps : Chart → Chart → Prop
  transition : Chart → Chart → Phase3
  identity :
    ∀ chart,
      transition chart chart = .identity
  inverse :
    ∀ left right,
      overlaps left right →
      transition right left =
        transition left right
  cocycle :
    ∀ first second third,
      overlaps first second →
      overlaps second third →
      overlaps first third →
      Phase3.mul
          (transition first second)
          (transition second third) =
        transition first third
  isModuloThreeWall : Wall → Prop
  leftChart : Wall → Chart
  rightChart : Wall → Chart
  defectTransition :
    ∀ wall,
      isModuloThreeWall wall →
      transition
          (leftChart wall)
          (rightChart wall) =
        .reflect

end Mathematics.SemiLocalDefect.ResidueDeflection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cocycle/Variantbe247e2cb812e778f1cd7687481830913e37780d03595717e08748e87e3cae7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cocycle/Variantbe247e2cb812e778f1cd7687481830913e37780d03595717e08748e87e3cae7f.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94f6407ac944fe3d7e8e823a5c0f7827e8a299ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
