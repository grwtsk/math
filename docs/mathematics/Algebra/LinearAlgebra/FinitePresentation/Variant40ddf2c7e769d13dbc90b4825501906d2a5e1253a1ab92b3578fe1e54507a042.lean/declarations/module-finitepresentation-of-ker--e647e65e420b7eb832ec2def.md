# Module.finitePresentation_of_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa1a6775-4dad-a3c4-1c00-fcc61611fc4c",
  "kind": "lemma",
  "lexical_name": "Module.finitePresentation_of_ker",
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
  "slug": "module-finitepresentation-of-ker--e647e65e420b7eb832ec2def",
  "source": {
    "blob": "e1393e7617530450add7ca5c4955aad59cabc93c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 227,
    "path": "GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant40ddf2c7e769d13dbc90b4825501906d2a5e1253a1ab92b3578fe1e54507a042.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e647e65e420b7eb832ec2def0c5ce146086d23d7cd183d9be91f6896c95efc6d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FinitePresentation/Variant40ddf2c7e769d13dbc90b4825501906d2a5e1253a1ab92b3578fe1e54507a042.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa1a6775-4dad-a3c4-1c00-fcc61611fc4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.finitePresentation_of_ker [Module.FinitePresentation R N]
    (l : M →ₗ[R] N) (hl : Function.Surjective l) [Module.FinitePresentation R (LinearMap.ker l)] :
    Module.FinitePresentation R M := by
  obtain ⟨s, hs⟩ : (⊤ : Submodule R M).FG := by
    apply Submodule.fg_of_fg_map_of_fg_inf_ker l
    · rw [Submodule.map_top, LinearMap.range_eq_top.mpr hl]; exact Module.Finite.fg_top
    · rw [top_inf_eq, ← Module.Finite.iff_fg]; infer_instance
  refine ⟨s, hs, ?_⟩
  let π := Finsupp.linearCombination R ((↑) : s → M)
  have H : Function.Surjective π :=
    LinearMap.range_eq_top.mp
      (by rw [range_linearCombination, Subtype.range_val, ← hs])
  have inst : Module.Finite R (LinearMap.ker (l ∘ₗ π)) :=
    .of_fg <| Module.FinitePresentation.fg_ker _ (hl.comp H)
  let f : LinearMap.ker (l ∘ₗ π) →ₗ[R] LinearMap.ker l := LinearMap.restrict π (fun x ↦ id)
  have e : π ∘ₗ Submodule.subtype _ = Submodule.subtype _ ∘ₗ f := by ext; rfl
  have hf : Function.Surjective f := by
    rw [← LinearMap.range_eq_top]
    apply Submodule.map_injective_of_injective (Submodule.injective_subtype _)
    rw [Submodule.map_top, Submodule.range_subtype, ← LinearMap.range_comp, ← e,
      LinearMap.range_comp, Submodule.range_subtype, LinearMap.ker_comp,
      Submodule.map_comap_eq_of_surjective H]
  change (LinearMap.ker π).FG
  have : LinearMap.ker π ≤ LinearMap.ker (l ∘ₗ π) :=
    Submodule.comap_mono (f := π) (bot_le (a := LinearMap.ker l))
  rw [← inf_eq_right.mpr this, ← Submodule.range_subtype (LinearMap.ker _),
    ← Submodule.map_comap_eq, ← LinearMap.ker_comp, e, LinearMap.ker_comp f,
    LinearMap.ker_eq_bot.mpr (Submodule.injective_subtype (LinearMap.ker l)), Submodule.comap_bot]
  exact (Module.FinitePresentation.fg_ker f hf).map (Submodule.subtype _)

/-- Given a split exact sequence `0 → M → N → P → 0` with `N` finitely presented,
then `M` is also finitely presented. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FinitePresentation/Variant40ddf2c7e769d13dbc90b4825501906d2a5e1253a1ab92b3578fe1e54507a042.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant40ddf2c7e769d13dbc90b4825501906d2a5e1253a1ab92b3578fe1e54507a042.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1393e7617530450add7ca5c4955aad59cabc93c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
