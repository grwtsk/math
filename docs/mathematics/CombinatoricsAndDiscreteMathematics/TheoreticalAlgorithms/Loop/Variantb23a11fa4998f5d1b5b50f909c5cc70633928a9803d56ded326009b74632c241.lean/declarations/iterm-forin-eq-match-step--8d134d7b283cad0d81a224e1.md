# IterM.forIn'_eq_match_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f88ee05-b4b7-becc-cab5-2e3d5a2c0eb6",
  "kind": "theorem",
  "lexical_name": "IterM.forIn'_eq_match_step",
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
  "slug": "iterm-forin-eq-match-step--8d134d7b283cad0d81a224e1",
  "source": {
    "blob": "ba675e864bac0a4b785d9691916e2a16f9f142b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 194,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variantb23a11fa4998f5d1b5b50f909c5cc70633928a9803d56ded326009b74632c241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d134d7b283cad0d81a224e1264d50dbc9e6f27d3b8549b2ab73e9e21109e833",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variantb23a11fa4998f5d1b5b50f909c5cc70633928a9803d56ded326009b74632c241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f88ee05-b4b7-becc-cab5-2e3d5a2c0eb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.forIn'_eq_match_step {α β : Type w} {m : Type w → Type w'} [Iterator α m β]
    [Finite α m] {n : Type w → Type w''} [Monad m] [Monad n] [LawfulMonad n]
    [IteratorLoop α m n] [LawfulIteratorLoop α m n]
    [MonadLiftT m n] [LawfulMonadLiftT m n] {γ : Type w} {it : IterM (α := α) m β} {init : γ}
    {f : (out : β) → _ → γ → n (ForInStep γ)} :
    letI : ForIn' n (IterM (α := α) m β) β _ := IterM.instForIn'
    ForIn'.forIn' it init f = (do
      match (← it.step).inflate with
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
  rw [IterM.forIn'_eq, DefaultConsumers.forIn'_eq_match_step]
  · apply bind_congr; intro step
    cases step.inflate using PlausibleIterStep.casesOn
    · simp only [bind_assoc]
      apply bind_congr
      intro forInStep
      cases forInStep
      · simp
      · simp only [forIn'_eq, pure_bind]
        exact DefaultConsumers.forIn'_eq_forIn' (α := α) (m := m) (n := n) _
          IteratorLoop.wellFounded_of_finite (by simp)
    · simp only [forIn'_eq]
      exact DefaultConsumers.forIn'_eq_forIn' (α := α) (m := m) (n := n) _
          IteratorLoop.wellFounded_of_finite (by simp)
    · simp
  · exact IteratorLoop.wellFounded_of_finite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variantb23a11fa4998f5d1b5b50f909c5cc70633928a9803d56ded326009b74632c241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variantb23a11fa4998f5d1b5b50f909c5cc70633928a9803d56ded326009b74632c241.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba675e864bac0a4b785d9691916e2a16f9f142b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
