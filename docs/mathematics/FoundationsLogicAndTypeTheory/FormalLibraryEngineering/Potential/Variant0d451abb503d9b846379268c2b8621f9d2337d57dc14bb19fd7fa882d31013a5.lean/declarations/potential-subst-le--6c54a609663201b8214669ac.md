# potential_subst_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0314b94-3fae-ee77-57f1-b3625bbc7532",
  "kind": "theorem",
  "lexical_name": "potential_subst_le",
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
  "slug": "potential-subst-le--6c54a609663201b8214669ac",
  "source": {
    "blob": "2e1a55517e60d102cb4397d4882ff100b98272e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 453,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variant0d451abb503d9b846379268c2b8621f9d2337d57dc14bb19fd7fa882d31013a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c54a609663201b8214669ac7a3ae7e2563f33f510fb5f52dc11ec548cdffa24",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variant0d451abb503d9b846379268c2b8621f9d2337d57dc14bb19fd7fa882d31013a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0314b94-3fae-ee77-57f1-b3625bbc7532`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem potential_subst_le (hw : SystemWeaklyNormalizing P)
    (hno : ¬ ForbiddenConfiguration P C)
    (hD : IsComponent (SecondaryEdge P C) D) (hplain : ∀ I ∈ D, PlainLayer P C I)
    (hneg : ∃ I ∈ D, ∃ K ∈ D, SecondaryEdge P C I K true)
    {I J K : Set S} (htr : ProfileTriple P I J K) (hJ : J ∈ D) (hK : K ∈ D)
    {Γ Δ : List (Expr S)} (hΔ : ValidContext P Δ) {σ : Nat → Expr S}
    (hσ : TypedSubstitution P Γ Δ σ) (hsrc : SingleSource P Γ σ I)
    {T : Expr S} {s : S} (hT : HasType P Γ T (.sort s)) (hn : Normal T)
    (hTC : Profile P Γ T ∈ D) :
    potential P C D Δ (T.subst σ).normalForm ≤ potential P C D Γ T := by
  classical
  have ha : ∀ X ∈ D, ActiveLayer P C X := fun X hX => (hplain X hX).active
  have hl : ∀ X ∈ D, X ∈ ObservationLayers P C := fun X hX => (ha X hX).layer
  have leaf {Γ Δ : List (Expr S)} {σ : Nat → Expr S} {M : Expr S} {s : S}
      (hΔ : ValidContext P Δ) (hσ : TypedSubstitution P Γ Δ σ)
      (hsrc : SingleSource P Γ σ I) (hM : HasType P Γ M (.sort s))
      (hn : Normal M) (hne : Neutral M) (hMC : Profile P Γ M ∈ D) :
      potential P C D Δ (M.subst σ).normalForm = 1 := by
    cases he : (M.subst σ).normalForm with
    | pi A B =>
        exact False.elim (hno (ForbiddenConfiguration.of_neutral_expansion hw hD hplain hneg
          htr hJ hK hΔ hσ hsrc hM hn hne hMC he))
    | var n | sort t | app f a | lam A b => rfl
  induction T generalizing Γ Δ σ s with
  | var n => exact le_of_eq (leaf hΔ hσ hsrc hT hn (.var n) hTC)
  | sort t => simp only [Expr.subst, Expr.normalForm_of_normal (Normal.sort t), potential, le_refl]
  | lam A b => exact False.elim hT.lambda_cannot_have_sort_type
  | app f a ihf iha =>
      have hneutral : Neutral (.app f a) := by
        obtain ⟨t, he⟩ | h | ⟨A, B, he⟩ := hT.sorted_normal_shape hn
        · cases he
        · exact h
        · cases he
      exact le_of_eq (leaf hΔ hσ hsrc hT hn hneutral hTC)
  | pi A B ihA ihB =>
      obtain ⟨a, b, c, hA, hB, _, _⟩ := hT.generation_pi
      have hA' := hA.subst hΔ σ hσ
      have hΔ' : ValidContext P (A.subst σ :: Δ) := .cons hΔ hA'
      have hσ' := hσ.lift hA'
      have hB' := hB.subst hΔ' _ hσ'
      have htr' := Profile.triple hw hT
      have hAp := Profile.growth_path hw hA hΔ σ hσ
      have hBp := Profile.growth_path hw hB hΔ' _ hσ'
      rw [Expr.subst, potential_normalized_pi hw (hT.subst hΔ σ hσ), potential]
      apply Nat.add_le_add
      · apply Nat.add_le_add_left
        split_ifs with hc hc'
        · exact ihA hΔ hσ hsrc hA hn.pi_domain hc'.1
        · obtain ⟨hAC, hBa⟩ := hD.domain_interpolation hl ha htr' hTC hc.1 hc.2 hAp hBp
          exact False.elim (hc' ⟨hAC, hBa⟩)
        · exact Nat.zero_le _
        · exact le_rfl
      · split_ifs with hc hc'
        · exact ihB hΔ' hσ' (hsrc.lift hw hA) hB hn.pi_body hc'
        · exact False.elim (hc' (hD.codomain_interpolation hl htr' hTC hc hBp))
        · exact Nat.zero_le _
        · exact le_rfl

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variant0d451abb503d9b846379268c2b8621f9d2337d57dc14bb19fd7fa882d31013a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variant0d451abb503d9b846379268c2b8621f9d2337d57dc14bb19fd7fa882d31013a5.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e1a55517e60d102cb4397d4882ff100b98272e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
