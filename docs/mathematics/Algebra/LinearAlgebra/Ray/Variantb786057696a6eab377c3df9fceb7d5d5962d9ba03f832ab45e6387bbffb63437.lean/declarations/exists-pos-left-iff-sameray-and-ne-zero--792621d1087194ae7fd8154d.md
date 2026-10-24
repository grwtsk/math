# exists_pos_left_iff_sameRay_and_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d11c535796d9554af9f831b7d410a33d61d8a73",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 622,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b786057696a6eab377c3df9fceb7d5d5962d9ba03f832ab45e6387bbffb63437.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b71d475-585e-1d71-ed9f-aae6a4a46559",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc8baef1-434d-7f48-d452-f5c03ac3d495",
  "kind": "theorem",
  "lexical_name": "exists_pos_left_iff_sameRay_and_ne_zero",
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
  "slug": "exists-pos-left-iff-sameray-and-ne-zero--792621d1087194ae7fd8154d",
  "source": {
    "blob": "0d11c535796d9554af9f831b7d410a33d61d8a73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 629,
    "line": 622,
    "path": "GRWTSK/Algebra/LinearAlgebra/Ray/Variantb786057696a6eab377c3df9fceb7d5d5962d9ba03f832ab45e6387bbffb63437.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:792621d1087194ae7fd8154d84ba156a039fc7bf099714a17b9d6dc5c6f3e3dd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Ray/Variantb786057696a6eab377c3df9fceb7d5d5962d9ba03f832ab45e6387bbffb63437.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc8baef1-434d-7f48-d452-f5c03ac3d495`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 622–629.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_pos_left_iff_sameRay_and_ne_zero (hx : x ≠ 0) :
    (∃ r : R, 0 < r ∧ r • x = y) ↔ SameRay R x y ∧ y ≠ 0 := by
  constructor
  · rintro ⟨r, hr, rfl⟩
    simp [hx, hr.le, hr.ne']
  · rintro ⟨hxy, hy⟩
    exact (exists_pos_left_iff_sameRay hx hy).2 hxy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Ray/Variantb786057696a6eab377c3df9fceb7d5d5962d9ba03f832ab45e6387bbffb63437.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Ray/Variantb786057696a6eab377c3df9fceb7d5d5962d9ba03f832ab45e6387bbffb63437.lean#L622).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d11c535796d9554af9f831b7d410a33d61d8a73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
