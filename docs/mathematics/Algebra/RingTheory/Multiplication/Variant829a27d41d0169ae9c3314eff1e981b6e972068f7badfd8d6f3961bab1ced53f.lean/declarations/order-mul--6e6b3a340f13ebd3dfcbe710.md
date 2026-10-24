# order_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b507c5c948b24ddb60d19f9bda5274e3c246980",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1012,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/829a27d41d0169ae9c3314eff1e981b6e972068f7badfd8d6f3961bab1ced53f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:966f5a49-d304-3d86-b09f-1efdf76b4e53",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03d074f2-e7b7-95ec-3238-4c459b400e88",
  "kind": "lemma",
  "lexical_name": "order_mul",
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
  "slug": "order-mul--6e6b3a340f13ebd3dfcbe710",
  "source": {
    "blob": "0b507c5c948b24ddb60d19f9bda5274e3c246980",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1023,
    "line": 1012,
    "path": "GRWTSK/Algebra/RingTheory/Multiplication/Variant829a27d41d0169ae9c3314eff1e981b6e972068f7badfd8d6f3961bab1ced53f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e6b3a340f13ebd3dfcbe710dee67ebb2fcfc6c668573bd3ed402227435c8686",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Multiplication/Variant829a27d41d0169ae9c3314eff1e981b6e972068f7badfd8d6f3961bab1ced53f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03d074f2-e7b7-95ec-3238-4c459b400e88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1012–1023.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma order_mul (hx : x ≠ 0) (hy : y ≠ 0) : (x * y).order = x.order + y.order := by
  apply le_antisymm
  · apply order_le_of_coeff_ne_zero
    simp [coeff_mul_order_add_order x y, *]
  · rw [order_of_ne hx, order_of_ne hy, order_of_ne (mul_ne_zero hx hy), ← Set.IsWF.min_add]
    exact Set.IsWF.min_le_min_of_subset support_mul_subset

end NonUnitalNonAssocSemiring

section Semiring
variable [Semiring R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Multiplication/Variant829a27d41d0169ae9c3314eff1e981b6e972068f7badfd8d6f3961bab1ced53f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Multiplication/Variant829a27d41d0169ae9c3314eff1e981b6e972068f7badfd8d6f3961bab1ced53f.lean#L1012).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b507c5c948b24ddb60d19f9bda5274e3c246980` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
