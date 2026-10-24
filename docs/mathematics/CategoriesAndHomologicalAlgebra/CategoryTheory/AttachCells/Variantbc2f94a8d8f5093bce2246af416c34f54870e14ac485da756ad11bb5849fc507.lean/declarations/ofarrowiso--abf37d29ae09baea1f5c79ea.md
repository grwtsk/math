# ofArrowIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42f323588af5b25033a5ee7e900cc502eb56a8d1682c7defaccad8787fd2c9df",
  "kind": "def",
  "lexical_name": "ofArrowIso",
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
  "slug": "ofarrowiso--abf37d29ae09baea1f5c79ea",
  "source": {
    "blob": "98c597bfc5b61a5b3290fa411d391fcb6e345738",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 107,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abf37d29ae09baea1f5c79ea9f58bc64bdcec7a84221ec2fcf04bdb9a36cf958",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42f323588af5b25033a5ee7e900cc502eb56a8d1682c7defaccad8787fd2c9df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofArrowIso {Y₁ Y₂ : C} {f' : Y₁ ⟶ Y₂} (e : Arrow.mk f ≅ Arrow.mk f') :
    AttachCells.{w} g f' where
  ι := c.ι
  π := c.π
  cofan₁ := c.cofan₁
  cofan₂ := c.cofan₂
  isColimit₁ := c.isColimit₁
  isColimit₂ := c.isColimit₂
  m := c.m
  g₁ := c.g₁ ≫ Arrow.leftFunc.map e.hom
  g₂ := c.g₂ ≫ Arrow.rightFunc.map e.hom
  isPushout :=
    c.isPushout.of_iso (Iso.refl _) (Arrow.leftFunc.mapIso e) (Iso.refl _)
      (Arrow.rightFunc.mapIso e) (by simp) (by simp) (by simp) (by simp)

/-- This definition allows the replacement of the `ι` field of
a `AttachCells g f` structure by an equivalent type. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98c597bfc5b61a5b3290fa411d391fcb6e345738` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
