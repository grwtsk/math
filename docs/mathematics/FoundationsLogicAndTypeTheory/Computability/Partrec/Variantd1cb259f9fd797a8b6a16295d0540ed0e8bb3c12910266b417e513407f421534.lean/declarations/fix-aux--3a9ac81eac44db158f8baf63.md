# fix_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a1aa708-d5eb-7186-8b70-a4a983aa40dd",
  "kind": "theorem",
  "lexical_name": "fix_aux",
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
  "slug": "fix-aux--3a9ac81eac44db158f8baf63",
  "source": {
    "blob": "88129181fdf2bdc1cf1c5bb461f5050b04b742ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 857,
    "line": 818,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variantd1cb259f9fd797a8b6a16295d0540ed0e8bb3c12910266b417e513407f421534.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a9ac81eac44db158f8baf6360142c9fe4eaa2ddd363c31ff58081754f58d00d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variantd1cb259f9fd797a8b6a16295d0540ed0e8bb3c12910266b417e513407f421534.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a1aa708-d5eb-7186-8b70-a4a983aa40dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 818–857.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fix_aux {α σ} (f : α →. Sum σ α) (a : α) (b : σ) :
    let F : α → ℕ →. Sum σ α := fun a n =>
      n.rec (some (Sum.inr a)) fun _ IH => IH.bind fun s => Sum.casesOn s (fun _ => Part.some s) f
    (∃ n : ℕ,
        ((∃ b' : σ, Sum.inl b' ∈ F a n) ∧ ∀ {m : ℕ}, m < n → ∃ b : α, Sum.inr b ∈ F a m) ∧
          Sum.inl b ∈ F a n) ↔
      b ∈ PFun.fix f a := by
  intro F; refine' ⟨fun h => _, fun h => _⟩
  · rcases h with ⟨n, ⟨_x, h₁⟩, h₂⟩
    have : ∀ (m a') (_ : Sum.inr a' ∈ F a m) (_ : b ∈ PFun.fix f a'), b ∈ PFun.fix f a := by
      intro m a' am ba
      induction' m with m IH generalizing a' <;> simp at am
      · rwa [← am]
      rcases am with ⟨a₂, am₂, fa₂⟩
      exact IH _ am₂ (PFun.mem_fix_iff.2 (Or.inr ⟨_, fa₂, ba⟩))
    cases n <;> simp at h₂
    rcases h₂ with (h₂ | ⟨a', am', fa'⟩)
    · cases' h₁ (Nat.lt_succ_self _) with a' h
      injection mem_unique h h₂
    · exact this _ _ am' (PFun.mem_fix_iff.2 (Or.inl fa'))
  · suffices
      ∀ (a') (_ : b ∈ PFun.fix f a') (k) (_ : Sum.inr a' ∈ F a k),
        ∃ n, Sum.inl b ∈ F a n ∧ ∀ m < n, ∀ (_ : k ≤ m), ∃ a₂, Sum.inr a₂ ∈ F a m by
      rcases this _ h 0 (by simp) with ⟨n, hn₁, hn₂⟩
      exact ⟨_, ⟨⟨_, hn₁⟩, fun {m} mn => hn₂ m mn (Nat.zero_le _)⟩, hn₁⟩
    intro a₁ h₁
    apply @PFun.fixInduction _ _ _ _ _ _ h₁
    intro a₂ h₂ IH k hk
    rcases PFun.mem_fix_iff.1 h₂ with (h₂ | ⟨a₃, am₃, _⟩)
    · refine' ⟨k.succ, _, fun m mk km => ⟨a₂, _⟩⟩
      · simp
        exact Or.inr ⟨_, hk, h₂⟩
      · rwa [le_antisymm (Nat.le_of_lt_succ mk) km]
    · rcases IH _ am₃ k.succ (by simp; exact ⟨_, hk, am₃⟩) with ⟨n, hn₁, hn₂⟩
      · refine' ⟨n, hn₁, fun m mn km => _⟩
        cases' km.lt_or_eq_dec with km km
        · exact hn₂ _ mn km
        · exact km ▸ ⟨_, hk⟩
#align partrec.fix_aux Partrec.fix_aux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variantd1cb259f9fd797a8b6a16295d0540ed0e8bb3c12910266b417e513407f421534.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variantd1cb259f9fd797a8b6a16295d0540ed0e8bb3c12910266b417e513407f421534.lean#L818).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88129181fdf2bdc1cf1c5bb461f5050b04b742ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
