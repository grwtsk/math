# IsCardinalFilteredAndHasCardinalLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d14e51a9d7e08353dd67cd007c286184d51a287b128120494d04cc9134c601a6",
  "kind": "def",
  "lexical_name": "IsCardinalFilteredAndHasCardinalLT",
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
  "slug": "iscardinalfilteredandhascardinallt--b3b9a2dd3bf83188791d8036",
  "source": {
    "blob": "4ec2ea780a4adb599c4ec4f7344924af4947adee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 279,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf6fa213252611d13e5cc2cf6961412b5f5908b0c88048c4294c94ed30a182834.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3b9a2dd3bf83188791d8036a895deecc631262ededcd871147c29ac9012adde",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf6fa213252611d13e5cc2cf6961412b5f5908b0c88048c4294c94ed30a182834.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d14e51a9d7e08353dd67cd007c286184d51a287b128120494d04cc9134c601a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def IsCardinalFilteredAndHasCardinalLT
    (J : Type w) [PartialOrder J] (A : Set J) : Prop :=
  IsCardinalFiltered A κ₁ ∧ HasCardinalLT A κ₂

namespace IsCardinalFilteredAndHasCardinalLT

variable (κ₁ κ₂) {C : Type u} [Category.{v} C] {X : C}
  {J : Type w} [PartialOrder J]
  (p : (isCardinalPresentable C κ₁).ColimitOfShape J X)

variable [IsCardinalAccessibleCategory C κ₁]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf6fa213252611d13e5cc2cf6961412b5f5908b0c88048c4294c94ed30a182834.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf6fa213252611d13e5cc2cf6961412b5f5908b0c88048c4294c94ed30a182834.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ec2ea780a4adb599c4ec4f7344924af4947adee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
