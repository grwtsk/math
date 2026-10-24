# wfImp_alterₘ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b35e589640be1153e2c0deac9541e0bded402d0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 846,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8c7daee-05a0-40ec-d69d-d8da6f591542",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1d1cf6a-8a1e-0452-b97e-737bb68926d5",
  "kind": "theorem",
  "lexical_name": "wfImp_alterₘ",
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
  "slug": "wfimp-alter--3ab9e4d062ccce37a50f2a56",
  "source": {
    "blob": "b35e589640be1153e2c0deac9541e0bded402d0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 870,
    "line": 846,
    "path": "GRWTSK/Topology/GeneralTopology/WF/Variantfc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ab9e4d062ccce37a50f2a5627e12d3d0856485c0c7ffc105d08ae7899e9a4ed",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WF/Variantfc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1d1cf6a-8a1e-0452-b97e-737bb68926d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 846–870.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wfImp_alterₘ [BEq α] [EquivBEq α] [Hashable α] [LawfulHashable α] {m : Raw₀ α (fun _ => β)}
    (h : Raw.WFImp m.1) {a : α} {f : Option β → Option β} : Raw.WFImp (Const.alterₘ m a f).1 where
  buckets_hash_self := isHashSelf_alterₘ m h a f
  distinct := DistinctKeys.perm (toListModel_alterₘ h) h.distinct.constAlterKey
  size_eq := by
    rw [← Perm.length_eq (toListModel_alterₘ h).symm, alterₘ]
    split
    next h₁ =>
      rw [containsₘ_eq_containsKey h] at h₁
      simp only [Const.length_alterKey, h.size_eq, dif_pos h₁]
      rw [containsₘ_eq_containsKey (by apply wfImp_updateBucket_alter h)]
      simp only [buckets_withComputedSize]
      simp only [containsKey_of_perm <| toListModel_updateBucket_alter h]
      rw [← getValue?_eq_some_getValue h₁]
      conv => lhs; congr; rw [Const.containsKey_alterKey_self h.distinct]
    next h₁ =>
      rw [containsₘ_eq_containsKey h] at h₁
      rw [Const.alterKey]
      rw [getValue?_eq_none.mpr <| Bool.not_eq_true _ ▸ h₁]
      split
      next heq =>
        rw [heq, h.size_eq, length_eraseKey, if_neg h₁]
      next heq =>
        rw [heq, size_expandIfNecessary, consₘ, length_insertEntry, if_neg h₁, h.size_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WF/Variantfc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WF/Variantfc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean#L846).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b35e589640be1153e2c0deac9541e0bded402d0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
