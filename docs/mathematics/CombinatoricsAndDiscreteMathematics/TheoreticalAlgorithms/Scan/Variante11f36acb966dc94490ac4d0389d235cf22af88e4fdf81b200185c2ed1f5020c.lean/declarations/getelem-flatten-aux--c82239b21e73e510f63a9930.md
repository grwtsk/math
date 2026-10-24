# getElem_flatten_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "14ec61624f7a5d99594e039bbd40aec4e86d42ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75b1058e-221a-0da3-a46f-67f7156b0e8d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd19d985-7fe5-d1cc-156e-568df62228f0",
  "kind": "theorem",
  "lexical_name": "getElem_flatten_aux₂",
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
  "slug": "getelem-flatten-aux--c82239b21e73e510f63a9930",
  "source": {
    "blob": "14ec61624f7a5d99594e039bbd40aec4e86d42ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 150,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c82239b21e73e510f63a99308ae2e76073fd84d5b6bcc9fe7a8d37784164ae5b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd19d985-7fe5-d1cc-156e-568df62228f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem_flatten_aux₂ (L : List (List α)) (i : Nat) (h : i < L.flatten.length) :
    let j := (L.map length).partialSums.findIdx (· > i) - 1
    have hj : j < L.length := getElem_flatten_aux₁ L i h
    let k := i - (L.take j).flatten.length
    k < L[j].length := by
  induction L generalizing i with
  | nil => simp at h
  | cons l L ih =>
    simp only [map_cons, partialSums_cons, findIdx_cons, Nat.not_lt_zero, decide_false,
      findIdx_map, Function.comp_def, Bool.false_eq_true, ite_false, Nat.add_one_sub_one,
      length_flatten, map_take, getElem_cons]
    split <;> rename_i h'
    · simp only [h', take_zero, sum_nil, Nat.sub_zero]
      rw [findIdx_eq (by simp)] at h'
      simp_all
    · have : l.length ≤ i := by
        rw [findIdx_eq (by simp)] at h'
        simp_all
      rw [take_cons (by grind)]
      specialize ih (i - l.length) (by grind)
      have p : ∀ x, i - l.length < x ↔ i < l.length + x := by grind
      simp only [p, length_flatten, map_take] at ih
      grind

/--
Indexing into a flattened list: `L.flatten[i]` equals `L[j][k]` where
`j` is the sublist index and `k` is the offset within that sublist.

The indices are computed as:
- `j` is one less than where the cumulative sum first exceeds `i`
- `k` is `i` minus the total length of the first `j` sublists

This theorem states that these indices are in range and the equality holds.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante11f36acb966dc94490ac4d0389d235cf22af88e4fdf81b200185c2ed1f5020c.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14ec61624f7a5d99594e039bbd40aec4e86d42ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
