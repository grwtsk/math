# single_assigned

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c94db8f-0e8c-6df0-774c-64d30d608634",
  "kind": "theorem",
  "lexical_name": "single_assigned",
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
  "slug": "single-assigned--aae55d61efb4f54cbefcc519",
  "source": {
    "blob": "8d364e9c3ed17618824ff839edb851a0b5ac042b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 11745,
    "line": 11708,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aae55d61efb4f54cbefcc519379ef0b59e281cbe78c8199ad4d8ff9719387608",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c94db8f-0e8c-6df0-774c-64d30d608634`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11708–11745.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem single_assigned {Γ : List (Expr S)} {n D : Expr S} (t : TypingTree P Γ n D)
    (e : Environment (hw := hw) Ω C hno Γ) :
    (e.cons (ContextTower.HasType.subst t.typing e.typed) (preEvaluate Ω C hno t e).parameter
      (preEvaluate Ω C hno t e).parameter_fits).Assigned e (TypingTree.StoredSubstitution.single t) := by
  constructor
  · exact (Expr.comp_single n e.images).symm
  · intro i A hi
    cases i with
    | zero =>
        have he : A = D.rename Nat.succ := by cases hi; rfl
        have he' : A.subst (Expr.single n) = D := by rw [he,Expr.subst_lift_single]
        exact preEvaluate_retarget_parameter Ω C hno t (he'.symm ▸ t.typing)
          (by rw [he']; exact .refl _) e
    | succ i =>
        let hex : ∃ B, Lookup Γ i B ∧ A = B.rename Nat.succ := by
          cases hi with | succ _ hi => exact ⟨_,hi,rfl⟩
        have he : A.subst (Expr.single n) = hex.choose := by
          exact (congrArg (Expr.subst (Expr.single n)) hex.choose_spec.2).trans
            (Expr.subst_lift_single hex.choose n)
        exact (PreResult.lookup_parameter (he.symm ▸ HasType.lookup t.typing.valid hex.choose_spec.1)
          hex.choose_spec.1 (by rw [he]; exact .refl _) e).symm
end ObservationValues
end PureTypeSystem

end OAI

/- Source module: OAI.Computability.TypeSystem.ObservationReduction -/

namespace OAI

namespace PureTypeSystem.ObservationValues
universe u
open Classical
variable {S : Type u} {P : Specification S} (Ω : ContextTower P) [Fintype S]
variable (C : Set (Set S)) {hw : SystemWeaklyNormalizing P} (hno : ¬ ForbiddenConfiguration P C)

namespace Value
variable {Ω C hno}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean#L11708).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d364e9c3ed17618824ff839edb851a0b5ac042b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
