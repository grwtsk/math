# isRightRegular_of_non_zero_divisor

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
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d208fbe3-e56d-1cbd-404e-68107c572685",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d47d99c-d1b4-4c96-bc70-6757f709ce8f",
  "kind": "theorem",
  "lexical_name": "isRightRegular_of_non_zero_divisor",
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
  "slug": "isrightregular-of-non-zero-divisor--f879092894d5851189c4182c",
  "source": {
    "blob": "06a8844b88ad966f78ee6a8384ef312155fd7cc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 25,
    "path": "GRWTSK/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f879092894d5851189c4182cd02790c4ecf472d7a2e0298023d56dd0c2556fb0",
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

Occurrence: `result:1d47d99c-d1b4-4c96-bc70-6757f709ce8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isRightRegular_of_non_zero_divisor [NonUnitalNonAssocRing α] (k : α)
    (h : ∀ x : α, x * k = 0 → x = 0) : IsRightRegular k := by
  refine fun x y (h' : x * k = y * k) => sub_eq_zero.mp (h _ ?_)
  rw [sub_mul, sub_eq_zero, h']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06a8844b88ad966f78ee6a8384ef312155fd7cc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
