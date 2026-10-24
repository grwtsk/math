# mergeSort_zipIdx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "99498d23f57044112348aee23f5bd9ae56d17717",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 346,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fda9ae3544fae65e22671e736c8466b05d2e72b50e71c178a16543c25f0a1288.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0cac7ea-8de2-661c-fac0-0b1f1457a02f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e75a9e9-ba69-f63c-cf3d-11351c161cb1",
  "kind": "theorem",
  "lexical_name": "mergeSort_zipIdx",
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
  "slug": "mergesort-zipidx--7b5223c85c6d5c6de69e88d1",
  "source": {
    "blob": "99498d23f57044112348aee23f5bd9ae56d17717",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 346,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantfda9ae3544fae65e22671e736c8466b05d2e72b50e71c178a16543c25f0a1288.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b5223c85c6d5c6de69e88d1f7a0e189adf4e478fec83b6d1e1f2d0c3cf25be0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantfda9ae3544fae65e22671e736c8466b05d2e72b50e71c178a16543c25f0a1288.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e75a9e9-ba69-f63c-cf3d-11351c161cb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mergeSort_zipIdx {l : List α} :
    (mergeSort (l.zipIdx) (zipIdxLE le)).map (·.1) = mergeSort l le :=
  go 0 l
where go : ∀ (i : Nat) (l : List α),
    (mergeSort (l.zipIdx i) (zipIdxLE le)).map (·.1) = mergeSort l le
  | _, []
  | _, [a] => by simp
  | _, a :: b :: xs => by
    have : (splitInTwo ⟨a :: b :: xs, rfl⟩).1.1.length < xs.length + 1 + 1 := by simp [splitInTwo_fst]; omega
    have : (splitInTwo ⟨a :: b :: xs, rfl⟩).2.1.length < xs.length + 1 + 1 := by simp [splitInTwo_snd]; omega
    simp only [mergeSort, zipIdx]
    rw [splitInTwo_cons_cons_zipIdx_fst]
    rw [splitInTwo_cons_cons_zipIdx_snd]
    rw [merge_stable]
    · rw [go, go]
    · simp only [mem_mergeSort, Prod.forall]
      intro j x k y mx my
      have := mem_zipIdx mx
      have := mem_zipIdx my
      simp_all
      omega
termination_by _ l => l.length

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantfda9ae3544fae65e22671e736c8466b05d2e72b50e71c178a16543c25f0a1288.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantfda9ae3544fae65e22671e736c8466b05d2e72b50e71c178a16543c25f0a1288.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99498d23f57044112348aee23f5bd9ae56d17717` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
