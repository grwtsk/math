# size_eq_if_roc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:738f94d9-18fc-2d2d-3016-52b328b07ee3",
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
  "slug": "size-eq-if-roc--608ab3e98aa5e69ae68f3fb8",
  "source": {
    "blob": "282c6d363d234063da5da594aa260861655588ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2870,
    "line": 2850,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantccd6461bc052450a6600e1f03d36e305c5a462e93624deace42008cff76718cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:608ab3e98aa5e69ae68f3fb800b55b38e6d3f6bc270f581d4c563e382a38f060",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantccd6461bc052450a6600e1f03d36e305c5a462e93624deace42008cff76718cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:738f94d9-18fc-2d2d-3016-52b328b07ee3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2850–2870.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantccd6461bc052450a6600e1f03d36e305c5a462e93624deace42008cff76718cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantccd6461bc052450a6600e1f03d36e305c5a462e93624deace42008cff76718cd.lean#L2850).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `282c6d363d234063da5da594aa260861655588ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
