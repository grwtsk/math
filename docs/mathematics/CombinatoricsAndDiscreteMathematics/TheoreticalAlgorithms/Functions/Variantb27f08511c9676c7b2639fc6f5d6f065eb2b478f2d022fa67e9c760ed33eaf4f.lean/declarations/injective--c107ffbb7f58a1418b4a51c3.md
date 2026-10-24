# injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b58b3592-97d8-9263-c9db-7e65ce11f074",
  "kind": "theorem",
  "lexical_name": "injective",
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
  "slug": "injective--c107ffbb7f58a1418b4a51c3",
  "source": {
    "blob": "68dd0fcf4d8b0cd7a3bf549bebd2b223c625b750",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 357,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantb27f08511c9676c7b2639fc6f5d6f065eb2b478f2d022fa67e9c760ed33eaf4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c107ffbb7f58a1418b4a51c3a598871d37c0521f116f22a88f75a89c107e6da1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantb27f08511c9676c7b2639fc6f5d6f065eb2b478f2d022fa67e9c760ed33eaf4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b58b3592-97d8-9263-c9db-7e65ce11f074`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem injective [DecidableEq α] (f : InjectiveFunction α) : Injective (apply f) := by
  obtain ⟨xs, hperm, hnodup⟩ := f
  generalize h₀ : List.map Sigma.fst xs = xs₀
  generalize h₁ : xs.map (@id ((Σ _ : α, α) → α) <| @Sigma.snd α fun _ : α => α) = xs₁
  dsimp [id] at h₁
  have hxs : xs = TotalFunction.List.toFinmap' (xs₀.zip xs₁) := by
    rw [← h₀, ← h₁, List.toFinmap']; clear h₀ h₁ xs₀ xs₁ hperm hnodup
    induction xs with
    | nil => simp only [List.zip_nil_right, List.map_nil]
    | cons xs_hd xs_tl xs_ih =>
      simp only [Sigma.eta, List.zip_cons_cons,
        List.map, List.cons_inj_right]
      exact xs_ih
  revert hperm hnodup
  rw [hxs]; intro hperm hnodup
  apply InjectiveFunction.applyId_injective
  · rwa [← h₀, hxs, hperm.nodup_iff]
  · rwa [← hxs, h₀, h₁] at hperm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantb27f08511c9676c7b2639fc6f5d6f065eb2b478f2d022fa67e9c760ed33eaf4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantb27f08511c9676c7b2639fc6f5d6f065eb2b478f2d022fa67e9c760ed33eaf4f.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68dd0fcf4d8b0cd7a3bf549bebd2b223c625b750` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
