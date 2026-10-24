# splits_cyclotomic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c04b79552195d58566ee5f066c8dabc47ce044c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 424,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee81c235-1ca5-3e41-67f6-3935a615a636",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f383c1a-32a2-0de2-6716-586c4aeb9248",
  "kind": "theorem",
  "lexical_name": "splits_cyclotomic",
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
  "slug": "splits-cyclotomic--94608699175f162cd268f9d4",
  "source": {
    "blob": "3c04b79552195d58566ee5f066c8dabc47ce044c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 424,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94608699175f162cd268f9d4e7f8de7b03cd0241b41fae25797ddf3676d731e8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f383c1a-32a2-0de2-6716-586c4aeb9248`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splits_cyclotomic [IsCyclotomicExtension S K L] (hS : n ∈ S) :
    Splits (algebraMap K L) (cyclotomic n K) := by
  refine splits_of_splits_of_dvd _ (X_pow_sub_C_ne_zero n.pos _) (splits_X_pow_sub_one K L hS) ?_
  use ∏ i ∈ (n : ℕ).properDivisors, Polynomial.cyclotomic i K
  rw [(eq_cyclotomic_iff n.pos _).1 rfl, RingHom.map_one]

variable (n S)

section Singleton

variable [IsCyclotomicExtension {n} K L]

/-- If `IsCyclotomicExtension {n} K L`, then `L` is the splitting field of `X ^ n - 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c04b79552195d58566ee5f066c8dabc47ce044c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
