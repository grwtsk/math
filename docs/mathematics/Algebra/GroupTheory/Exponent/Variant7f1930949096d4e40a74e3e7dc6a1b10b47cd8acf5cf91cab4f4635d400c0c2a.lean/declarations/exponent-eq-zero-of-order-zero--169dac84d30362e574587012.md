# exponent_eq_zero_of_order_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "101b7ec34cb57205ee063b79e82d9c8907025607",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb82fc06-6af2-36dd-e506-88f25c8afbd9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94b6b049-210b-a095-c6c4-b2729d00cbb4",
  "kind": "theorem",
  "lexical_name": "exponent_eq_zero_of_order_zero",
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
  "slug": "exponent-eq-zero-of-order-zero--169dac84d30362e574587012",
  "source": {
    "blob": "101b7ec34cb57205ee063b79e82d9c8907025607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 94,
    "path": "GRWTSK/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:169dac84d30362e57458701291704a54b8cad297bb97a067c5de26ed2051662f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94b6b049-210b-a095-c6c4-b2729d00cbb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponent_eq_zero_of_order_zero {g : G} (hg : orderOf g = 0) : exponent G = 0 :=
  exponent_eq_zero_iff.mpr fun ⟨n, hn, hgn⟩ => orderOf_eq_zero_iff'.mp hg n hn <| hgn g
#align monoid.exponent_eq_zero_of_order_zero Monoid.exponent_eq_zero_of_order_zero
#align add_monoid.exponent_eq_zero_of_order_zero AddMonoid.exponent_eq_zero_addOrder_zero

@[to_additive exponent_nsmul_eq_zero]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Exponent/Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `101b7ec34cb57205ee063b79e82d9c8907025607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
