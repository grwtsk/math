# map_getElem_sublist

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
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38440135c57e39205a4ab4e240122b97f0bd08b507583f9ef63493b045c3c40c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8eb93481-c637-6ac1-3981-d70534e596f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e1e80a1-5614-cb7e-9976-78d044e1015a",
  "kind": "theorem",
  "lexical_name": "map_getElem_sublist",
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
  "slug": "map-getelem-sublist--fadb9df8f7df90f4b668f8dd",
  "source": {
    "blob": "eda3fecb5bd4a13b04b9f4df0c0e782b9a83c31d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 32,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant38440135c57e39205a4ab4e240122b97f0bd08b507583f9ef63493b045c3c40c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fadb9df8f7df90f4b668f8dd99b004dab3b2985ed3d8224bdfb974a4c7da844c",
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

Occurrence: `result:6e1e80a1-5614-cb7e-9976-78d044e1015a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_getElem_sublist {l : List α} {is : List (Fin l.length)} (h : is.Pairwise (· < ·)) :
    is.map (l[·]) <+ l := by
  suffices ∀ j l', l' = l.drop j → (∀ i ∈ is, j ≤ i) → map (l[·]) is <+ l'
    from this 0 l (by simp) (by simp)
  rintro j l' rfl his
  induction is generalizing j with
  | nil => simp
  | cons hd tl IH =>
    simp only [Fin.getElem_fin, map_cons]
    have := IH h.of_cons (hd+1) (pairwise_cons.mp h).1
    specialize his hd (.head _)
    have := (drop_eq_getElem_cons ..).symm ▸ this.cons_cons (get l hd)
    have := Sublist.append (nil_sublist (take hd l |>.drop j)) this
    rwa [nil_append, ← (drop_append_of_le_length ?_), take_append_drop] at this
    simp [Nat.min_eq_left (Nat.le_of_lt hd.isLt), his]

set_option linter.listVariables false in
/-- Given a sublist `l' <+ l`, there exists an increasing list of indices `is` such that
  `l' = is.map fun i => l[i]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant38440135c57e39205a4ab4e240122b97f0bd08b507583f9ef63493b045c3c40c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant38440135c57e39205a4ab4e240122b97f0bd08b507583f9ef63493b045c3c40c.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eda3fecb5bd4a13b04b9f4df0c0e782b9a83c31d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
