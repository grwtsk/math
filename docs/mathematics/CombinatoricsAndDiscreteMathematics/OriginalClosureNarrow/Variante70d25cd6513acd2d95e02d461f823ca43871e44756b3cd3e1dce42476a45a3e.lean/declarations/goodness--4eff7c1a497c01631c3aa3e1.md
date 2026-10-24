# goodness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aff3e77c091ca391215a4873f790ff03df5eeca070429166764637d7a3be2088",
  "kind": "def",
  "lexical_name": "goodness",
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
  "slug": "goodness--4eff7c1a497c01631c3aa3e1",
  "source": {
    "blob": "8d364e9c3ed17618824ff839edb851a0b5ac042b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 10394,
    "line": 10374,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4eff7c1a497c01631c3aa3e10bc560a7b78ed10f196457f0b953e4c2a8940765",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aff3e77c091ca391215a4873f790ff03df5eeca070429166764637d7a3be2088`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10374–10394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def goodness {Γ : List (Expr S)} {M T : Expr S}
    (t : TypingTree P Γ M T) (σ : Nat → Expr S) : Prop × Prop :=
  match t with
  | .var _ _ _ => (True,baseGood Ω C M T σ True)
  | .sort _ _ _ => (True,True)
  | @TypingTree.product _ _ _ D E _ _ c _ _ d e _ _ =>
    let g := (Ω.profile (D.subst σ) ∈ C → (goodness d σ).2) ∧
      ∀ n, Ω.HasType n (D.subst σ) → Ω.profile (E.subst (Expr.consSub n σ)) ∈ C →
        (goodness e (Expr.consSub n σ)).2
    ((({c} : Set S) ∈ C ∧ Ω.profile (Expr.pi D E |>.subst σ) ∈ C) → g,
      Ω.profile (Expr.pi D E |>.subst σ) ∈ C → g)
  | @TypingTree.abstraction _ _ _ D m E _ _ _ _ _ b _ _ =>
    let g := ∀ n, Ω.HasType n (D.subst σ) → ActiveLayer P C (Ω.profile (E.subst (Expr.consSub n σ))) →
      (goodness b (Expr.consSub n σ)).1
    (g,baseGood Ω C M T σ g)
  | @TypingTree.application _ _ _ g n D E _ _ f a _ =>
    let v := if ActiveLayer P C (Ω.profile (Expr.pi D E |>.subst σ)) then
      (goodness f σ).1 ∧ (ActiveLayer P C (Ω.profile (D.subst σ)) → (goodness a σ).1)
      else Neutral (.app g n)
    (v,baseGood Ω C M T σ v)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean#L10374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d364e9c3ed17618824ff839edb851a0b5ac042b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
