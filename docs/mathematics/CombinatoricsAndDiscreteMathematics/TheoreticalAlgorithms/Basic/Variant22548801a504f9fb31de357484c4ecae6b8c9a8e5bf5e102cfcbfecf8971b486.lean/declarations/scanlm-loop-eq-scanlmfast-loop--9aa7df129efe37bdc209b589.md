# scanlM_loop_eq_scanlMFast_loop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "553e88f7fa823f626accbc9e21111c6feb9d8de7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/22548801a504f9fb31de357484c4ecae6b8c9a8e5bf5e102cfcbfecf8971b486.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f4036b9-b9af-581f-3c0e-2c5fa395d97c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af8c374a-85f2-f1cb-85a4-61249d85c1d7",
  "kind": "theorem",
  "lexical_name": "scanlM_loop_eq_scanlMFast_loop",
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
  "slug": "scanlm-loop-eq-scanlmfast-loop--9aa7df129efe37bdc209b589",
  "source": {
    "blob": "553e88f7fa823f626accbc9e21111c6feb9d8de7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 217,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant22548801a504f9fb31de357484c4ecae6b8c9a8e5bf5e102cfcbfecf8971b486.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9aa7df129efe37bdc209b589e9582f76722d5aeebca30c9db2f0576aee34f0d0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant22548801a504f9fb31de357484c4ecae6b8c9a8e5bf5e102cfcbfecf8971b486.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af8c374a-85f2-f1cb-85a4-61249d85c1d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem scanlM_loop_eq_scanlMFast_loop [Monad m]
    {f : β → α → m β} {init : β} {as : Array α} {h_size : as.SizeFitsUSize}
    {start stop : Nat} {h_start : start ≤ as.size}
    {h_stop : stop ≤ as.size} {acc : Array β} :
    scanlM.loop f init as start stop h_stop acc
      = scanlMFast.loop f init as (USize.ofNat start) (USize.ofNat stop)
      (by rw [USize.toNat_ofNat_of_le_of_lt h_size h_stop]; exact h_stop) acc := by
  generalize h_n : stop - start = n
  induction n using Nat.strongRecOn generalizing start acc init
  rename_i n ih
  rw [scanlM.loop, scanlMFast.loop]
  have h_stop_usize := USize.toNat_ofNat_of_le_of_lt h_size h_stop
  have h_start_usize := USize.toNat_ofNat_of_le_of_lt h_size h_start
  split
  case isTrue h_lt =>
    simp_all only [USize.toNat_ofNat', ↓reduceDIte, uget,
      show USize.ofNat start < USize.ofNat stop by simp_all [USize.lt_iff_toNat_lt]]
    apply bind_congr
    intro next
    have h_start_succ : USize.ofNat start + 1 = USize.ofNat (start + 1) := by
      simp_all only [← USize.toNat_inj, USize.toNat_add]
      grind only [USize.size_eq, USize.toNat_ofNat_of_le_of_lt]
    rw [h_start_succ]
    apply ih (stop - (start + 1)) <;> omega
  case isFalse h_nlt => grind [USize.lt_iff_toNat_lt]

-- this theorem establishes that given the (unprovable) assumption that as.size < USize.size,
-- the scanlMFast and scanlM are equivalent
-- TODO (cmlsharp): prove an analogous theorem for scanrM
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant22548801a504f9fb31de357484c4ecae6b8c9a8e5bf5e102cfcbfecf8971b486.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant22548801a504f9fb31de357484c4ecae6b8c9a8e5bf5e102cfcbfecf8971b486.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `553e88f7fa823f626accbc9e21111c6feb9d8de7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
