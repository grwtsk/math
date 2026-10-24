# min_mul_distrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73525ada89f43f4867ddf6f8837beb2d016dffeb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 358,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b3bea893-a131-3df5-9113-14dfc5bd3cb8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:195c36c1-5475-bec1-ebde-6f7c5089783e",
  "kind": "theorem",
  "lexical_name": "min_mul_distrib",
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
  "slug": "min-mul-distrib--c6647d138ef297d50c47ee5e",
  "source": {
    "blob": "73525ada89f43f4867ddf6f8837beb2d016dffeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 358,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6647d138ef297d50c47ee5ef74a83526924fc37c687732bdc95211ca04aef8c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:195c36c1-5475-bec1-ebde-6f7c5089783e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem min_mul_distrib (a b c : α) : min a (b * c) = min a (min a b * min a c) := by
  cases' le_total a b with hb hb
  · simp [hb, le_mul_right]
  · cases' le_total a c with hc hc
    · simp [hc, le_mul_left]
    · simp [hb, hc]
#align min_mul_distrib min_mul_distrib
#align min_add_distrib min_add_distrib

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73525ada89f43f4867ddf6f8837beb2d016dffeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
