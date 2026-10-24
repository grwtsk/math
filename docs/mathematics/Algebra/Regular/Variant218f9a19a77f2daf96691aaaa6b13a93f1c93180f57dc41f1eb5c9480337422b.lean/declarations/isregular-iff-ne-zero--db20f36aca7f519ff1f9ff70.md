# isRegular_iff_ne_zero'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06a8844b88ad966f78ee6a8384ef312155fd7cc1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b2118ed-380d-21ad-6cf4-466bf0f111dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:465a223b-8c95-0a64-92a1-2d6f2eeb3e8c",
  "kind": "theorem",
  "lexical_name": "isRegular_iff_ne_zero'",
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
  "slug": "isregular-iff-ne-zero--db20f36aca7f519ff1f9ff70",
  "source": {
    "blob": "06a8844b88ad966f78ee6a8384ef312155fd7cc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 37,
    "path": "GRWTSK/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db20f36aca7f519ff1f9ff70e92201bcffdbeddddae9ac5f4efc97073b3976ba",
  "verification": {
    "reference": "docs/verification/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:465a223b-8c95-0a64-92a1-2d6f2eeb3e8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isRegular_iff_ne_zero' [Nontrivial α] [NonUnitalNonAssocRing α] [NoZeroDivisors α]
    {k : α} : IsRegular k ↔ k ≠ 0 :=
  ⟨fun h => by
    rintro rfl
    exact not_not.mpr h.left not_isLeftRegular_zero, isRegular_of_ne_zero'⟩

/-- A ring with no zero divisors is a `CancelMonoidWithZero`.

Note this is not an instance as it forms a typeclass loop. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06a8844b88ad966f78ee6a8384ef312155fd7cc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
