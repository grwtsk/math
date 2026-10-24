# goodReplacement_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11e8487b-b9fb-fbbd-f6c2-6a36346a3e4c",
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
  "slug": "goodreplacement-lift--53ac3fefec7b6703690d972d",
  "source": {
    "blob": "5e0d083ec1beb708a9e8efdc39363be16152f8d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 11082,
    "line": 11048,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53ac3fefec7b6703690d972df82e5356e80ddf9e7a82a296da2bf853e233c7bd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11e8487b-b9fb-fbbd-f6c2-6a36346a3e4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11048–11082.

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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean#L11048).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e0d083ec1beb708a9e8efdc39363be16152f8d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
