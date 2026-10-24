# rooted_iff_valid_and_nonzero_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa4eb742-5a8c-f26d-5418-9eba09fb9357",
  "kind": "theorem",
  "lexical_name": "rooted_iff_valid_and_nonzero_prefix",
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
  "slug": "rooted-iff-valid-and-nonzero-prefix--e3fa02d53c61d01b0863cf24",
  "source": {
    "blob": "6e0d451eed2d082fa55d5b667183d85e6bb619cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 121,
    "path": "GRWTSK/Combinatorics/Sequences/PartialSumOrdering.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3fa02d53c61d01b0863cf24a0ad24b144fffb0cf0fc297062016a975445f8c3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa4eb742-5a8c-f26d-5418-9eba09fb9357`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rooted_iff_valid_and_nonzero_prefix (xs : List G) :
    RootedValidPartialSumOrder xs ↔
      ValidPartialSumOrder xs ∧ ∀ k, 1 ≤ k → k ≤ xs.length → prefixSum xs k ≠ 0 := by
  simp only [RootedValidPartialSumOrder, List.nodup_cons, ValidPartialSumOrder,
    postSums, List.mem_map]
  constructor
  · rintro ⟨hn, hv⟩
    refine ⟨hv, ?_⟩
    intro k hk hn' he
    exact hn ⟨k, mem_postIndices.mpr ⟨hk, hn'⟩, he⟩
  · rintro ⟨hv, hn⟩
    refine ⟨?_, hv⟩
    rintro ⟨k, hk, he⟩
    obtain ⟨hk1, hkn⟩ := mem_postIndices.mp hk
    exact hn k hk1 hkn he

/-- Rooted validity also excludes zero-sum intervals beginning at the first position. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/PartialSumOrdering.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e0d451eed2d082fa55d5b667183d85e6bb619cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
