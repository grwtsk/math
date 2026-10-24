# alpha_dot_pole_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c717f8c-64c4-e35f-f6c7-fba773e04d40",
  "kind": "theorem",
  "lexical_name": "alpha_dot_pole_zero",
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
  "slug": "alpha-dot-pole-zero--fca857cc2a67b907b1a8a347",
  "source": {
    "blob": "87234d30297b66591c4e1c959975e922024acc37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 111,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeTransport/Variant0f607b513dd72c7bd01c9abede77f51fb51b0aa5f1f5f39e85a28c890e22cc38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fca857cc2a67b907b1a8a347d1a0621d43f888da72699c6273808dc6f98dc7a5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiveModeTransport/Variant0f607b513dd72c7bd01c9abede77f51fb51b0aa5f1f5f39e85a28c890e22cc38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c717f8c-64c4-e35f-f6c7-fba773e04d40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem alpha_dot_pole_zero (A : ℝ) (hA : 1 ≤ A) :
    (∑ i : Fin 5, alpha A i * poleMoment A i) = 0 := by
  have h := CorrelationMoment.positive_pole_zero A hA
  simp_rw [actual_source_reconstruction A hA] at h
  simp_rw [Finset.mul_sum] at h
  have heq (x : ℝ) (i : Fin 5) : Real.exp (x/2) *
      (alpha A i * normalizedMode A i x) =
      alpha A i * (Real.exp (x/2) * normalizedMode A i x) := by ring
  simp_rw [heq] at h
  rw [integral_finsetSum _ (fun i _ => (mode_pole_integrable A i).const_mul _)] at h
  simpa only [integral_const_mul, poleMoment] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeTransport/Variant0f607b513dd72c7bd01c9abede77f51fb51b0aa5f1f5f39e85a28c890e22cc38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeTransport/Variant0f607b513dd72c7bd01c9abede77f51fb51b0aa5f1f5f39e85a28c890e22cc38.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87234d30297b66591c4e1c959975e922024acc37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
