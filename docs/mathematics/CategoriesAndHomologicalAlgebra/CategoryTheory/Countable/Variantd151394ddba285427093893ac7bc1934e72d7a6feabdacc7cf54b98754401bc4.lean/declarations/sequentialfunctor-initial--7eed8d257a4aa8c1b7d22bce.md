# sequentialFunctor_initial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:681b00fbff5ee3b9407751fc6ed1c50de5dd8c1ce685625d4716dcf7752d19da",
  "kind": "instance",
  "lexical_name": "sequentialFunctor_initial",
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
  "slug": "sequentialfunctor-initial--7eed8d257a4aa8c1b7d22bce",
  "source": {
    "blob": "6c1fe580209b86572de45883ee4e04fca3c4c7bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 210,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7eed8d257a4aa8c1b7d22bce499b2f7e11d3caf6fee613dfe02358e22616e945",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:681b00fbff5ee3b9407751fc6ed1c50de5dd8c1ce685625d4716dcf7752d19da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance sequentialFunctor_initial : (sequentialFunctor J).Initial where
  out d := by
    obtain ⟨n, (g : (sequentialFunctor J).obj ⟨n⟩ ≤ d)⟩ := sequentialFunctor_initial_aux J d
    have : Nonempty (CostructuredArrow (sequentialFunctor J) d) :=
      ⟨CostructuredArrow.mk (homOfLE g)⟩
    apply isConnected_of_zigzag
    refine fun i j ↦ ⟨[j], ?_⟩
    simp only [List.chain_cons, Zag, List.Chain.nil, and_true, ne_eq, not_false_eq_true,
      List.getLast_cons, not_true_eq_false, List.getLast_singleton', reduceCtorEq]
    clear! C
    wlog h : (unop i.left) ≤ (unop j.left)
    · exact or_comm.1 (this J d n g inferInstance j i (le_of_lt (not_le.mp h)))
    · right
      exact ⟨CostructuredArrow.homMk (homOfLE h).op rfl⟩

@[stacks 0032]
proof_wanted preorder_of_cofiltered (J : Type*) [Category J] [IsCofiltered J] :
    ∃ (I : Type*) (_ : Preorder I) (_ : IsCofiltered I) (F : I ⥤ J), F.Initial

/--
The proof of `preorder_of_cofiltered` should give a countable `I` in the case that `J` is a
countable category.
-/
proof_wanted preorder_of_cofiltered_countable
    (J : Type*) [SmallCategory J] [IsCofiltered J] [CountableCategory J] :
    ∃ (I : Type) (_ : Preorder I) (_ : Countable I) (_ : IsCofiltered I) (F : I ⥤ J), F.Initial

/--
Put together `sequentialFunctor_initial` and `preorder_of_cofiltered_countable`.
-/
proof_wanted hasCofilteredCountableLimits_of_hasSequentialLimits [HasLimitsOfShape ℕᵒᵖ C] :
    ∀ (J : Type) [SmallCategory J] [IsCofiltered J] [CountableCategory J], HasLimitsOfShape J C

/--
This is the countable version of `CategoryTheory.Limits.has_limits_of_finite_and_cofiltered`, given
all of the above.
-/
proof_wanted hasCountableLimits_of_hasFiniteLimits_and_hasSequentialLimits [HasFiniteLimits C]
  [HasLimitsOfShape ℕᵒᵖ C] : HasCountableLimits C

/--
For this we need to dualize this whole section.
-/
proof_wanted hasCountableColimits_of_hasFiniteColimits_and_hasSequentialColimits
  [HasFiniteColimits C] [HasLimitsOfShape ℕ C] : HasCountableColimits C

end IsCofiltered

end Preorder

@[deprecated (since := "2024-11-01")] alias sequentialFunctor := IsCofiltered.sequentialFunctor
@[deprecated (since := "2024-11-01")] alias sequentialFunctor_obj :=
  IsCofiltered.sequentialFunctor_obj
@[deprecated (since := "2024-11-01")] alias sequentialFunctor_map :=
  IsCofiltered.sequentialFunctor_map
@[deprecated (since := "2024-11-01")] alias sequentialFunctor_initial_aux :=
  IsCofiltered.sequentialFunctor_initial_aux
@[deprecated (since := "2024-11-01")] alias sequentialFunctor_initial :=
  IsCofiltered.sequentialFunctor_initial
attribute [nolint defLemma] sequentialFunctor_initial

end CategoryTheory.Limits
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c1fe580209b86572de45883ee4e04fca3c4c7bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
