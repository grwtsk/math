# project

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40ebd9caeff4ae05fe8e908f15347a408ba191465a4c4c63a312f25faa3b55ec",
  "kind": "def",
  "lexical_name": "project",
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
  "slug": "project--a8a80f6c932f7e0f5f61585f",
  "source": {
    "blob": "dac377291f6036c4c49c5b1612ec4866f669d741",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 343,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8a80f6c932f7e0f5f61585fdbf3ebe78c21aa47fc80ead4b994c91de5d296e1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40ebd9caeff4ae05fe8e908f15347a408ba191465a4c4c63a312f25faa3b55ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def project : MonoidalFunctor (F C) D where
  obj := projectObj f
  map := projectMap f _ _
  -- Porting note: `map_comp` and `μ_natural` were proved in mathlib3 by tidy, using induction.
  -- We probably don't expect `aesop_cat` to handle this yet, see https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/Aesop.20and.20cases
  -- In any case I don't understand why we need to specify `using Quotient.recOn`.
  map_comp := by rintro _ _ _ ⟨_⟩ ⟨_⟩; rfl
  ε := 𝟙 _
  μ X Y := 𝟙 _
  μ_natural := @fun _ _ _ _ f g => by
    induction' f using Quotient.recOn
    · induction' g using Quotient.recOn
      · dsimp
        simp
        rfl
      · rfl
    · rfl
#align category_theory.free_monoidal_category.project CategoryTheory.FreeMonoidalCategory.project

end Functor

end

end FreeMonoidalCategory

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dac377291f6036c4c49c5b1612ec4866f669d741` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
