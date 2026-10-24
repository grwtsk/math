# _root_.GRWTSK.Analysis.WSameSide.Variant69d3840a44aa6242fbe6e7b9af918c5abe7a194ca65a33f3858702e1de23caf1.Wbtw.wOppSide₁₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b0b43cd-f8cb-f257-22ff-3e5e824485e8",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.WSameSide.Variant69d3840a44aa6242fbe6e7b9af918c5abe7a194ca65a33f3858702e1de23caf1.Wbtw.wOppSide₁₃",
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
  "slug": "root-grwtsk-analysis-wsameside-variant69d3840a44aa6242fbe6e7b9af918c5abe--61f5c99c22ec81b205f6926c",
  "source": {
    "blob": "a0e7b18e90458c162a1889317dcb4946de332fa7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 344,
    "path": "GRWTSK/Analysis/Side/Variant3932b486e400bdb3d5507b9eee9439cb8a2862b9c068d6e058c1d8e62322b25f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61f5c99c22ec81b205f6926c8b195196bbd0faad5953a6a8619e92ad0c375901",
  "verification": {
    "reference": "docs/verification/Analysis/Side/Variant3932b486e400bdb3d5507b9eee9439cb8a2862b9c068d6e058c1d8e62322b25f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b0b43cd-f8cb-f257-22ff-3e5e824485e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.WSameSide.Variant69d3840a44aa6242fbe6e7b9af918c5abe7a194ca65a33f3858702e1de23caf1.Wbtw.wOppSide₁₃ {s : AffineSubspace R P} {x y z : P} (h : Wbtw R x y z)
    (hy : y ∈ s) : s.WOppSide x z := by
  rcases h with ⟨t, ⟨ht0, ht1⟩, rfl⟩
  refine ⟨_, hy, _, hy, ?_⟩
  rcases ht1.lt_or_eq with (ht1' | rfl); swap
  · rw [lineMap_apply_one]; simp
  rcases ht0.lt_or_eq with (ht0' | rfl); swap
  · rw [lineMap_apply_zero]; simp
  refine Or.inr (Or.inr ⟨1 - t, t, sub_pos.2 ht1', ht0', ?_⟩)
  rw [lineMap_apply, vadd_vsub_assoc, vsub_vadd_eq_vsub_sub, ← neg_vsub_eq_vsub_rev z, vsub_self]
  module

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Side/Variant3932b486e400bdb3d5507b9eee9439cb8a2862b9c068d6e058c1d8e62322b25f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Side/Variant3932b486e400bdb3d5507b9eee9439cb8a2862b9c068d6e058c1d8e62322b25f.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0e7b18e90458c162a1889317dcb4946de332fa7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
