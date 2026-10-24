# norm_integral_le_integral_norm_Ioc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7eeaf1fe-d196-87a4-540b-d67d475533b5",
  "kind": "theorem",
  "lexical_name": "norm_integral_le_integral_norm_Ioc",
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
  "slug": "norm-integral-le-integral-norm-ioc--7b8a723a468ea50f1b949c3c",
  "source": {
    "blob": "1ae36b1e8d39aa18e52042b54d92c73a6275ad51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 549,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntervalIntegral/Variant16ba8c4df89b64578a785e20b9bd4b7eac995412b3fac3de3d9015b88122934b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b8a723a468ea50f1b949c3c9c018fab9e7428eabc2f181c3459f00e7284db09",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntervalIntegral/Variant16ba8c4df89b64578a785e20b9bd4b7eac995412b3fac3de3d9015b88122934b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7eeaf1fe-d196-87a4-540b-d67d475533b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 549–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_integral_le_integral_norm_Ioc : ‖∫ x in a..b, f x ∂μ‖ ≤ ∫ x in Ι a b, ‖f x‖ ∂μ :=
  calc
    ‖∫ x in a..b, f x ∂μ‖ = ‖∫ x in Ι a b, f x ∂μ‖ := norm_integral_eq_norm_integral_Ioc f
    _ ≤ ∫ x in Ι a b, ‖f x‖ ∂μ := norm_integral_le_integral_norm f
#align interval_integral.norm_integral_le_integral_norm_Ioc intervalIntegral.norm_integral_le_integral_norm_Ioc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntervalIntegral/Variant16ba8c4df89b64578a785e20b9bd4b7eac995412b3fac3de3d9015b88122934b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntervalIntegral/Variant16ba8c4df89b64578a785e20b9bd4b7eac995412b3fac3de3d9015b88122934b.lean#L549).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ae36b1e8d39aa18e52042b54d92c73a6275ad51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
