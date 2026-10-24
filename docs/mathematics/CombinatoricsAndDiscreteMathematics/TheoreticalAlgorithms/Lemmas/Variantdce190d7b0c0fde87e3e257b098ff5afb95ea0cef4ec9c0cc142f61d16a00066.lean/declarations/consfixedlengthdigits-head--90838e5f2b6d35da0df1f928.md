# consFixedLengthDigits_head

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "845c1f45302f4eef6acfe48e7450fef9b5e5c605",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 468,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dce190d7b0c0fde87e3e257b098ff5afb95ea0cef4ec9c0cc142f61d16a00066.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:366987d9-5977-20bf-c7e9-988c48caecb6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c6a9b94-af91-5a7f-dab7-3c61dc557528",
  "kind": "theorem",
  "lexical_name": "consFixedLengthDigits_head",
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
  "slug": "consfixedlengthdigits-head--90838e5f2b6d35da0df1f928",
  "source": {
    "blob": "845c1f45302f4eef6acfe48e7450fef9b5e5c605",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 468,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdce190d7b0c0fde87e3e257b098ff5afb95ea0cef4ec9c0cc142f61d16a00066.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90838e5f2b6d35da0df1f92813fc64e9f404e4a7c2f50edcead14c05480d8f8d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdce190d7b0c0fde87e3e257b098ff5afb95ea0cef4ec9c0cc142f61d16a00066.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c6a9b94-af91-5a7f-dab7-3c61dc557528`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem consFixedLengthDigits_head {b : ℕ} (hb : 1 < b) {l d : ℕ} {L : List ℕ}
    (hL : L ∈ consFixedLengthDigits hb l d) :
    List.head L (ne_empty_of_mem_consFixedLengthDigits hb hL) = d := by
  obtain ⟨_, _, rfl⟩ := Finset.mem_image.mp hL
  rw [head_cons]

/--
If `L` is a list in `List.fixedLengthDigits b l` and `d` is an integer `< b`, then
`d :: L` is a list in `List.fixedLengthDigits b (l + 1).`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdce190d7b0c0fde87e3e257b098ff5afb95ea0cef4ec9c0cc142f61d16a00066.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdce190d7b0c0fde87e3e257b098ff5afb95ea0cef4ec9c0cc142f61d16a00066.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `845c1f45302f4eef6acfe48e7450fef9b5e5c605` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
