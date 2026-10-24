# ofBifunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c6a0aba7c11898a4a3654a8b1eee26e5f08c2108a58bfbe5631880ae59847f0",
  "kind": "def",
  "lexical_name": "ofBifunctor",
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
  "slug": "ofbifunctor--23972da5117df5b0b0bb1f25",
  "source": {
    "blob": "4732ddf22a9e2651ad0d5878c831ecc84e1638a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 291,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23972da5117df5b0b0bb1f253e8e3beb84e7896d6bbd7440a889a38268062b8e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c6a0aba7c11898a4a3654a8b1eee26e5f08c2108a58bfbe5631880ae59847f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def ofBifunctor : F.LaxMonoidal where
  ε := ε
  μ X Y := (μ.app X).app Y
  μ_natural_left f X := NatTrans.congr_app (μ.naturality f) X
  μ_natural_right X f := (μ.app X).naturality f
  associativity X Y Z :=
    NatTrans.congr_app (NatTrans.congr_app (NatTrans.congr_app associativity X) Y) Z
  left_unitality X := NatTrans.congr_app left_unitality X
  right_unitality X := NatTrans.congr_app right_unitality X

end LaxMonoidal

namespace OplaxMonoidal

/-!

## Oplax monoidal functors

Given a counit morphism `η : F.obj (𝟙_ C)) ⟶ 𝟙_ D` and a tensorator `δ : F (- ⊗ -) ⟶ F - ⊗ F -`
such that the diagrams below commute, we define
`CategoryTheory.Functor.OplaxMonoidal.ofBifunctor : F.OplaxMonoidal`.

### Oplax associativity hexagon

```
      F ((- ⊗ -) ⊗ -)
        /           \
       v             v
F (- ⊗ -) ⊗ F -      F (- ⊗ (- ⊗ -))
       |                |
       v                v
(F - ⊗ F -) ⊗ F -    F - ⊗ F (- ⊗ -)
        \            /
         v          v
       F - ⊗ (F - ⊗ F -)
```

### Oplax left unitality square

```
  F   ⟶  F (𝟙 ⊗ -)
  |           |
  v           v
𝟙 ⊗ F - ← F 𝟙 ⊗ F -
```

### Oplax right unitality square

```
  F  ⟶   F (- ⊗ 𝟙)
  |           |
  v           v
F - ⊗ 𝟙 ← F - ⊗ F 𝟙
```
-/

namespace ofBifunctor

/--
The top left map in the oplax associativity hexagon.
-/
@[simps!]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Variant2b4af6a368416f3ee728bd3669e13fa23408eb1ad6a8bc34a7e1be60d36ee54e.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4732ddf22a9e2651ad0d5878c831ecc84e1638a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
