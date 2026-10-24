# SatisfiesM_mapM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7629f791c23a4dd8cca3f7810ed72cf193315b66",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab72a0af052641ca2853efcd14505553f493156f29ba3a16b3493523d4882e1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4208ce74-65ad-995d-979e-d68a5f09bf7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7954615-7127-5fb4-0711-36b89cf44b72",
  "kind": "theorem",
  "lexical_name": "SatisfiesM_mapM",
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
  "slug": "satisfiesm-mapm--0ba28f5c49d8db069ad76eaa",
  "source": {
    "blob": "7629f791c23a4dd8cca3f7810ed72cf193315b66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantab72a0af052641ca2853efcd14505553f493156f29ba3a16b3493523d4882e1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ba28f5c49d8db069ad76eaae050d9c90dcb837eb10b393b42ba382f1ca6d4df",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantab72a0af052641ca2853efcd14505553f493156f29ba3a16b3493523d4882e1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7954615-7127-5fb4-0711-36b89cf44b72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SatisfiesM_mapM [Monad m] [LawfulMonad m] {as : Array α} {f : α → m β}
    {motive : Nat → Prop} {p : Fin as.size → β → Prop} (h0 : motive 0)
    (hs : ∀ i, motive i.1 → SatisfiesM (p i · ∧ motive (i + 1)) (f as[i])) :
    SatisfiesM
      (fun arr => motive as.size ∧ ∃ eq : arr.size = as.size, ∀ i h, p ⟨i, h⟩ arr[i])
      (Array.mapM f as) := by
  rw [mapM_eq_foldlM]
  refine SatisfiesM_foldlM (m := m) (β := Array β)
    (motive := fun i arr => motive i ∧ arr.size = i ∧ ∀ i h2, p i (arr[i.1]'h2)) ?z ?s
    |>.imp fun ⟨h₁, eq, h₂⟩ => ⟨h₁, eq, fun _ _ => h₂ ..⟩
  · case z => exact ⟨h0, rfl, nofun⟩
  · case s =>
    intro ⟨i, hi⟩ arr ⟨ih₁, eq, ih₂⟩
    refine (hs _ ih₁).map fun ⟨h₁, h₂⟩ => ⟨h₂, by simp [eq], fun j hj => ?_⟩
    simp [getElem_push] at hj ⊢; split; {apply ih₂}
    cases j; cases (Nat.le_or_eq_of_le_succ hj).resolve_left ‹_›; cases eq; exact h₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantab72a0af052641ca2853efcd14505553f493156f29ba3a16b3493523d4882e1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantab72a0af052641ca2853efcd14505553f493156f29ba3a16b3493523d4882e1c.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7629f791c23a4dd8cca3f7810ed72cf193315b66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
