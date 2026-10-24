# exact_shortComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91e09f5a-1521-35a2-e4d3-93b5993d40e4",
  "kind": "lemma",
  "lexical_name": "exact_shortComplex",
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
  "slug": "exact-shortcomplex--483efdcde7320f3683606477",
  "source": {
    "blob": "f7306d572f89e76f227c11a5a5b71c0a19eefc36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 63,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant80709c27d4427df9997071e71ac8b7ff4570ad087b3a3c91366944c5a2527ed4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:483efdcde7320f368360647767b2addb6a8a15a1a403abaad6775a4fda3f658c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant80709c27d4427df9997071e71ac8b7ff4570ad087b3a3c91366944c5a2527ed4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91e09f5a-1521-35a2-e4d3-93b5993d40e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma exact_shortComplex (h : IsPushout t l r b) : h.shortComplex.Exact :=
  h.shortComplex.exact_of_g_is_cokernel
    h.isColimitCokernelCofork

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- Given a pushout square in an abelian category
```
X₁ ⟶ X₂
|    |
v    v
X₃ ⟶ X₄
```
the morphism `X₂ ⊞ X₃ ⟶ X₄` is an epimorphism. This lemma translates this
as the existence of liftings up to refinements: a morphism `z : T ⟶ X₄`
can be written as a sum of a morphism to `X₂` and a morphism to `X₃`,
at least if we allow a precomposition with an epimorphism `π : T' ⟶ T`. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant80709c27d4427df9997071e71ac8b7ff4570ad087b3a3c91366944c5a2527ed4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant80709c27d4427df9997071e71ac8b7ff4570ad087b3a3c91366944c5a2527ed4.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7306d572f89e76f227c11a5a5b71c0a19eefc36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
