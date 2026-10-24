# winningStrategy_play_one_of_edge_N

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9034f450ecae0936b1f28e8c38199e491c1a891a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 970,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7c6ec91-f559-41a4-8617-335237fd68a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2654780f-62c2-1a3b-3268-290007434c7b",
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
  "slug": "winningstrategy-play-one-of-edge-n--7b695ea5eda2965b24ebba41",
  "source": {
    "blob": "9034f450ecae0936b1f28e8c38199e491c1a891a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 984,
    "line": 970,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b695ea5eda2965b24ebba4106419cb387a7966c59623136034096d3e464d906",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2654780f-62c2-1a3b-3268-290007434c7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 970–984.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma winningStrategy_play_one_of_edge_N (hN : 2 ≤ N) {m : MonsterData N}
    (hc₁N : (m (row1 hN) : ℕ) = N) : (winningStrategy hN).play m 3 ⟨1, by simp⟩ =
      ((winningStrategy hN).play m.reflect 3 ⟨1, by simp⟩).map Cell.reflect := by
  have hc₁0 : m (row1 hN) ≠ 0 := by
    rw [← Fin.val_ne_iff, hc₁N, Fin.val_zero]
    lia
  have hc₁r0 : m.reflect (row1 hN) = 0 := by
    simp only [MonsterData.reflect, Function.Embedding.coeFn_mk, Function.comp_apply,
      ← Fin.rev_last, Fin.rev_inj]
    rw [Fin.ext_iff]
    exact hc₁N
  simp_rw [winningStrategy_play_one hN, path1, path1OfEdgeN, dite_eq_right hc₁0, ite_eq_left hc₁N,
    dite_eq_left hc₁r0, ← Path.firstMonster_reflect, MonsterData.reflect_reflect]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean#L970).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9034f450ecae0936b1f28e8c38199e491c1a891a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
