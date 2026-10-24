# Submodule.mem_span_iff_of_fintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3683f8c2-e0a8-9f60-f089-52ee1b547198",
  "kind": "lemma",
  "lexical_name": "Submodule.mem_span_iff_of_fintype",
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
  "slug": "submodule-mem-span-iff-of-fintype--ae474b0218e693d67c740b58",
  "source": {
    "blob": "e487b63d16e55376c0656359f51c6a42f448f56c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 488,
    "line": 483,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearCombination/Variantc72c79d9f20291ba539dc5085f671339a0b779b748e51e3ca8b1c3735c8f1a8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae474b0218e693d67c740b58bc85280f9907303e3ade7b1b61efa33df33798ee",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearCombination/Variantc72c79d9f20291ba539dc5085f671339a0b779b748e51e3ca8b1c3735c8f1a8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3683f8c2-e0a8-9f60-f089-52ee1b547198`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 483–488.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Submodule.mem_span_iff_of_fintype {s : Set M} [Fintype s] {x : M} :
    x ∈ span R s ↔ ∃ f : s → R, ∑ a : s, f a • a.1 = x := by
  conv_lhs => rw [← Subtype.range_val (s := s)]
  exact mem_span_range_iff_exists_fun _

/-- A variant of `Submodule.mem_span_finset` using `s` as the index type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearCombination/Variantc72c79d9f20291ba539dc5085f671339a0b779b748e51e3ca8b1c3735c8f1a8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearCombination/Variantc72c79d9f20291ba539dc5085f671339a0b779b748e51e3ca8b1c3735c8f1a8b.lean#L483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e487b63d16e55376c0656359f51c6a42f448f56c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
