# finrank_quotient_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5638f537-9be5-fe86-078f-20d72b517474",
  "kind": "theorem",
  "lexical_name": "finrank_quotient_map",
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
  "slug": "finrank-quotient-map--6fd1432db1b554b54fec967a",
  "source": {
    "blob": "0e5bf861f88ae866623850c06893862d51339719",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 409,
    "path": "GRWTSK/Algebra/LinearAlgebra/RamificationInertia/Variante962de568474b0ba2ee8e5dabc3de7dd96bd9352d47a216f78556a9734f5ba68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fd1432db1b554b54fec967a637669d8526651aa16c89e134cdc3ff76a35f99f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RamificationInertia/Variante962de568474b0ba2ee8e5dabc3de7dd96bd9352d47a216f78556a9734f5ba68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5638f537-9be5-fe86-078f-20d72b517474`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_quotient_map [IsDomain R] [IsDomain S] [IsDedekindDomain R] [Algebra K L]
    [Algebra R L] [IsScalarTower R K L] [IsScalarTower R S L] [IsIntegralClosure S R L]
    [hp : p.IsMaximal] [IsNoetherian R S] :
    finrank (R ⧸ p) (S ⧸ map (algebraMap R S) p) = finrank K L := by
  -- Choose an arbitrary basis `b` for `[S/pS : R/p]`.
  -- We'll use the previous results to turn it into a basis on `[Frac(S) : Frac(R)]`.
  letI : Field (R ⧸ p) := Ideal.Quotient.field _
  let ι := Module.Free.ChooseBasisIndex (R ⧸ p) (S ⧸ map (algebraMap R S) p)
  let b : Basis ι (R ⧸ p) (S ⧸ map (algebraMap R S) p) := Module.Free.chooseBasis _ _
  -- Namely, choose a representative `b' i : S` for each `b i : S / pS`.
  let b' : ι → S := fun i => (Ideal.Quotient.mk_surjective (b i)).choose
  have b_eq_b' : ⇑b = (Submodule.mkQ (map (algebraMap R S) p)).restrictScalars R ∘ b' :=
    funext fun i => (Ideal.Quotient.mk_surjective (b i)).choose_spec.symm
  -- We claim `b'` is a basis for `Frac(S)` over `Frac(R)` because it is linear independent
  -- and spans the whole of `Frac(S)`.
  let b'' : ι → L := algebraMap S L ∘ b'
  have b''_li : LinearIndependent K b'' := ?_
  have b''_sp : Submodule.span K (Set.range b'') = ⊤ := ?_
  -- Since the two bases have the same index set, the spaces have the same dimension.
  let c : Basis ι K L := Basis.mk b''_li b''_sp.ge
  rw [finrank_eq_card_basis b, finrank_eq_card_basis c]
  -- It remains to show that the basis is indeed linear independent and spans the whole space.
  · rw [Set.range_comp]
    refine FinrankQuotientMap.span_eq_top p hp.ne_top _ (top_le_iff.mp ?_)
    -- The nicest way to show `S ≤ span b' ⊔ pS` is by reducing both sides modulo pS.
    -- However, this would imply distinguishing between `pS` as `S`-ideal,
    -- and `pS` as `R`-submodule, since they have different (non-defeq) quotients.
    -- Instead we'll lift `x mod pS ∈ span b` to `y ∈ span b'` for some `y - x ∈ pS`.
    intro x _
    have mem_span_b : ((Submodule.mkQ (map (algebraMap R S) p)) x : S ⧸ map (algebraMap R S) p) ∈
        Submodule.span (R ⧸ p) (Set.range b) := b.mem_span _
    rw [← @Submodule.restrictScalars_mem R,
      Submodule.restrictScalars_span R (R ⧸ p) Ideal.Quotient.mk_surjective, b_eq_b',
      Set.range_comp, ← Submodule.map_span] at mem_span_b
    obtain ⟨y, y_mem, y_eq⟩ := Submodule.mem_map.mp mem_span_b
    suffices y + -(y - x) ∈ _ by simpa
    rw [LinearMap.restrictScalars_apply, Submodule.mkQ_apply, Submodule.mkQ_apply,
      Submodule.Quotient.eq] at y_eq
    exact add_mem (Submodule.mem_sup_left y_mem) (neg_mem <| Submodule.mem_sup_right y_eq)
  · have := b.linearIndependent; rw [b_eq_b'] at this
    convert FinrankQuotientMap.linearIndependent_of_nontrivial K _
        ((Algebra.linearMap S L).restrictScalars R) _ ((Submodule.mkQ _).restrictScalars R) this
    · rw [Quotient.algebraMap_eq, Ideal.mk_ker]
      exact hp.ne_top
    · exact IsFractionRing.injective S L
#align ideal.finrank_quotient_map Ideal.finrank_quotient_map

end FinrankQuotientMap

section FactLeComap

local notation "e" => ramificationIdx f p P

/-- `R / p` has a canonical map to `S / (P ^ e)`, where `e` is the ramification index
of `P` over `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RamificationInertia/Variante962de568474b0ba2ee8e5dabc3de7dd96bd9352d47a216f78556a9734f5ba68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RamificationInertia/Variante962de568474b0ba2ee8e5dabc3de7dd96bd9352d47a216f78556a9734f5ba68.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e5bf861f88ae866623850c06893862d51339719` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
