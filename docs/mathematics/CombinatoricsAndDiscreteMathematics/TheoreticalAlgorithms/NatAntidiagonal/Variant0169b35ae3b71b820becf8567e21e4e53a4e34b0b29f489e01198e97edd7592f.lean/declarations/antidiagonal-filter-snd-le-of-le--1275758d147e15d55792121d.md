# antidiagonal_filter_snd_le_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86bc9612-e7ed-9c6a-e8f8-a575b24cfc52",
  "kind": "lemma",
  "lexical_name": "antidiagonal_filter_snd_le_of_le",
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
  "slug": "antidiagonal-filter-snd-le-of-le--1275758d147e15d55792121d",
  "source": {
    "blob": "49c25e7aeb731d0112e98e43c96cb0fdbaba6b84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 154,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0169b35ae3b71b820becf8567e21e4e53a4e34b0b29f489e01198e97edd7592f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1275758d147e15d55792121d1b954c21f7529a4471977af0df875f219d7472ac",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0169b35ae3b71b820becf8567e21e4e53a4e34b0b29f489e01198e97edd7592f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86bc9612-e7ed-9c6a-e8f8-a575b24cfc52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma antidiagonal_filter_snd_le_of_le {n k : ℕ} (h : k ≤ n) :
    (antidiagonal n).filter (fun a ↦ a.snd ≤ k) = (antidiagonal k).map
      (Embedding.prodMap ⟨_, add_left_injective (n - k)⟩ (Embedding.refl ℕ)) := by
  ext ⟨i, j⟩
  suffices : i + j = n ∧ j ≤ k ↔ ∃ a, a + j = k ∧ a + (n - k) = i
  · simpa
  refine' ⟨fun hi ↦ ⟨k - j, tsub_add_cancel_of_le hi.2, _⟩, _⟩
  · rw [add_comm, tsub_add_eq_add_tsub h, ← hi.1, add_assoc, Nat.add_sub_of_le hi.2,
      add_tsub_cancel_right]
  · rintro ⟨l, hl, rfl⟩
    refine' ⟨_, hl ▸ Nat.le_add_left j l⟩
    rw [add_assoc, add_comm, add_assoc, add_comm j l, hl]
    exact Nat.sub_add_cancel h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0169b35ae3b71b820becf8567e21e4e53a4e34b0b29f489e01198e97edd7592f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0169b35ae3b71b820becf8567e21e4e53a4e34b0b29f489e01198e97edd7592f.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49c25e7aeb731d0112e98e43c96cb0fdbaba6b84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
