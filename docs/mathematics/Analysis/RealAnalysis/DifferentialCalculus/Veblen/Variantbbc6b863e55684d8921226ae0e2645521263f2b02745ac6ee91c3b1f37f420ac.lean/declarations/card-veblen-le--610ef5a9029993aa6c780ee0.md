# card_veblen_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edd5fa0e-c01a-4ff5-0304-5a62f6a9b71f",
  "kind": "theorem",
  "lexical_name": "card_veblen_le",
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
  "slug": "card-veblen-le--610ef5a9029993aa6c780ee0",
  "source": {
    "blob": "0f0a1f413573b7272fc9a3830cfb4bb8bfa0e6f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 727,
    "line": 716,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Veblen/Variantbbc6b863e55684d8921226ae0e2645521263f2b02745ac6ee91c3b1f37f420ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:610ef5a9029993aa6c780ee0ea4b3f54f56d71fcaa6d1bb9771826e7949983df",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Veblen/Variantbbc6b863e55684d8921226ae0e2645521263f2b02745ac6ee91c3b1f37f420ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edd5fa0e-c01a-4ff5-0304-5a62f6a9b71f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 716–727.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_veblen_le (a b : Ordinal) : (veblen a b).card ≤ max (max a.card b.card) ℵ₀ := by
  induction a using WellFoundedLT.induction generalizing b with
  | ind a ih =>
    obtain rfl | ha := eq_or_ne a 0
    · simpa [Or.comm] using card_opow_le ω b
    rw [veblen_of_ne_zero ha, ← max_right_comm]
    apply card_derivFamily_le (le_max_right _ _) (by simp)
    intro i x
    grw [ih i i.2 x, max_right_comm]
    apply sup_le_sup_right (c := x.card) <| sup_le_sup_right ?_ ℵ₀
    simp [card_le_card i.2.le]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Veblen/Variantbbc6b863e55684d8921226ae0e2645521263f2b02745ac6ee91c3b1f37f420ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Veblen/Variantbbc6b863e55684d8921226ae0e2645521263f2b02745ac6ee91c3b1f37f420ac.lean#L716).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f0a1f413573b7272fc9a3830cfb4bb8bfa0e6f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
