# getElem_flatten_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7be4692b-704d-1a9b-5db0-fbd2d7ee3f58",
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
  "slug": "getelem-flatten-aux--12c312c0a300abadf1fa4d55",
  "source": {
    "blob": "6ced44454123fc3210b07569cd8214463f48f661",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 158,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12c312c0a300abadf1fa4d55082b3fc46ec95501323a302fe116d8ad835cbc3e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7be4692b-704d-1a9b-5db0-fbd2d7ee3f58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–191.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ced44454123fc3210b07569cd8214463f48f661` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
