# DeflectionCocycle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f229d421bd2a30b8169ed31ae96bded23007b32a77a0e6a07ddb87827e48a03",
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
  "slug": "deflectioncocycle--3aed94d5637423c06f63867a",
  "source": {
    "blob": "5bb132f93056f47cb3cd1116c92d1409d7eb6983",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cocycle/Variant280e6b2e7005257e368d63ca957d6799fba393721f18abb62d187b36dc5edd4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3aed94d5637423c06f63867aa45698fe64df7a4b637459edd209017b78a4e1a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cocycle/Variant280e6b2e7005257e368d63ca957d6799fba393721f18abb62d187b36dc5edd4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f229d421bd2a30b8169ed31ae96bded23007b32a77a0e6a07ddb87827e48a03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–52.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cocycle/Variant280e6b2e7005257e368d63ca957d6799fba393721f18abb62d187b36dc5edd4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cocycle/Variant280e6b2e7005257e368d63ca957d6799fba393721f18abb62d187b36dc5edd4f.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bb132f93056f47cb3cd1116c92d1409d7eb6983` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
