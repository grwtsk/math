# apply_eq_zero_of_comp_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d1fcbca-8518-2d5d-6f83-4d0e2fe70db8",
  "kind": "theorem",
  "lexical_name": "apply_eq_zero_of_comp_eq_zero",
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
  "slug": "apply-eq-zero-of-comp-eq-zero--df4cda027a30e409cd098eb6",
  "source": {
    "blob": "b3fca66943b2140552e6b28295dce12d2f002833",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 400,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Varianta41770aead5d0cea120e976d6c449a1813ebf3c1990a5ceac8326fcf3e799a1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df4cda027a30e409cd098eb67555b2a3a25c7fe79426e0afe2b0381e7a679a8c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Varianta41770aead5d0cea120e976d6c449a1813ebf3c1990a5ceac8326fcf3e799a1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d1fcbca-8518-2d5d-6f83-4d0e2fe70db8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_eq_zero_of_comp_eq_zero {P Q R : C} (f : Q ⟶ R) (a : P ⟶ Q) : a ≫ f = 0 → f a = 0 :=
  fun h => by simp [over_coe_def, pseudoApply_mk', Over.coe_hom, h]
#align category_theory.abelian.pseudoelement.apply_eq_zero_of_comp_eq_zero CategoryTheory.Abelian.Pseudoelement.apply_eq_zero_of_comp_eq_zero

section

/-- If two morphisms are exact on pseudoelements, they are exact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Varianta41770aead5d0cea120e976d6c449a1813ebf3c1990a5ceac8326fcf3e799a1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Varianta41770aead5d0cea120e976d6c449a1813ebf3c1990a5ceac8326fcf3e799a1f.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3fca66943b2140552e6b28295dce12d2f002833` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
