# prod_normalizedFactors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c4263bf072a1e1bbd7d4d5edd0fd7cd315154f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04798264-25a1-7b4d-9f3f-56076133aaa4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90bb8c0c-4104-189b-10e6-1935de5e5828",
  "kind": "theorem",
  "lexical_name": "prod_normalizedFactors",
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
  "slug": "prod-normalizedfactors--97c3677e89169ad64fd2c7df",
  "source": {
    "blob": "7c4263bf072a1e1bbd7d4d5edd0fd7cd315154f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 44,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97c3677e89169ad64fd2c7df6b7eda9ea17d792ba89ca894a0cfeb79c715ab99",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90bb8c0c-4104-189b-10e6-1935de5e5828`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_normalizedFactors {a : α} (ane0 : a ≠ 0) :
    Associated (normalizedFactors a).prod a := by
  rw [normalizedFactors, factors, dif_neg ane0]
  refine Associated.trans ?_ (Classical.choose_spec (exists_prime_factors a ane0)).2
  rw [← Associates.mk_eq_mk_iff_associated, ← Associates.prod_mk, ← Associates.prod_mk,
    Multiset.map_map]
  congr 2
  ext
  rw [Function.comp_apply, Associates.mk_normalize]

@[deprecated (since := "2024-12-04")]
alias normalizedFactors_prod := prod_normalizedFactors

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c4263bf072a1e1bbd7d4d5edd0fd7cd315154f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
