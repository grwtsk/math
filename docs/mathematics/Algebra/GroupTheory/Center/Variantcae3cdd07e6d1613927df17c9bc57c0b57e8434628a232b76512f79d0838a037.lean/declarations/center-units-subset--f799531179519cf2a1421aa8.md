# center_units_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcb7c50da78499c0ce7a876a7d33ad66bec75107",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/cae3cdd07e6d1613927df17c9bc57c0b57e8434628a232b76512f79d0838a037.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc8c6afa-60f6-6e7d-b759-6db969b8d08a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0b994e6-a629-2e0c-fadd-9bd78b29691c",
  "kind": "lemma",
  "lexical_name": "center_units_subset",
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
  "slug": "center-units-subset--f799531179519cf2a1421aa8",
  "source": {
    "blob": "bcb7c50da78499c0ce7a876a7d33ad66bec75107",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 34,
    "path": "GRWTSK/Algebra/GroupTheory/Center/Variantcae3cdd07e6d1613927df17c9bc57c0b57e8434628a232b76512f79d0838a037.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f799531179519cf2a1421aa872e633c57330134d48f2534abf60ffb8f2ecbf9c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Center/Variantcae3cdd07e6d1613927df17c9bc57c0b57e8434628a232b76512f79d0838a037.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0b994e6-a629-2e0c-fadd-9bd78b29691c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma center_units_subset : center G₀ˣ ⊆ ((↑) : G₀ˣ → G₀) ⁻¹' center G₀ := by
  simp_rw [subset_def, mem_preimage, _root_.Semigroup.mem_center_iff]
  intro u hu a
  obtain rfl | ha := eq_or_ne a 0
  · rw [zero_mul, mul_zero]
  · exact congr_arg Units.val <| hu <| Units.mk0 a ha

/-- In a group with zero, the center of the units is the preimage of the center. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Center/Variantcae3cdd07e6d1613927df17c9bc57c0b57e8434628a232b76512f79d0838a037.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Center/Variantcae3cdd07e6d1613927df17c9bc57c0b57e8434628a232b76512f79d0838a037.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcb7c50da78499c0ce7a876a7d33ad66bec75107` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
