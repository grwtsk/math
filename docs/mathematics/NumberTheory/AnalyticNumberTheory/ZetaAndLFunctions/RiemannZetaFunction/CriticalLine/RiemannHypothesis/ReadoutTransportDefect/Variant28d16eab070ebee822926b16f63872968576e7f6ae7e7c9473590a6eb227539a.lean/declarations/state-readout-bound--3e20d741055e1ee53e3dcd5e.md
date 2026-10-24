# state_readout_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0410692-3054-3d14-69f2-68cf8f39edce",
  "kind": "theorem",
  "lexical_name": "state_readout_bound",
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
  "slug": "state-readout-bound--3e20d741055e1ee53e3dcd5e",
  "source": {
    "blob": "702ff632751b13b0ef5657f61fefb357efe0babc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReadoutTransportDefect/Variant28d16eab070ebee822926b16f63872968576e7f6ae7e7c9473590a6eb227539a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e20d741055e1ee53e3dcd5e55a4334200312d34b05bae7a75d2ca2310395561",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReadoutTransportDefect/Variant28d16eab070ebee822926b16f63872968576e7f6ae7e7c9473590a6eb227539a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0410692-3054-3d14-69f2-68cf8f39edce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem state_readout_bound (K : ComplexL2 →L[ℂ] ComplexL2) (x y : ComplexL2) :
    |readout K x - readout K y| ≤ ‖K‖ * (‖x‖ + ‖y‖) * ‖x - y‖ := by
  rw [state_difference]
  calc
    _ ≤ |(inner ℂ (x - y) (K x)).re| + |(inner ℂ y (K (x - y))).re| := abs_add_le _ _
    _ ≤ ‖x - y‖ * ‖K x‖ + ‖y‖ * ‖K (x - y)‖ := by
      apply add_le_add
      · exact (Complex.abs_re_le_norm _).trans (norm_inner_le_norm _ _)
      · exact (Complex.abs_re_le_norm _).trans (norm_inner_le_norm _ _)
    _ ≤ ‖x - y‖ * (‖K‖ * ‖x‖) + ‖y‖ * (‖K‖ * ‖x - y‖) :=
      add_le_add (mul_le_mul_of_nonneg_left (K.le_opNorm x) (norm_nonneg _))
        (mul_le_mul_of_nonneg_left (K.le_opNorm (x - y)) (norm_nonneg _))
    _ = _ := by ring

/-- Changing the endpoint operator and endpoint state pays two different defects. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReadoutTransportDefect/Variant28d16eab070ebee822926b16f63872968576e7f6ae7e7c9473590a6eb227539a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReadoutTransportDefect/Variant28d16eab070ebee822926b16f63872968576e7f6ae7e7c9473590a6eb227539a.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `702ff632751b13b0ef5657f61fefb357efe0babc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
