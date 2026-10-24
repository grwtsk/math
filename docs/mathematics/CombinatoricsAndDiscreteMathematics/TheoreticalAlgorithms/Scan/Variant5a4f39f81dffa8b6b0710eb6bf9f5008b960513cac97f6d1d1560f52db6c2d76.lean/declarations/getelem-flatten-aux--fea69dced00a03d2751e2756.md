# getElem_flatten_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:061f3bf6-55e7-f0a5-eea1-54c686143d1a",
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
  "slug": "getelem-flatten-aux--fea69dced00a03d2751e2756",
  "source": {
    "blob": "226c93ac26da1cfa7dbcaef858039047c9b16666",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 158,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant5a4f39f81dffa8b6b0710eb6bf9f5008b960513cac97f6d1d1560f52db6c2d76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fea69dced00a03d2751e27567eef065f4ed5303b64dfa3b9be12f73e2cd20f66",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant5a4f39f81dffa8b6b0710eb6bf9f5008b960513cac97f6d1d1560f52db6c2d76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:061f3bf6-55e7-f0a5-eea1-54c686143d1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–191.

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
      findIdx_map, Function.comp_def, cond_false, Nat.add_one_sub_one, length_flatten, map_take,
      getElem_cons]
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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant5a4f39f81dffa8b6b0710eb6bf9f5008b960513cac97f6d1d1560f52db6c2d76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant5a4f39f81dffa8b6b0710eb6bf9f5008b960513cac97f6d1d1560f52db6c2d76.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `226c93ac26da1cfa7dbcaef858039047c9b16666` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
