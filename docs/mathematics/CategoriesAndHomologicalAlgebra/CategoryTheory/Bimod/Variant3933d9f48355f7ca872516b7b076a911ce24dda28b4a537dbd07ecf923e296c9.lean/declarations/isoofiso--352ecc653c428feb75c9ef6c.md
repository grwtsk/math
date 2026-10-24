# isoOfIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7810b7059810ae91206fc98a8eaa5b1097f36d392164ac406be24c71692f51b",
  "kind": "def",
  "lexical_name": "isoOfIso",
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
  "slug": "isoofiso--352ecc653c428feb75c9ef6c",
  "source": {
    "blob": "67d4a585241d28a7db0135d7ed780489a306c36c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 156,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant3933d9f48355f7ca872516b7b076a911ce24dda28b4a537dbd07ecf923e296c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:352ecc653c428feb75c9ef6c0e1463136678d39a1f8861a9a27a0cf265ad43c5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant3933d9f48355f7ca872516b7b076a911ce24dda28b4a537dbd07ecf923e296c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7810b7059810ae91206fc98a8eaa5b1097f36d392164ac406be24c71692f51b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoOfIso {X Y : Mon C} {P Q : Bimod X Y} (f : P.X ≅ Q.X)
    (f_left_act_hom : P.actLeft ≫ f.hom = (X.X ◁ f.hom) ≫ Q.actLeft)
    (f_right_act_hom : P.actRight ≫ f.hom = (f.hom ▷ Y.X) ≫ Q.actRight) : P ≅ Q where
  hom :=
    { hom := f.hom }
  inv :=
    { hom := f.inv
      left_act_hom := by
        rw [← cancel_mono f.hom, Category.assoc, Category.assoc, Iso.inv_hom_id, Category.comp_id,
          f_left_act_hom, ← Category.assoc, ← whiskerLeft_comp, Iso.inv_hom_id,
          whiskerLeft_id, Category.id_comp]
      right_act_hom := by
        rw [← cancel_mono f.hom, Category.assoc, Category.assoc, Iso.inv_hom_id, Category.comp_id,
          f_right_act_hom, ← Category.assoc, ← comp_whiskerRight, Iso.inv_hom_id,
          id_whiskerRight, Category.id_comp] }
  hom_inv_id := by ext; dsimp; rw [Iso.hom_inv_id]
  inv_hom_id := by ext; dsimp; rw [Iso.inv_hom_id]

variable (A)

/-- A monoid object as a bimodule over itself. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant3933d9f48355f7ca872516b7b076a911ce24dda28b4a537dbd07ecf923e296c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant3933d9f48355f7ca872516b7b076a911ce24dda28b4a537dbd07ecf923e296c9.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67d4a585241d28a7db0135d7ed780489a306c36c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
