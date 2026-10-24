# mapNatTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25af9598d6a5d2216020d19d774cf0c2fd2ecf77e90b7c08dd869163ce72eb30",
  "kind": "def",
  "lexical_name": "mapNatTrans",
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
  "slug": "mapnattrans--ed86ccc51e615152aa2049b4",
  "source": {
    "blob": "3a848751c03556f7c75a78bdc0890c75b2501833",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 209,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant7d46d3ac1938b514b5e9b029658be5ad5cf8ccd6d353778249ea9c139d74bff9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed86ccc51e615152aa2049b496227c87b8bf55f196659ed2e6cbf8f10927f44c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant7d46d3ac1938b514b5e9b029658be5ad5cf8ccd6d353778249ea9c139d74bff9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25af9598d6a5d2216020d19d774cf0c2fd2ecf77e90b7c08dd869163ce72eb30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapNatTrans {F₁ F₂ : C ⥤ D} (k : F₁ ⟶ F₂) : map F₁ ⟶ map F₂ where
  app X := Quotient.recOnSubsingleton X fun x => ⟨⟨⟨k.app x⟩⟩⟩

/- Porting note: `map₂ObjMap`, `map₂Functor`, and `map₂NatTrans` were all extracted
from the original `map₂` proof. Lean needed an extensive amount explicit type
annotations to figure things out. This also translated into repeated deterministic
timeouts. The extracted defs allow for explicit motives for the multiple
descents to the quotients.

It would be better to prove that
`ThinSkeleton (C × D) ≌ ThinSkeleton C × ThinSkeleton D`
which is more immediate from comparing the preorders. Then one could get
`map₂` by currying.
-/
/-- Given a bifunctor, we descend to a function on objects of `ThinSkeleton` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant7d46d3ac1938b514b5e9b029658be5ad5cf8ccd6d353778249ea9c139d74bff9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant7d46d3ac1938b514b5e9b029658be5ad5cf8ccd6d353778249ea9c139d74bff9.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a848751c03556f7c75a78bdc0890c75b2501833` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
