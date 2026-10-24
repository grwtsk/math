# finprod_mem_inter_mulSupport_eq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1322739961fe42eb8c631fd118da42e747c8b12",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 487,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/78fc0b55adf37d04d9674665c5f1e9313e965433805e58e0568ce48a9667d633.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6ad3b7c-dedc-982b-ea5e-872718fa5669",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e358b28d-11cf-b7c1-b51d-1c7d6c41285a",
  "kind": "theorem",
  "lexical_name": "finprod_mem_inter_mulSupport_eq'",
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
  "slug": "finprod-mem-inter-mulsupport-eq--7efd09fa57e60a0c5f6dc4f7",
  "source": {
    "blob": "e1322739961fe42eb8c631fd118da42e747c8b12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 493,
    "line": 487,
    "path": "GRWTSK/Algebra/GroupTheory/Finprod/Variant78fc0b55adf37d04d9674665c5f1e9313e965433805e58e0568ce48a9667d633.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7efd09fa57e60a0c5f6dc4f764710b7b87c7563fb80b741dd86c18bef95c10d6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finprod/Variant78fc0b55adf37d04d9674665c5f1e9313e965433805e58e0568ce48a9667d633.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e358b28d-11cf-b7c1-b51d-1c7d6c41285a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–493.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finprod_mem_inter_mulSupport_eq' (f : α → M) (s t : Set α)
    (h : ∀ x ∈ mulSupport f, x ∈ s ↔ x ∈ t) : ∏ᶠ i ∈ s, f i = ∏ᶠ i ∈ t, f i := by
  apply finprod_mem_inter_mulSupport_eq
  ext x
  exact and_congr_left (h x)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finprod/Variant78fc0b55adf37d04d9674665c5f1e9313e965433805e58e0568ce48a9667d633.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finprod/Variant78fc0b55adf37d04d9674665c5f1e9313e965433805e58e0568ce48a9667d633.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1322739961fe42eb8c631fd118da42e747c8b12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
