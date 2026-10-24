# scanrM.loop_toList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4509d5d2cc9a6e96c20019a17dcf552f7c5f97a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/761bee95d688945dd7288065aee06bfa1e0a3b91852fdcb6e17adf62322ff871.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e8d0d0b-d23f-eafe-0ac3-6357eb88331d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9cd518f8-84e6-5074-9728-d52c1e27e71b",
  "kind": "theorem",
  "lexical_name": "scanrM.loop_toList",
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
  "slug": "scanrm-loop-tolist--53ed6a857d381ceb4cb6596d",
  "source": {
    "blob": "4509d5d2cc9a6e96c20019a17dcf552f7c5f97a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 49,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant761bee95d688945dd7288065aee06bfa1e0a3b91852fdcb6e17adf62322ff871.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53ed6a857d381ceb4cb6596df87ee287e01dacdc7080b419ed035b3201e9a3b2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant761bee95d688945dd7288065aee06bfa1e0a3b91852fdcb6e17adf62322ff871.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cd518f8-84e6-5074-9728-d52c1e27e71b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scanrM.loop_toList [Monad m] [LawfulMonad m] {f : α → β → m β}
    {start : Nat} {h : start ≤ as.size} :
    Array.toList <$> scanrM.loop f init as start stop h acc =
      return (← as.toList.drop stop
                  |>.take (start - stop)
                  |>.scanrM f init)
                ++ acc.toList.reverse := by
  induction h_ind : start - stop generalizing stop acc init start with
  | zero =>
    simp [scanrM.loop, show ¬ stop < start by omega]
  | succ n ih =>
    unfold scanrM.loop
    simp_all only [bind_pure_comp, show stop < start by omega, ↓reduceDIte]
    simp only [map_bind]
    conv =>
      lhs
      arg 2
      ext a
      rw [ih (start := start - 1) (stop := stop) (acc := acc.push init) (by omega)]
    simp only [List.scanrM_eq_scanlM_reverse]
    have h_take := List.take_succ_drop (l := as.toList) (n := n) (stop := stop) (by simp; omega)
    simp only [h_take, List.reverse_append, List.reverse_singleton, List.singleton_append,
      List.scanlM_cons, map_bind, show stop + n = start - 1 by omega]
    apply bind_congr
    simp_all

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant761bee95d688945dd7288065aee06bfa1e0a3b91852fdcb6e17adf62322ff871.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant761bee95d688945dd7288065aee06bfa1e0a3b91852fdcb6e17adf62322ff871.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4509d5d2cc9a6e96c20019a17dcf552f7c5f97a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
