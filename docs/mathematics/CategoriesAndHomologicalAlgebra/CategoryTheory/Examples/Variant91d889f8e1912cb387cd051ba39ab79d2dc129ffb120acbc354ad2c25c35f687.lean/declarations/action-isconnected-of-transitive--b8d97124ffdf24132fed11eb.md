# Action.isConnected_of_transitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab0276a5-b82e-ba9a-ad97-1a0f62068b45",
  "kind": "theorem",
  "lexical_name": "Action.isConnected_of_transitive",
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
  "slug": "action-isconnected-of-transitive--b8d97124ffdf24132fed11eb",
  "source": {
    "blob": "57bd30bece99a90129f5524981432082d840e995",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 141,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Variant91d889f8e1912cb387cd051ba39ab79d2dc129ffb120acbc354ad2c25c35f687.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8d97124ffdf24132fed11eb602d9cba5560e6515003021cfb7ee10cc563b728",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Variant91d889f8e1912cb387cd051ba39ab79d2dc129ffb120acbc354ad2c25c35f687.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab0276a5-b82e-ba9a-ad97-1a0f62068b45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Action.isConnected_of_transitive (X : FintypeCat) [MulAction G X]
    [MulAction.IsPretransitive G X] [h : Nonempty X] :
    PreGaloisCategory.IsConnected (Action.FintypeCat.ofMulAction G X) where
  notInitial := not_initial_of_inhabited (Action.forget _ _) h.some
  noTrivialComponent Y i hm hni := by
    /- We show that the induced inclusion `i.hom` of finite sets is surjective, using the
    transitivity of the `G`-action. -/
    obtain ⟨(y : Y.V)⟩ := (not_initial_iff_fiber_nonempty (Action.forget _ _) Y).mp hni
    have : IsIso i.hom := by
      refine (ConcreteCategory.isIso_iff_bijective i.hom).mpr ⟨?_, fun x' ↦ ?_⟩
      · have : Mono i.hom := map_mono (forget₂ _ _) i
        exact ConcreteCategory.injective_of_mono_of_preservesPullback i.hom
      · let x : X := i.hom y
        obtain ⟨σ, hσ⟩ := MulAction.exists_smul_eq G x x'
        use σ • y
        change (Y.ρ σ ≫ i.hom) y = x'
        rw [i.comm, FintypeCat.comp_apply]
        exact hσ
    apply isIso_of_reflects_iso i (Action.forget _ _)

/-- A nonempty finite `G`-set is connected if and only if the `G`-action is transitive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Variant91d889f8e1912cb387cd051ba39ab79d2dc129ffb120acbc354ad2c25c35f687.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Variant91d889f8e1912cb387cd051ba39ab79d2dc129ffb120acbc354ad2c25c35f687.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57bd30bece99a90129f5524981432082d840e995` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
