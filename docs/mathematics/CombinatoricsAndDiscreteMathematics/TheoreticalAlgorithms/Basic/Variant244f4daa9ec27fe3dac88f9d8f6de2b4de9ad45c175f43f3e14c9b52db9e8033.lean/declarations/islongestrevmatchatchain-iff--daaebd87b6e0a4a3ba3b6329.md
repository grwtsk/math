# isLongestRevMatchAtChain_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6a131e2-cd2c-7268-7e2a-1b85924bf8f9",
  "kind": "theorem",
  "lexical_name": "isLongestRevMatchAtChain_iff",
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
  "slug": "islongestrevmatchatchain-iff--daaebd87b6e0a4a3ba3b6329",
  "source": {
    "blob": "048ea0d07c008ec637083e66b3513b0cfdb197a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant244f4daa9ec27fe3dac88f9d8f6de2b4de9ad45c175f43f3e14c9b52db9e8033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:daaebd87b6e0a4a3ba3b6329506f3ec6068e039b061ad8c771e3f3a3bed71719",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant244f4daa9ec27fe3dac88f9d8f6de2b4de9ad45c175f43f3e14c9b52db9e8033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6a131e2-cd2c-7268-7e2a-1b85924bf8f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLongestRevMatchAtChain_iff {pat s : Slice} {pos₁ pos₂ : s.Pos} :
    IsLongestRevMatchAtChain pat pos₁ pos₂ ↔
      ∃ h n, (s.slice pos₁ pos₂ h).copy = String.join (List.replicate n pat.copy) := by
  refine ⟨fun h => ⟨h.le, ?_⟩, fun ⟨h, n, h'⟩ => ?_⟩
  · induction h with
    | nil => simpa using ⟨0, by simp⟩
    | cons p₂ p₃ h₁ h₂ ih =>
      rw [isLongestRevMatchAt_iff] at h₂
      obtain ⟨n, ih⟩ := ih
      obtain ⟨h₀, h₂⟩ := h₂
      have : (s.slice pos₁ p₃ (Std.le_trans h₁.le h₀)).copy = (s.slice pos₁ p₂ h₁.le).copy ++ (s.slice p₂ p₃ h₀).copy := by
        simp [(Slice.Pos.slice p₂ _ _ (IsLongestRevMatchAtChain.le ‹_›) h₀).splits.eq_append]
      refine ⟨n + 1, ?_⟩
      rw [this, h₂, ih]
      simp [← List.replicate_append_replicate]
  · induction n generalizing pos₁ pos₂ with
    | zero => simp_all
    | succ n ih =>
      have h'' : (s.slice pos₁ pos₂ h).copy = String.join (List.replicate n pat.copy) ++ pat.copy := by
        rw [h', List.replicate_succ', String.join_append]; simp
      refine .cons _ (Pos.ofSlice (Pos.ofEqAppend h'')) _ (ih ?_ Pos.le_ofSlice ?_) ?_
      · simpa [sliceTo_slice ▸ (Pos.splits_ofEqAppend h'').copy_sliceTo_eq] using ⟨n, rfl⟩
      · simpa using (Pos.splits_ofEqAppend h'').copy_sliceTo_eq
      · simpa [isLongestRevMatchAt_iff] using (Pos.splits_ofEqAppend h'').copy_sliceFrom_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant244f4daa9ec27fe3dac88f9d8f6de2b4de9ad45c175f43f3e14c9b52db9e8033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant244f4daa9ec27fe3dac88f9d8f6de2b4de9ad45c175f43f3e14c9b52db9e8033.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `048ea0d07c008ec637083e66b3513b0cfdb197a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
