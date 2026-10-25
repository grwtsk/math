# eval_rename

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce3a4bb3-112f-2315-5ba7-b94fe8f62114",
  "kind": "theorem",
  "lexical_name": "eval_rename",
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
  "slug": "eval-rename--66fc2bde2d19f5cd03c0a4ce",
  "source": {
    "blob": "4838c179bfc17e51eb61e19b567b56a53e09f589",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 252,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant7fb8202d67cb0ca21b423faed0d719eb9704bea8b12013de93110520cc9e6ed1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66fc2bde2d19f5cd03c0a4ce997afe6c9acf4f15e5de3365b18b3cc327f3ac43",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant7fb8202d67cb0ca21b423faed0d719eb9704bea8b12013de93110520cc9e6ed1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce3a4bb3-112f-2315-5ba7-b94fe8f62114`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_rename {Γ Δ : List (Expr S)} {A : Expr S} {s : S}
    (hA : HasType P Γ A (.sort s)) (hΔ : ValidContext P Δ)
    (ρ : Nat → Nat) (hρ : TypingTree.DeclRenaming Γ Δ ρ)
    (σ τ : Nat → Expr S) (θ ψ : Bits) (hσ : τ ∘ ρ = σ) (hθ : ψ ∘ ρ = θ) :
    eval Ω C Γ A σ θ = eval Ω C Δ (A.rename ρ) τ ψ := by
  induction A generalizing Γ Δ s ρ σ τ θ ψ with
  | pi D E ihD ihE =>
    obtain ⟨a,b,c,hD,hE,_,_⟩ := hA.generation_pi
    have hp := Profile.rename hw hA hΔ ρ (hρ.typed hΔ)
    have he (M : Expr S) : (M.rename ρ).subst τ = M.subst σ := by rw [Expr.subst_rename,hσ]
    rw [eval_pi]
    change _ = eval Ω C Δ (.pi (D.rename ρ) (E.rename (Expr.liftRen ρ))) τ ψ
    rw [eval_pi]
    have hraw : (Expr.pi (D.rename ρ) (E.rename (Expr.liftRen ρ))).subst τ = (Expr.pi D
      E).subst σ := he (.pi D E)
    have hX := ihD hD hΔ ρ hρ σ τ θ ψ hσ hθ
    have hY : (fun n bit => eval Ω C (D :: Γ) E (Expr.extend σ n) (extendBit θ bit)) =
        (fun n bit => eval Ω C (D.rename ρ :: Δ) (E.rename (Expr.liftRen ρ))
          (Expr.extend τ n) (extendBit ψ bit)) := by
      funext n bit
      apply ihE hE (.cons hΔ (hD.rename hΔ ρ (hρ.typed hΔ))) _ (hρ.lift D)
      · funext i; cases i with
        | zero => rfl
        | succ i => exact congrFun hσ i
      · funext i; cases i with
        | zero => rfl
        | succ i => exact congrFun hθ i
    change Profile P Δ (Expr.pi (D.rename ρ) (E.rename (Expr.liftRen ρ))) = _ at hp
    rw [hp,hraw]
    congr 1
    unfold RawProduct
    rw [hraw,hX,hY]
  | sort s => rw [eval_sort,Expr.rename,eval_sort]
  | var i =>
    have hp := Profile.rename hw hA hΔ ρ (hρ.typed hΔ)
    have he : (.var (ρ i) : Expr S).subst τ = Expr.subst σ (.var i) := congrFun hσ i
    change Profile P Δ (.var (ρ i)) = _ at hp
    simp only [eval,Expr.rename,hp,he,head]
    rw [show ψ (ρ i) = θ i from congrFun hθ i]
  | lam D m ihD ihm => exact False.elim hA.lambda_cannot_have_sort_type
  | app f n ihf ihn =>
    have hp := Profile.rename hw hA hΔ ρ (hρ.typed hΔ)
    have he : ((Expr.app f n).rename ρ).subst τ = (Expr.app f n).subst σ := by rw
      [Expr.subst_rename,hσ]
    simp only [Expr.rename] at hp he ⊢
    simp only [eval,hp,he,head,head_rename]
    cases hh : head f with
    | none => rfl
    | some i => simp only [Option.map_some]; rw [show ψ (ρ i) = θ i from congrFun hθ i]

namespace Environment
variable {Ω}
open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant7fb8202d67cb0ca21b423faed0d719eb9704bea8b12013de93110520cc9e6ed1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant7fb8202d67cb0ca21b423faed0d719eb9704bea8b12013de93110520cc9e6ed1.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4838c179bfc17e51eb61e19b567b56a53e09f589` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
