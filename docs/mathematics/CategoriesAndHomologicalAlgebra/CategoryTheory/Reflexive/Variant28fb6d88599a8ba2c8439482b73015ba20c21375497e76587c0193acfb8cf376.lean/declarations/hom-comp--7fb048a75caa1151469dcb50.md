# Hom.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54dae1ba6919b6c8ea4c301ef32caabb0e540ac66f520664649f5634b4243286",
  "kind": "def",
  "lexical_name": "Hom.comp",
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
  "slug": "hom-comp--7fb048a75caa1151469dcb50",
  "source": {
    "blob": "9287d4c3696b8d7b2bfea0fcc71cfc2073335f68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 205,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant28fb6d88599a8ba2c8439482b73015ba20c21375497e76587c0193acfb8cf376.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fb048a75caa1151469dcb506b3c75db338797beb6bec03db11eafef35f0425b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant28fb6d88599a8ba2c8439482b73015ba20c21375497e76587c0193acfb8cf376.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54dae1ba6919b6c8ea4c301ef32caabb0e540ac66f520664649f5634b4243286`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Hom.comp :
    ∀ { X Y Z : WalkingReflexivePair } (_ : Hom X Y)
      (_ : Hom Y Z), Hom X Z
  | _, _, _, id _, h => h
  | _, _, _, h, id _ => h
  | _, _, _, reflexion, left => id zero
  | _, _, _, reflexion, right => id zero
  | _, _, _, reflexion, rightCompReflexion => reflexion
  | _, _, _, reflexion, leftCompReflexion => reflexion
  | _, _, _, left, reflexion => leftCompReflexion
  | _, _, _, right, reflexion => rightCompReflexion
  | _, _, _, rightCompReflexion, rightCompReflexion => rightCompReflexion
  | _, _, _, rightCompReflexion, leftCompReflexion => rightCompReflexion
  | _, _, _, rightCompReflexion, right => right
  | _, _, _, rightCompReflexion, left => right
  | _, _, _, leftCompReflexion, left => left
  | _, _, _, leftCompReflexion, right => left
  | _, _, _, leftCompReflexion, rightCompReflexion => leftCompReflexion
  | _, _, _, leftCompReflexion, leftCompReflexion => leftCompReflexion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant28fb6d88599a8ba2c8439482b73015ba20c21375497e76587c0193acfb8cf376.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant28fb6d88599a8ba2c8439482b73015ba20c21375497e76587c0193acfb8cf376.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9287d4c3696b8d7b2bfea0fcc71cfc2073335f68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
