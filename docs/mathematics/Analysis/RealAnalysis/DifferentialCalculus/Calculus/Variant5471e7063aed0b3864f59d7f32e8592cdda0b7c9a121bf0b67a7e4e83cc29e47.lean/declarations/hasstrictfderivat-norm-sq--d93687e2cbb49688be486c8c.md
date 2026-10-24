# hasStrictFDerivAt_norm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66d3e0ee-1f75-e98e-d5aa-e5801055887c",
  "kind": "theorem",
  "lexical_name": "hasStrictFDerivAt_norm_sq",
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
  "slug": "hasstrictfderivat-norm-sq--d93687e2cbb49688be486c8c",
  "source": {
    "blob": "6a99336faa5fbbe2832fd98d5d6fe605a23e1a25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 230,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant5471e7063aed0b3864f59d7f32e8592cdda0b7c9a121bf0b67a7e4e83cc29e47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d93687e2cbb49688be486c8c62b9319b32a8e8a72e17d65c6f09898b0058f021",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant5471e7063aed0b3864f59d7f32e8592cdda0b7c9a121bf0b67a7e4e83cc29e47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66d3e0ee-1f75-e98e-d5aa-e5801055887c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasStrictFDerivAt_norm_sq (x : F) :
    HasStrictFDerivAt (fun x => ‖x‖ ^ 2) (2 • (innerSL ℝ x)) x := by
  simp only [sq, ← @inner_self_eq_norm_mul_norm ℝ]
  convert (hasStrictFDerivAt_id x).inner ℝ (hasStrictFDerivAt_id x)
  ext y
  simp [two_smul, real_inner_comm]
#align has_strict_fderiv_at_norm_sq hasStrictFDerivAt_norm_sqₓ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant5471e7063aed0b3864f59d7f32e8592cdda0b7c9a121bf0b67a7e4e83cc29e47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant5471e7063aed0b3864f59d7f32e8592cdda0b7c9a121bf0b67a7e4e83cc29e47.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a99336faa5fbbe2832fd98d5d6fe605a23e1a25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
