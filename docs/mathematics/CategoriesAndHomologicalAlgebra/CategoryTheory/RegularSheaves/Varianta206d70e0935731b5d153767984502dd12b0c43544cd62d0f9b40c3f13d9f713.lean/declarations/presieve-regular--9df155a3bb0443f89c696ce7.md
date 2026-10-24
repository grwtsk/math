# Presieve.regular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5109849974f6c3e5b4d3e275612839f55c86be164a35cc18fb45bcde2cae714b",
  "kind": "class",
  "lexical_name": "Presieve.regular",
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
  "slug": "presieve-regular--9df155a3bb0443f89c696ce7",
  "source": {
    "blob": "f38f04b1a9011c85bd13217c84fa3a3437947521",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 45,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9df155a3bb0443f89c696ce7df99557c1458f1ab8bdbe7528922114409ad3037",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5109849974f6c3e5b4d3e275612839f55c86be164a35cc18fb45bcde2cae714b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class Presieve.regular {X : C} (R : Presieve X) : Prop where
  /-- `R` consists of a single epimorphism. -/
  single_epi : ∃ (Y : C) (f : Y ⟶ X), R = Presieve.ofArrows (fun (_ : Unit) ↦ Y)
    (fun (_ : Unit) ↦ f) ∧ EffectiveEpi f

namespace regularTopology

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Varianta206d70e0935731b5d153767984502dd12b0c43544cd62d0f9b40c3f13d9f713.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f38f04b1a9011c85bd13217c84fa3a3437947521` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
