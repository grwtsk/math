# WF.out

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
      "line": 1219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2abe10d6-886e-eba6-c7db-b6a9971e16c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:101b37c8-f535-b635-15ca-8c333d2c2b75",
  "kind": "theorem",
  "lexical_name": "WF.out",
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
  "slug": "wf-out--54af472ec2564dfeb59b1e91",
  "source": {
    "blob": "b35e589640be1153e2c0deac9541e0bded402d0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1243,
    "line": 1219,
    "path": "GRWTSK/Topology/GeneralTopology/WF/Variantfc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54af472ec2564dfeb59b1e91448794b9c491d881ebc61aa198e14ad816f4d02f",
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

Occurrence: `result:101b37c8-f535-b635-15ca-8c333d2c2b75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1219–1243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem WF.out [BEq α] [Hashable α] [i₁ : EquivBEq α] [i₂ : LawfulHashable α] {m : Raw α β}
    (h : m.WF) : Raw.WFImp m := by
  induction h generalizing i₁ i₂ with
  | wf _ h => apply h
  | emptyWithCapacity₀ => exact Raw₀.wfImp_emptyWithCapacity
  | insert₀ _ h => exact Raw₀.wfImp_insert (by apply h)
  | containsThenInsert₀ _ h => exact Raw₀.wfImp_containsThenInsert (by apply h)
  | containsThenInsertIfNew₀ _ h => exact Raw₀.wfImp_containsThenInsertIfNew (by apply h)
  | erase₀ _ h => exact Raw₀.wfImp_erase (by apply h)
  | insertIfNew₀ _ h => exact Raw₀.wfImp_insertIfNew (by apply h)
  | getThenInsertIfNew?₀ _ h => exact Raw₀.wfImp_getThenInsertIfNew? (by apply h)
  | filter₀ _ h => exact Raw₀.wfImp_filter (by apply h)
  | constGetThenInsertIfNew?₀ _ h => exact Raw₀.Const.wfImp_getThenInsertIfNew? (by apply h)
  | modify₀ _ h => exact Raw₀.wfImp_modify (by apply h)
  | constModify₀ _ h => exact Raw₀.Const.wfImp_modify (by apply h)
  | alter₀ _ h => exact Raw₀.wfImp_alter (by apply h)
  | constAlter₀ _ h => exact Raw₀.Const.wfImp_alter (by apply h)
  | inter₀ _ _ h _  => exact Raw₀.wfImp_inter (by apply h)

end Raw

namespace Raw₀

/-! # `filterMapₘ` -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WF/Variantfc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WF/Variantfc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean#L1219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b35e589640be1153e2c0deac9541e0bded402d0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
