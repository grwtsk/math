# lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9117f849f157ba71daba17baad05e4ed93b7de0849bb3abf2c2b017fb9010e5",
  "kind": "def",
  "lexical_name": "lift",
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
  "slug": "lift--68c0f7d29284b9ffe3c17bcd",
  "source": {
    "blob": "f06d5c7772a9e40940e303f0f187c184a751737a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1772,
    "line": 1745,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCoreFirstAttempt/Variant423c0f2dae5c7f44d059216ce008df22e8d2822cc029bab11381146cf102d750.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68c0f7d29284b9ffe3c17bcdaf0e6a4b914f48817a2211ad8596b75f8b8235bc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCoreFirstAttempt/Variant423c0f2dae5c7f44d059216ce008df22e8d2822cc029bab11381146cf102d750.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9117f849f157ba71daba17baad05e4ed93b7de0849bb3abf2c2b017fb9010e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1745–1772.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def lift (ts : StoredSubstitution P Γ Δ σ) {A : Expr S} {s : S}
    (hA : HasType P Δ (A.subst σ) (.sort s)) :
    StoredSubstitution P (A :: Γ) (A.subst σ :: Δ) (Expr.liftSub σ) :=
  fun n => match n with
  | 0 => fun B hn => by
      have he : B = A.rename Nat.succ := by cases hn; rfl
      have he' : B.subst (Expr.liftSub σ) = (A.subst σ).rename Nat.succ := by
        rw [he,Expr.subst_rename,Expr.rename_subst]
        rfl
      exact .var (he'.symm ▸ HasType.var hA) (.zero _ _) (by rw [he']; exact .refl _)
  | n+1 => fun B hn => by
      let hex : ∃ B', Lookup Γ n B' ∧ B = B'.rename Nat.succ := by
        cases hn with
        | succ _ h => exact ⟨_, h, rfl⟩
      let tt := (ts _ _ hex.choose_spec.1).rename (.cons hA.valid hA) Nat.succ (DeclRenaming.weaken _)
      have he : B.subst (Expr.liftSub σ) = (hex.choose.subst σ).rename Nat.succ := by
        calc
          B.subst (Expr.liftSub σ) = (hex.choose.rename Nat.succ).subst (Expr.liftSub σ) :=
            congrArg (Expr.subst (Expr.liftSub σ)) hex.choose_spec.2
          _ = (hex.choose.subst σ).rename Nat.succ := by
            rw [Expr.subst_rename,Expr.rename_subst]
            rfl
      exact tt.retarget (he.symm ▸ tt.typing) (by rw [he]; exact .refl _)

end StoredSubstitution

/-- Capture-avoiding substitution grafts the given trees at variables. It
retains core choices and recurses through the annotation at each binder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCoreFirstAttempt/Variant423c0f2dae5c7f44d059216ce008df22e8d2822cc029bab11381146cf102d750.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCoreFirstAttempt/Variant423c0f2dae5c7f44d059216ce008df22e8d2822cc029bab11381146cf102d750.lean#L1745).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f06d5c7772a9e40940e303f0f187c184a751737a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
