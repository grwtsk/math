# range_le_ker_of_exact_rTensor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e320fe0-0317-6b5f-7b13-7a2894bfe85e",
  "kind": "lemma",
  "lexical_name": "range_le_ker_of_exact_rTensor",
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
  "slug": "range-le-ker-of-exact-rtensor--f8c7d0e397a5d1672afcb050",
  "source": {
    "blob": "1e211b79962cca71da71f2c2dc7d7588ca4f72a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 284,
    "path": "GRWTSK/Algebra/Basic/Variante125bd8617e09540a78010f5142655972c4e00103db6397e8cb76af3e9de91dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8c7d0e397a5d1672afcb050ef132b7db62db16e5f9a6e02c5d17a8ca665871e",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variante125bd8617e09540a78010f5142655972c4e00103db6397e8cb76af3e9de91dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e320fe0-0317-6b5f-7b13-7a2894bfe85e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma range_le_ker_of_exact_rTensor [fl : FaithfullyFlat R M]
    (ex : Function.Exact (l12.rTensor M) (l23.rTensor M)) :
    LinearMap.range l12 ≤ LinearMap.ker l23 := by
  -- let `n1 ∈ N1`. We need to show `l23 (l12 n1) = 0`. Suppose this is not the case.
  rintro _ ⟨n1, rfl⟩
  rw [LinearMap.mem_ker]
  by_contra! hn1
  -- Let `E` be the submodule spanned by `l23 (l12 n1)`. Then because `l23 (l12 n1) ≠ 0`, we have
  -- `E ≠ 0`.
  let E : Submodule R N3 := Submodule.span R {l23 (l12 n1)}
  have hE : Nontrivial E :=
    ⟨0, ⟨⟨l23 (l12 n1), Submodule.mem_span_singleton_self _⟩, Subtype.coe_ne_coe.1 hn1.symm⟩⟩
  -- Since `N1 ⊗ M -> N2 ⊗ M -> N3 ⊗ M` is exact, we have `l23 (l12 n1) ⊗ₜ m = 0` for all `m : M`.
  have eq1 : ∀ (m : M), l23 (l12 n1) ⊗ₜ[R] m = 0 := fun m ↦
    ex.apply_apply_eq_zero (n1 ⊗ₜ[R] m)
  -- Then `E ⊗ M = 0`. Indeed,
  have eq0 : (⊤ : Submodule R (E ⊗[R] M)) = ⊥ := by
    -- suppose `x ∈ E ⊗ M`. We will show `x = 0`.
    ext x
    simp only [Submodule.mem_top, Submodule.mem_bot, true_iff]
    have mem : x ∈ (⊤ : Submodule R _) := ⟨⟩
    rw [← TensorProduct.span_tmul_eq_top, Submodule.mem_span_set] at mem
    obtain ⟨c, hc, rfl⟩ := mem
    choose b a hy using hc
    let r : ⦃a : E ⊗[R] M⦄ → a ∈ ↑c.support → R := fun a ha =>
      Submodule.mem_span_singleton.1 (b ha).2 |>.choose
    have hr : ∀ ⦃i : E ⊗[R] M⦄ (hi : i ∈ c.support), b hi =
        r hi • ⟨l23 (l12 n1), Submodule.mem_span_singleton_self _⟩ := fun a ha =>
      Subtype.ext <| Submodule.mem_span_singleton.1 (b ha).2 |>.choose_spec.symm
    -- Since `M` is flat and `E -> N1` is injective, we only need to check that x = 0
    -- in `N1 ⊗ M`. We write `x = ∑ μᵢ • (l23 (l12 n1)) ⊗ mᵢ = ∑ μᵢ • 0 = 0`
    -- (remember `E = span {l23 (l12 n1)}` and `eq1`)
    refine Finset.sum_eq_zero fun i hi => show c i • i = 0 from
      (Module.Flat.rTensor_preserves_injective_linearMap (M := M) E.subtype <|
              Submodule.injective_subtype E) ?_
    rw [← hy hi, hr hi, smul_tmul, map_smul, LinearMap.rTensor_tmul, Submodule.subtype_apply, eq1,
      smul_zero, map_zero]
  have : Subsingleton (E ⊗[R] M) := subsingleton_iff_forall_eq 0 |>.2 fun x =>
    show x ∈ (⊥ : Submodule R _) from eq0 ▸ ⟨⟩
  -- but `E ⊗ M = 0` implies `E = 0` because `M` is faithfully flat and this is a contradiction.
  exact not_subsingleton_iff_nontrivial.2 inferInstance <| fl.rTensor_reflects_triviality R M E

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variante125bd8617e09540a78010f5142655972c4e00103db6397e8cb76af3e9de91dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variante125bd8617e09540a78010f5142655972c4e00103db6397e8cb76af3e9de91dc.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e211b79962cca71da71f2c2dc7d7588ca4f72a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
