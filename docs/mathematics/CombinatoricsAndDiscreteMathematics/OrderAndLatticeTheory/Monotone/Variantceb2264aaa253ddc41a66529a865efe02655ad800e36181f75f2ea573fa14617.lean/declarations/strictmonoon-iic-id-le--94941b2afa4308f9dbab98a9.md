# StrictMonoOn.Iic_id_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb703345783e32c01bc8260756ea87a6753b3e53",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0c90e1e-3e92-cb04-6913-ec70b631b9fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a3c7a15-6f71-ecf9-10c5-dc981c50ecdd",
  "kind": "theorem",
  "lexical_name": "StrictMonoOn.Iic_id_le",
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
  "slug": "strictmonoon-iic-id-le--94941b2afa4308f9dbab98a9",
  "source": {
    "blob": "bb703345783e32c01bc8260756ea87a6753b3e53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 192,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94941b2afa4308f9dbab98a9eb034fa56b0ba107a4c4e001ee1846782fb0acb4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a3c7a15-6f71-ecf9-10c5-dc981c50ecdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StrictMonoOn.Iic_id_le [SuccOrder α] [IsSuccArchimedean α] [OrderBot α] {n : α} {φ : α → α}
    (hφ : StrictMonoOn φ (Set.Iic n)) : ∀ m ≤ n, m ≤ φ m := by
  revert hφ
  refine
    Succ.rec_bot (fun n => StrictMonoOn φ (Set.Iic n) → ∀ m ≤ n, m ≤ φ m)
      (fun _ _ hm => hm.trans bot_le) ?_ _
  rintro k ih hφ m hm
  by_cases hk : IsMax k
  · rw [succ_eq_iff_isMax.2 hk] at hm
    exact ih (hφ.mono <| Iic_subset_Iic.2 (le_succ _)) _ hm
  obtain rfl | h := le_succ_iff_eq_or_le.1 hm
  · specialize ih (StrictMonoOn.mono hφ fun x hx => le_trans hx (le_succ _)) k le_rfl
    refine le_trans (succ_mono ih) (succ_le_of_lt (hφ (le_succ _) le_rfl ?_))
    rw [lt_succ_iff_eq_or_lt_of_not_isMax hk]
    exact Or.inl rfl
  · exact ih (StrictMonoOn.mono hφ fun x hx => le_trans hx (le_succ _)) _ h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantceb2264aaa253ddc41a66529a865efe02655ad800e36181f75f2ea573fa14617.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb703345783e32c01bc8260756ea87a6753b3e53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
