# mapNatTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93f7f93ca3d7fb906f089f8132add85f109dbd44af441f9a329e6d36007f66db",
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
  "slug": "mapnattrans--d7b479d963f0022eb4d25879",
  "source": {
    "blob": "c94d89a7cacbd4e53885c0506aef8d0d99a8905b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 289,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant25821e672dba8f9504b76a3c723ba542e13d8e095db081635f135759d001d348.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7b479d963f0022eb4d25879eb5ad7fe68a72488a98a0ffc9a0589ee67a84566",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant25821e672dba8f9504b76a3c723ba542e13d8e095db081635f135759d001d348.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93f7f93ca3d7fb906f089f8132add85f109dbd44af441f9a329e6d36007f66db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapNatTrans {F₁ F₂ : C ⥤ D} (k : F₁ ⟶ F₂) : map F₁ ⟶ map F₂ where
  app X := Quotient.recOnSubsingleton X fun x => ⟨⟨⟨k.app x⟩⟩⟩

/- Porting note: `map₂ObjMap`, `map₂Functor`, and `map₂NatTrans` were all extracted
from the original `map₂` proof. Lean needed an extensive amount of explicit type
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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant25821e672dba8f9504b76a3c723ba542e13d8e095db081635f135759d001d348.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant25821e672dba8f9504b76a3c723ba542e13d8e095db081635f135759d001d348.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c94d89a7cacbd4e53885c0506aef8d0d99a8905b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
