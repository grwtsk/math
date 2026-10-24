# invVeblen₁_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a901adb5-5d2c-3019-7f89-c07775473629",
  "kind": "theorem",
  "lexical_name": "invVeblen₁_eq_iff",
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
  "slug": "invveblen-eq-iff--c5952770c28e90ce1b60053a",
  "source": {
    "blob": "0f0a1f413573b7272fc9a3830cfb4bb8bfa0e6f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 708,
    "line": 700,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Veblen/Variantbbc6b863e55684d8921226ae0e2645521263f2b02745ac6ee91c3b1f37f420ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5952770c28e90ce1b60053a7cef4ee400453c2ee9fcfbbd263124ab1545df14",
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

Occurrence: `result:a901adb5-5d2c-3019-7f89-c07775473629`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 700–708.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem invVeblen₁_eq_iff : invVeblen₁ o = o ↔ o = 0 ∨ o ∈ range Γ_ := by
  constructor
  · rw [mem_range_gamma, or_iff_not_imp_left]
    refine fun h ho ↦ (left_le_veblen ..).antisymm' ?_
    conv_rhs => rw [← veblen_eq_of_lt_invVeblen₁ (h.trans_ne ho).bot_lt, bot_eq_zero,
      veblen_zero_apply, ← veblen_invVeblen₁_invVeblen₂, h]
    simp
  · aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Veblen/Variantbbc6b863e55684d8921226ae0e2645521263f2b02745ac6ee91c3b1f37f420ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Veblen/Variantbbc6b863e55684d8921226ae0e2645521263f2b02745ac6ee91c3b1f37f420ac.lean#L700).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f0a1f413573b7272fc9a3830cfb4bb8bfa0e6f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
