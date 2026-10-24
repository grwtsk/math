# IsNontrivial.exists_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73f71ae8fde499401b25db33fd2d826eecfb9c0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 644,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06c1c23856898b765a5b98df0a298468cf0a37fa3758809c98d65ba3ff6df983.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b293007-4bdb-5ae5-7cc9-2893b6077814",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87746a36-0cb2-5908-384c-a4d1a70b6f32",
  "kind": "lemma",
  "lexical_name": "IsNontrivial.exists_lt_one",
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
  "slug": "isnontrivial-exists-lt-one--3585fb7738f7004f4ec814f1",
  "source": {
    "blob": "73f71ae8fde499401b25db33fd2d826eecfb9c0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 654,
    "line": 644,
    "path": "GRWTSK/Algebra/RingTheory/Basic/Variant06c1c23856898b765a5b98df0a298468cf0a37fa3758809c98d65ba3ff6df983.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3585fb7738f7004f4ec814f18cb2b0833b9c944224f62a806454299d862a7afe",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Basic/Variant06c1c23856898b765a5b98df0a298468cf0a37fa3758809c98d65ba3ff6df983.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87746a36-0cb2-5908-384c-a4d1a70b6f32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 644–654.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsNontrivial.exists_lt_one {Γ₀ : Type*} [LinearOrderedCommGroupWithZero Γ₀]
    {v : Valuation K Γ₀} [hv : v.IsNontrivial] :
    ∃ x ≠ 0, v x < 1 := by
  obtain ⟨x, hx⟩ := isNontrivial_iff_exists_unit.mp hv
  rw [ne_iff_lt_or_gt] at hx
  rcases hx with hx | hx
  · use x
    simp [hx]
  · use x⁻¹
    simp [-map_inv₀, ← one_lt_val_iff, hx]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Basic/Variant06c1c23856898b765a5b98df0a298468cf0a37fa3758809c98d65ba3ff6df983.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Basic/Variant06c1c23856898b765a5b98df0a298468cf0a37fa3758809c98d65ba3ff6df983.lean#L644).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73f71ae8fde499401b25db33fd2d826eecfb9c0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
