# winningStrategy_play_one_of_edge_N

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:893691e4-2d4c-8723-c5be-bb6fb5d06ea5",
  "kind": "lemma",
  "lexical_name": "winningStrategy_play_one_of_edge_N",
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
  "slug": "winningstrategy-play-one-of-edge-n--cbca2efc93cca5c4875be31d",
  "source": {
    "blob": "b28fa94005ef9943d584f612403380c8a94c743a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 987,
    "line": 974,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant1b52675b639ef9893700831808ca233b626f70c00a15753923f2dff269a026ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbca2efc93cca5c4875be31df362e86f4e91fa20322bfcd846a30854f5f9b8f7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant1b52675b639ef9893700831808ca233b626f70c00a15753923f2dff269a026ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:893691e4-2d4c-8723-c5be-bb6fb5d06ea5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 974–987.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma winningStrategy_play_one_of_edge_N (hN : 2 ≤ N) {m : MonsterData N}
    (hc₁N : (m (row1 hN) : ℕ) = N) : (winningStrategy hN).play m 3 ⟨1, by norm_num⟩ =
      ((winningStrategy hN).play m.reflect 3 ⟨1, by norm_num⟩).map Cell.reflect := by
  have hc₁0 : m (row1 hN) ≠ 0 := by
    rw [← Fin.val_ne_iff, hc₁N, Fin.val_zero]
    omega
  have hc₁r0 : m.reflect (row1 hN) = 0 := by
    simp only [MonsterData.reflect, Function.Embedding.coeFn_mk, Function.comp_apply,
      ← Fin.rev_last, Fin.rev_inj]
    rw [Fin.ext_iff]
    exact hc₁N
  simp_rw [winningStrategy_play_one hN, path1, path1OfEdgeN, dif_neg hc₁0, if_pos hc₁N,
    dif_pos hc₁r0, ← Path.firstMonster_reflect, MonsterData.reflect_reflect]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant1b52675b639ef9893700831808ca233b626f70c00a15753923f2dff269a026ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant1b52675b639ef9893700831808ca233b626f70c00a15753923f2dff269a026ff.lean#L974).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b28fa94005ef9943d584f612403380c8a94c743a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
