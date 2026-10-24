# data_subst_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2859c6cb-f31f-cc88-b492-1821d77f562f",
  "kind": "theorem",
  "lexical_name": "data_subst_congr",
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
  "slug": "data-subst-congr--79e57c5f964f2a5746b70ac5",
  "source": {
    "blob": "485763032ad6a3b75cbf9cb4f97a27fc9327745e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 166,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variant1a3e891bdc9b124f89f71ab471bc6cb2e13fb3fde569e2c487c71509cbcd561f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79e57c5f964f2a5746b70ac5386f4762180cda09f2e5ebe6d73b0853df40a4a1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Wrappers/Variant1a3e891bdc9b124f89f71ab471bc6cb2e13fb3fde569e2c487c71509cbcd561f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2859c6cb-f31f-cc88-b492-1821d77f562f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem data_subst_congr {M : Expr S} {m : Mode} (h : WellModed γ M m)
    (hm : m = .data) (σ τ : Nat → Expr S)
    (he : ∀ n, γ n = .data → σ n = τ n) : M.subst σ = M.subst τ := by
  have hlift {γ : Nat → Mode} {σ τ : Nat → Expr S}
      (he : ∀ n, γ n = .data → σ n = τ n) (d : Mode) :
      ∀ n, modeCons d γ n = .data → Expr.liftSub σ n = Expr.liftSub τ n := by
    intro n hn
    cases n with
    | zero => rfl
    | succ n => exact congrArg (Expr.rename Nat.succ) (he n hn)
  induction h generalizing σ τ with
  | var n => exact he n hm
  | sort s => rfl
  | @app γ l f a hf ha ihf iha =>
      cases l with
      | dd => exact congrArg₂ (Expr.app .dd) (ihf rfl σ τ he) (iha rfl σ τ he)
      | dp => cases hm
      | pp => cases hm
  | @lam γ l A b hA hb ihA ihb =>
      cases l with
      | dd =>
          exact congrArg₂ (Expr.lam .dd) (ihA rfl σ τ he)
            (ihb rfl _ _ (hlift he .data))
      | dp => cases hm
      | pp => cases hm
  | @pi γ l A B hA hB ihA ihB =>
      exact congrArg₂ (Expr.pi l) (ihA rfl σ τ he) (ihB rfl _ _ (hlift he _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Wrappers/Variant1a3e891bdc9b124f89f71ab471bc6cb2e13fb3fde569e2c487c71509cbcd561f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variant1a3e891bdc9b124f89f71ab471bc6cb2e13fb3fde569e2c487c71509cbcd561f.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `485763032ad6a3b75cbf9cb4f97a27fc9327745e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
