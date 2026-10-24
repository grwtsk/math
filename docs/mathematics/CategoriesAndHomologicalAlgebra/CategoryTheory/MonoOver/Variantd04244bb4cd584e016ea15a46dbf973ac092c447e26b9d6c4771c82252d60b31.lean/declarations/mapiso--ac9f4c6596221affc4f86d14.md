# mapIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fca3cc48344577b0901bec52d8bb067d258329fd475bedda73d3e8777dffb3a3",
  "kind": "def",
  "lexical_name": "mapIso",
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
  "slug": "mapiso--ac9f4c6596221affc4f86d14",
  "source": {
    "blob": "668756a0704b1ab02b906d65ee9507e9d2f12e1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 364,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantd04244bb4cd584e016ea15a46dbf973ac092c447e26b9d6c4771c82252d60b31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac9f4c6596221affc4f86d14ebcef888b675d736c78bdfd7499c72f1ab983023",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantd04244bb4cd584e016ea15a46dbf973ac092c447e26b9d6c4771c82252d60b31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fca3cc48344577b0901bec52d8bb067d258329fd475bedda73d3e8777dffb3a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapIso {A B : C} (e : A ≅ B) : MonoOver A ≌ MonoOver B where
  functor := map e.hom
  inverse := map e.inv
  unitIso := ((mapComp _ _).symm ≪≫ eqToIso (by simp) ≪≫ (mapId _)).symm
  counitIso := (mapComp _ _).symm ≪≫ eqToIso (by simp) ≪≫ (mapId _)

section

variable (X)

set_option backward.defeqAttrib.useBackward true in
/-- An equivalence of categories `e` between `C` and `D` induces an equivalence between
`MonoOver X` and `MonoOver (e.functor.obj X)` whenever `X` is an object of `C`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantd04244bb4cd584e016ea15a46dbf973ac092c447e26b9d6c4771c82252d60b31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantd04244bb4cd584e016ea15a46dbf973ac092c447e26b9d6c4771c82252d60b31.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `668756a0704b1ab02b906d65ee9507e9d2f12e1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
