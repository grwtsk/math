# size_eq_if_roc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc976d5553f3aa67ec79cec0d3bce3678eff4f28",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2842,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69454bcb5d2eecfd1d211d3033942ffbc895954a52df62224e1b0927d57a87b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4115cc60-9d4a-f4bb-54eb-d573d2649141",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bda2abbb-6997-ad57-6d3b-1d9e54abc8dd",
  "kind": "theorem",
  "lexical_name": "size_eq_if_roc",
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
  "slug": "size-eq-if-roc--a21bd79fb3e54f89b03d1612",
  "source": {
    "blob": "dc976d5553f3aa67ec79cec0d3bce3678eff4f28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2862,
    "line": 2842,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant69454bcb5d2eecfd1d211d3033942ffbc895954a52df62224e1b0927d57a87b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a21bd79fb3e54f89b03d16129b5a9aa6b2717048cc196f2cc7493a8731252f1c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant69454bcb5d2eecfd1d211d3033942ffbc895954a52df62224e1b0927d57a87b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bda2abbb-6997-ad57-6d3b-1d9e54abc8dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2842–2862.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem size_eq_if_roc [LE α] [DecidableLE α] [UpwardEnumerable α]
    [Rxc.HasSize α] [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLE α]
    [Rxc.IsAlwaysFinite α] [Rxc.LawfulHasSize α] :
    r.size = if r.lower ≤ r.upper then (r.lower<...=r.upper).size + 1 else 0 := by
  rw [Rcc.size]
  obtain ⟨l, u⟩ := r
  induction h : Rxc.HasSize.size l u generalizing l
  · simpa [Rxc.size_eq_zero_iff_not_le] using h
  · rename_i n ih
    split <;> rename_i hle
    · match hl' : succ? l with
      | none =>
        rw [← h, Rxc.LawfulHasSize.size_eq_one_of_succ?_eq_none _ _ hle hl', Roc.size]
        simp [hl']
      | some l' =>
        rw [Rxc.LawfulHasSize.size_eq_succ_of_succ?_eq_some _ _ _ hle hl',
          Nat.add_right_cancel_iff] at h
        rw [Roc.size, ih _ h, Nat.add_right_cancel_iff]
        simp only [hl', h, ih l' h]
    · simp [← Rxc.size_pos_iff_le, h] at hle

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant69454bcb5d2eecfd1d211d3033942ffbc895954a52df62224e1b0927d57a87b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant69454bcb5d2eecfd1d211d3033942ffbc895954a52df62224e1b0927d57a87b8.lean#L2842).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc976d5553f3aa67ec79cec0d3bce3678eff4f28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
