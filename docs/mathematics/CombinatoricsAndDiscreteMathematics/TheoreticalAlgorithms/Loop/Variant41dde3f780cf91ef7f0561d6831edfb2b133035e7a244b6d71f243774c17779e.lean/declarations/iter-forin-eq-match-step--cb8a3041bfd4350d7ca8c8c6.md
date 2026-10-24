# Iter.forIn'_eq_match_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f445437-d2fa-baed-6ae1-964efb9758ac",
  "kind": "theorem",
  "lexical_name": "Iter.forIn'_eq_match_step",
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
  "slug": "iter-forin-eq-match-step--cb8a3041bfd4350d7ca8c8c6",
  "source": {
    "blob": "a554251c59f45781c3037de3033e14a5093aea5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variant41dde3f780cf91ef7f0561d6831edfb2b133035e7a244b6d71f243774c17779e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb8a3041bfd4350d7ca8c8c66e456df843365bbcb03b224f98f1cc64661bb21b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variant41dde3f780cf91ef7f0561d6831edfb2b133035e7a244b6d71f243774c17779e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f445437-d2fa-baed-6ae1-964efb9758ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.forIn'_eq_match_step {α β : Type w} [Iterator α Id β]
    [Finite α Id] {m : Type x → Type x''} [Monad m] [LawfulMonad m]
    [IteratorLoop α Id m] [LawfulIteratorLoop α Id m]
    {γ : Type x} {it : Iter (α := α) β} {init : γ}
    {f : (out : β) → _ → γ → m (ForInStep γ)} :
    letI : ForIn' m (Iter (α := α) β) β _ := Iter.instForIn'
    ForIn'.forIn' it init f = (do
      match it.step with
      | .yield it' out h =>
        match ← f out (.direct ⟨_, h⟩) init with
        | .yield c =>
          ForIn'.forIn' it' c
            fun out h'' acc => f out (.indirect ⟨_, rfl, h⟩ h'') acc
        | .done c => return c
      | .skip it' h =>
          ForIn'.forIn' it' init
            fun out h' acc => f out (.indirect ⟨_, rfl, h⟩ h') acc
      | .done _ => return init) := by
  simp only [forIn'_eq]
  rw [IterM.DefaultConsumers.forIn'_eq_match_step (fun _ _ _ => True)
    IteratorLoop.wellFounded_of_finite]
  simp only [Iter.step]
  cases it.toIterM.step.run.inflate using PlausibleIterStep.casesOn
  · simp only [IterM.Step.toPure_yield, PlausibleIterStep.yield, toIter_toIterM, toIterM_toIter,
      bind_assoc]
    apply bind_congr
    intro forInStep
    cases forInStep
    · simp
    · simp only [pure_bind]
      apply IterM.DefaultConsumers.forIn'_eq_forIn' (fun _ _ _ => True)
        IteratorLoop.wellFounded_of_finite
      · simp
  · simp only
    apply IterM.DefaultConsumers.forIn'_eq_forIn' (fun _ _ _ => True)
      IteratorLoop.wellFounded_of_finite
    · simp
  · simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variant41dde3f780cf91ef7f0561d6831edfb2b133035e7a244b6d71f243774c17779e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variant41dde3f780cf91ef7f0561d6831edfb2b133035e7a244b6d71f243774c17779e.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a554251c59f45781c3037de3033e14a5093aea5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
