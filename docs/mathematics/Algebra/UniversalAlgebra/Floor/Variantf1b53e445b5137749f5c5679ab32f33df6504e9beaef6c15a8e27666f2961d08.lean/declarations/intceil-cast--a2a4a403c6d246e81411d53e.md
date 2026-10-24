# intCeil_cast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f17ca0e9c938a04766a86111475713cbae6899f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1b53e445b5137749f5c5679ab32f33df6504e9beaef6c15a8e27666f2961d08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9aa6d5f-4f98-bfcb-3c22-7e69c8656212",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd56a3a9-c9a9-cc5d-c061-14b848f4d08c",
  "kind": "theorem",
  "lexical_name": "intCeil_cast",
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
  "slug": "intceil-cast--a2a4a403c6d246e81411d53e",
  "source": {
    "blob": "f17ca0e9c938a04766a86111475713cbae6899f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 78,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Floor/Variantf1b53e445b5137749f5c5679ab32f33df6504e9beaef6c15a8e27666f2961d08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2a4a403c6d246e81411d53e867592e7a808d2cc4fafed8902f009330588b14a",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Floor/Variantf1b53e445b5137749f5c5679ab32f33df6504e9beaef6c15a8e27666f2961d08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd56a3a9-c9a9-cc5d-c061-14b848f4d08c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intCeil_cast (x : ℚ≥0) : ⌈(x : K)⌉ = ⌈(x : ℚ)⌉ := by
  rw [Int.ceil_eq_iff, ← coe_ceil, sub_lt_iff_lt_add]
  constructor
  · have := NNRat.cast_strictMono (K := K) <| Nat.ceil_lt_add_one <| zero_le x
    rw [NNRat.cast_add, NNRat.cast_one] at this
    refine Eq.trans_lt ?_ this
    norm_cast
  · rw [Int.cast_natCast, NNRat.cast_le_natCast]
    exact Nat.le_ceil _

end Field

@[norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Floor/Variantf1b53e445b5137749f5c5679ab32f33df6504e9beaef6c15a8e27666f2961d08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Floor/Variantf1b53e445b5137749f5c5679ab32f33df6504e9beaef6c15a8e27666f2961d08.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f17ca0e9c938a04766a86111475713cbae6899f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
