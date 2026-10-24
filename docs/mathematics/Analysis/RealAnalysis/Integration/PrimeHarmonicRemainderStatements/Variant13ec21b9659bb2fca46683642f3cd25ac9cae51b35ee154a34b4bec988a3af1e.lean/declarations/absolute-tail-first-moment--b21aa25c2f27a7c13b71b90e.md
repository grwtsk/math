# absolute_tail_first_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f56675a3-b7d9-e274-7e18-6b527e880138",
  "kind": "theorem",
  "lexical_name": "absolute_tail_first_moment",
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
  "slug": "absolute-tail-first-moment--b21aa25c2f27a7c13b71b90e",
  "source": {
    "blob": "37b57d66ada629b0053b1c084a9d9966d9b0b6cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 124,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b21aa25c2f27a7c13b71b90ef5e08039fdbf8ff1016ab3f27be16f8f2144136e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f56675a3-b7d9-e274-7e18-6b527e880138`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absolute_tail_first_moment :
    (∫ u in Ioi 0, u * ∫ v in Ioi u, |thetaLogError v|) =
      (1 / 2 : ℝ) * ∫ v in Ioi 0, v ^ 2 * |thetaLogError v| := by
  calc
    _ = ∫ u in Ioi 0, ∫ v in Ioi 0, tailKernel (u, v) := by
      apply integral_congr_ae
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
      exact (tailKernel_outer u hu.le).symm
    _ = ∫ v in Ioi 0, ∫ u in Ioi 0, tailKernel (u, v) :=
      integral_integral_swap tailKernel_integrable
    _ = ∫ v in Ioi 0, (1 / 2 : ℝ) * (v ^ 2 * |thetaLogError v|) := by
      apply integral_congr_ae
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with v hv
      exact tailKernel_fiber_integral v hv.le
    _ = _ := integral_const_mul _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderStatements/Variant13ec21b9659bb2fca46683642f3cd25ac9cae51b35ee154a34b4bec988a3af1e.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37b57d66ada629b0053b1c084a9d9966d9b0b6cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
