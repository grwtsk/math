# sublist_eq_map_getElem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eda3fecb5bd4a13b04b9f4df0c0e782b9a83c31d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38440135c57e39205a4ab4e240122b97f0bd08b507583f9ef63493b045c3c40c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b199407-5264-f0e8-b80e-24fd2b487f59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbf0b51b-c579-0d42-e2d0-0ed58079ef67",
  "kind": "theorem",
  "lexical_name": "sublist_eq_map_getElem",
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
  "slug": "sublist-eq-map-getelem--9ea02d22cd25c2d4a305cd27",
  "source": {
    "blob": "eda3fecb5bd4a13b04b9f4df0c0e782b9a83c31d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant38440135c57e39205a4ab4e240122b97f0bd08b507583f9ef63493b045c3c40c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ea02d22cd25c2d4a305cd2752750911a7b328c0d45cc53fca5cdc257cdee513",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant38440135c57e39205a4ab4e240122b97f0bd08b507583f9ef63493b045c3c40c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbf0b51b-c579-0d42-e2d0-0ed58079ef67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sublist_eq_map_getElem {l l' : List α} (h : l' <+ l) : ∃ is : List (Fin l.length),
    l' = is.map (l[·]) ∧ is.Pairwise (· < ·) := by
  induction h with
  | slnil => exact ⟨[], by simp⟩
  | cons _ _ IH =>
    let ⟨is, IH⟩ := IH
    refine ⟨is.map (·.succ), ?_⟩
    set_option backward.isDefEq.respectTransparency false in
    simpa [Function.comp_def, pairwise_map]
  | cons_cons _ _ IH =>
    rcases IH with ⟨is,IH⟩
    refine ⟨⟨0, by simp [Nat.zero_lt_succ]⟩ :: is.map (·.succ), ?_⟩
    set_option backward.isDefEq.respectTransparency false in
    simp [Function.comp_def, pairwise_map, IH, ← get_eq_getElem, get_cons_zero, get_cons_succ']

set_option linter.listVariables false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant38440135c57e39205a4ab4e240122b97f0bd08b507583f9ef63493b045c3c40c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant38440135c57e39205a4ab4e240122b97f0bd08b507583f9ef63493b045c3c40c.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eda3fecb5bd4a13b04b9f4df0c0e782b9a83c31d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
