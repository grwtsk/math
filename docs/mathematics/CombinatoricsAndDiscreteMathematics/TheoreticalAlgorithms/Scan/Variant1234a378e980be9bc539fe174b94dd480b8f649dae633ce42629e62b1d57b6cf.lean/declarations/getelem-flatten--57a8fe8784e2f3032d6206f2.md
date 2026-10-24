# getElem_flatten

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:938eb30b-7134-eec5-adf4-a15be97bd428",
  "kind": "theorem",
  "lexical_name": "getElem_flatten",
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
  "slug": "getelem-flatten--57a8fe8784e2f3032d6206f2",
  "source": {
    "blob": "6ced44454123fc3210b07569cd8214463f48f661",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 192,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57a8fe8784e2f3032d6206f2617c7b60d25a552aa0fccd9cd270954d03456001",
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

Occurrence: `result:938eb30b-7134-eec5-adf4-a15be97bd428`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem_flatten (L : List (List α)) (i : Nat) (h : i < L.flatten.length) :
    L.flatten[i] =
      let j := (L.map length).partialSums.findIdx (· > i) - 1
      have hj : j < L.length := getElem_flatten_aux₁ L i h
      let k := i - (L.take j).flatten.length
      have hk : k < L[j].length := getElem_flatten_aux₂ L i h
      L[j][k] := by
  induction L generalizing i with
  | nil => simp at h
  | cons l L ih =>
    simp only [flatten_cons, getElem_append]
    split <;> rename_i h'
    · have : findIdx (fun x => decide (x > i)) (map length (l :: L)).partialSums = 1 := by
        simp [partialSums_cons, findIdx_cons]
        rw [findIdx_eq] <;> grind
      simp only [this]
      simp
    · rw [ih]
      have : findIdx (fun x => decide (x > i)) (map length (l :: L)).partialSums =
          findIdx (fun x => decide (x > i - l.length)) (map length L).partialSums + 1 := by
        simp [partialSums_cons, findIdx_cons, Function.comp_def]
        congr
        funext x
        grind
      simp only [this]
      simp only [getElem_cons]
      split <;> rename_i h''
      · simp [findIdx_eq] at h''
      · congr 1
        rw [take_cons]
        · simp
          omega
        · simp

/--
Taking the first `i` elements of a flattened list
can be expressed as the flattening of the first `j` complete sublists, plus the first
`k` elements of the `j`-th sublist.

The indices are computed as:
- `j` is one less than where the cumulative sum first exceeds `i`
- `k` is `i` minus the total length of the first `j` sublists
-/
proof_wanted take_flatten (L : List (List α)) (i : Nat) :
    let j := (L.map length).partialSums.findIdx (· > i) - 1
    let k := i - (L.take j).flatten.length
    L.flatten.take i = (L.take j).flatten ++ (L[j]?.getD []).take k
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant1234a378e980be9bc539fe174b94dd480b8f649dae633ce42629e62b1d57b6cf.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ced44454123fc3210b07569cd8214463f48f661` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
