# goodReplacement_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfacfb5b-8489-76ea-6f26-181e0bff06f0",
  "kind": "theorem",
  "lexical_name": "goodReplacement_lift",
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
  "slug": "goodreplacement-lift--a5d35995a2224335bd401771",
  "source": {
    "blob": "38bfb1ca6249cfb327385cac6688e50254e395e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5d35995a2224335bd401771527ef88bdb8f2ac346255f46a0f8821a93f904c1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfacfb5b-8489-76ea-6f26-181e0bff06f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goodReplacement_lift {Γ Δ : List (Expr S)} {σ ξ : Nat → Expr S}
    (ts : TypingTree.StoredSubstitution P Γ Δ σ) (hg : GoodReplacement Ω C ts ξ)
    {D : Expr S} {s : S} (hD : HasType P Δ (D.subst σ) (.sort s)) (n : Expr S) :
    GoodReplacement Ω C (ts.lift hD) (Expr.consSub n ξ) := by
  intro i A hi ha
  cases i with
  | zero =>
      have he : A = D.rename Nat.succ := by cases hi; rfl
      subst A
      exact True.intro
  | succ i =>
      let hex : ∃ A', Lookup Γ i A' ∧ A = A'.rename Nat.succ := by
        cases hi with | succ _ hi => exact ⟨_,hi,rfl⟩
      have he := hex.choose_spec.2
      have hgood := hg i hex.choose hex.choose_spec.1
      have hh : ActiveLayer P C (Ω.profile (hex.choose.subst (Expr.compSub σ ξ))) := by
        rw [Expr.lift_comp_cons,he,Expr.raise_subst_cons] at ha
        exact ha
      have hr := congrArg Prod.fst (goodness_rename Ω C (ts i hex.choose hex.choose_spec.1)
        (.cons hD.valid hD) Nat.succ (TypingTree.DeclRenaming.weaken _) (Expr.consSub n ξ))
      have hgr : ValGood Ω C ((ts i hex.choose hex.choose_spec.1).rename (.cons hD.valid hD)
          Nat.succ (TypingTree.DeclRenaming.weaken _)) (Expr.consSub n ξ) := by
        rw [show ValGood Ω C _ _ = _ from hr]
        exact hgood hh
      let tt := (ts i hex.choose hex.choose_spec.1).rename (.cons hD.valid hD)
        Nat.succ (TypingTree.DeclRenaming.weaken _)
      have he' : A.subst (Expr.liftSub σ) = (hex.choose.subst σ).rename Nat.succ := by
        calc
          A.subst (Expr.liftSub σ) = (hex.choose.rename Nat.succ).subst (Expr.liftSub σ) :=
            congrArg (Expr.subst (Expr.liftSub σ)) he
          _ = (hex.choose.subst σ).rename Nat.succ := by
            rw [Expr.subst_rename,Expr.rename_subst]; rfl
      exact (valGood_retarget Ω C tt (he'.symm ▸ tt.typing)
        (by rw [he']; exact .refl _) (Expr.consSub n ξ)).mpr hgr
open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38bfb1ca6249cfb327385cac6688e50254e395e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
