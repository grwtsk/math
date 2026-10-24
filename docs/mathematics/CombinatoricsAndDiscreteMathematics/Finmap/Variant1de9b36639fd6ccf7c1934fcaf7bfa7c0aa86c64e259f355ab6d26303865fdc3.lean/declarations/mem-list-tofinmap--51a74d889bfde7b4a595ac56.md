# mem_list_toFinmap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0845c901-e2af-73ff-9d6c-cbae2faae595",
  "kind": "theorem",
  "lexical_name": "mem_list_toFinmap",
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
  "slug": "mem-list-tofinmap--51a74d889bfde7b4a595ac56",
  "source": {
    "blob": "e626634fa0d863118308e45eef1e9be8f9576535",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 475,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finmap/Variant1de9b36639fd6ccf7c1934fcaf7bfa7c0aa86c64e259f355ab6d26303865fdc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51a74d889bfde7b4a595ac568849b7957543969fb4bd2bed0bc1c25b1b4b4f5a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finmap/Variant1de9b36639fd6ccf7c1934fcaf7bfa7c0aa86c64e259f355ab6d26303865fdc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0845c901-e2af-73ff-9d6c-cbae2faae595`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 475–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_list_toFinmap (a : α) (xs : List (Sigma β)) :
    a ∈ xs.toFinmap ↔ ∃ b : β a, Sigma.mk a b ∈ xs := by
  induction' xs with x xs
  · simp only [toFinmap_nil, notMem_empty, find?, not_mem_nil, exists_false]
  obtain ⟨fst_i, snd_i⟩ := x
  simp only [toFinmap_cons, *, exists_or, mem_cons, mem_insert, exists_and_left, Sigma.mk.inj_iff]
  refine (or_congr_left <| and_iff_left_of_imp ?_).symm
  rintro rfl
  simp only [exists_eq, heq_iff_eq]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finmap/Variant1de9b36639fd6ccf7c1934fcaf7bfa7c0aa86c64e259f355ab6d26303865fdc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finmap/Variant1de9b36639fd6ccf7c1934fcaf7bfa7c0aa86c64e259f355ab6d26303865fdc3.lean#L475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e626634fa0d863118308e45eef1e9be8f9576535` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
