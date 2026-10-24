# isCardinalPresentable_of_equivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f327b46-62cb-16be-184a-0baf424af178",
  "kind": "lemma",
  "lexical_name": "isCardinalPresentable_of_equivalence",
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
  "slug": "iscardinalpresentable-of-equivalence--84af439cbcd727a7313820ef",
  "source": {
    "blob": "d540c20ffe00269ef829e75ebff32055c05140e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 123,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84af439cbcd727a7313820ef6d0b071c6932fb89a408fc0bc7a7bfd1ec640575",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f327b46-62cb-16be-184a-0baf424af178`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCardinalPresentable_of_equivalence
    {C' : Type u₃} [Category.{v₃} C'] [IsCardinalPresentable X κ] (e : C ≌ C') :
    IsCardinalPresentable (e.functor.obj X) κ := by
  refine ⟨fun J _ _ ↦ ⟨fun {Y} ↦ ?_⟩⟩
  have := preservesColimitsOfShape_of_isCardinalPresentable X κ J
  suffices PreservesColimit Y (coyoneda.obj (op (e.functor.obj X)) ⋙ uliftFunctor.{v₁}) from
    ⟨fun {c} hc ↦ ⟨isColimitOfReflects uliftFunctor.{v₁}
        (isColimitOfPreserves (coyoneda.obj (op (e.functor.obj X)) ⋙ uliftFunctor.{v₁}) hc)⟩⟩
  have iso : coyoneda.obj (op (e.functor.obj X)) ⋙ uliftFunctor.{v₁} ≅
    e.inverse ⋙ coyoneda.obj (op X) ⋙ uliftFunctor.{v₃} :=
    NatIso.ofComponents (fun Z ↦
      (Equiv.ulift.trans ((e.toAdjunction.homEquiv X Z).trans Equiv.ulift.symm)).toIso) (by
        intro _ _ f
        ext ⟨g⟩
        apply Equiv.ulift.injective
        simp [Adjunction.homEquiv_unit])
  exact preservesColimit_of_natIso Y iso.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a707daafda3a40e5c26bb7f15163bac2211652f4d2f85e08765022f3dd98337.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d540c20ffe00269ef829e75ebff32055c05140e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
