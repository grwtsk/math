# CountableCylinderTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c706f19de0b2879e45b41fe71d3ac087cf15125e72ce8542adda01b0bafaa51e",
  "kind": "structure",
  "lexical_name": "CountableCylinderTower",
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
  "slug": "countablecylindertower--7b3802d828c3fc28db55c7a9",
  "source": {
    "blob": "e0952ee8af4bf238ea6062f4ffeb83de4e5af77d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 174,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/CountableBooleanCylinder/Variant1c823852b9ccb8e3b3fa59cd0e892646322613c619b711ca2a728b7cd69f1e6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b3802d828c3fc28db55c7a96c089186f1062e72604ce93c4b1fc615f6f15bd4",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/CountableBooleanCylinder/Variant1c823852b9ccb8e3b3fa59cd0e892646322613c619b711ca2a728b7cd69f1e6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c706f19de0b2879e45b41fe71d3ac087cf15125e72ce8542adda01b0bafaa51e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CountableCylinderTower (V : CountableBooleanVocabulary) where
  stage : Nat → BooleanCylinder V
  refinement :
    ∀ n : Nat, CylinderRefinement (stage n) (stage (n + 1))
  verifiedAt :
    ∀ n : Nat, (stage n).finiteReducerSound
  coversCoordinate :
    ∀ c : V.Coordinate, ∃ n : Nat, (stage n).window.contains c
  coversWindow :
    ∀ W : FiniteBooleanWindow V,
      ∃ n : Nat,
        ∀ c : V.Coordinate, W.contains c → (stage n).window.contains c

namespace CountableCylinderTower

/-- Finite prefix verification up to stage `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/CountableBooleanCylinder/Variant1c823852b9ccb8e3b3fa59cd0e892646322613c619b711ca2a728b7cd69f1e6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/CountableBooleanCylinder/Variant1c823852b9ccb8e3b3fa59cd0e892646322613c619b711ca2a728b7cd69f1e6c.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0952ee8af4bf238ea6062f4ffeb83de4e5af77d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
