# one_notMem_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0bbdfee-3774-1df4-4679-420c64500149",
  "kind": "theorem",
  "lexical_name": "one_notMem_ker",
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
  "slug": "one-notmem-ker--f77585eb90ab92e7a6eaf302",
  "source": {
    "blob": "78b13e000b0f7a434acd12f304133cec8247015a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 687,
    "line": 682,
    "path": "GRWTSK/Algebra/Maps/Variant1a9bed5409f1eb9c610eb05afccc23778b31ea46c0f0d0ca8d37bf1e338de002.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f77585eb90ab92e7a6eaf302c8eefa9d9b523dcce3085fdb47a841e080e9ac01",
  "verification": {
    "reference": "docs/verification/Algebra/Maps/Variant1a9bed5409f1eb9c610eb05afccc23778b31ea46c0f0d0ca8d37bf1e338de002.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0bbdfee-3774-1df4-4679-420c64500149`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 682–687.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_notMem_ker [Nontrivial S] (f : F) : (1 : R) ∉ ker f := by
  rw [mem_ker, map_one]
  exact one_ne_zero

@[deprecated (since := "2025-05-23")] alias not_one_mem_ker := one_notMem_ker

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Maps/Variant1a9bed5409f1eb9c610eb05afccc23778b31ea46c0f0d0ca8d37bf1e338de002.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Maps/Variant1a9bed5409f1eb9c610eb05afccc23778b31ea46c0f0d0ca8d37bf1e338de002.lean#L682).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78b13e000b0f7a434acd12f304133cec8247015a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
