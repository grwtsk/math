# sampling_term_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8eddb159-767f-d935-6f2f-af1d2e5ea7de",
  "kind": "theorem",
  "lexical_name": "sampling_term_hasDerivAt",
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
  "slug": "sampling-term-hasderivat--67ad800dadf9980142ebc14a",
  "source": {
    "blob": "12763c93fe480ed3f488ba77164f8737646ac1af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 39,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant215d32fd19eb4f2f66a6a50e8df67910bee6f45d4ce0e7c7459061322cc5e5a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67ad800dadf9980142ebc14aa5d6ce32823f6144d9f1a0ddc971e467e12cee25",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant215d32fd19eb4f2f66a6a50e8df67910bee6f45d4ce0e7c7459061322cc5e5a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8eddb159-767f-d935-6f2f-af1d2e5ea7de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sampling_term_hasDerivAt (A x k : ℝ) (hA : 1 ≤ A) (hx : 0 < x) (hk : 0 < k) :
    HasDerivAt (fun y : ℝ ↦ Real.log k / Real.sqrt (y * k) *
      sourceCorrelation explicitSecondDerivative A (Real.log (y * k)))
      (1 / x * (Real.log k / Real.sqrt (x * k) *
        correlationDifference A (Real.log (x * k)))) x := by
  have hprod : x * k ≠ 0 := (mul_pos hx hk).ne'
  have hsqrt : Real.sqrt (x * k) ≠ 0 := (Real.sqrt_pos.mpr (mul_pos hx hk)).ne'
  have hm : HasDerivAt (fun y : ℝ ↦ y * k) k x := by
    simpa only [id_eq, one_mul] using (hasDerivAt_id x).mul_const k
  have hc := ((contDiff_one_iff_deriv.mp
    (sourceCorrelation_contDiff A (by linarith))).1 (Real.log (x * k))).hasDerivAt
  apply HasDerivAt.congr_deriv
    (((hasDerivAt_const x (Real.log k)).div (hm.sqrt hprod) hsqrt).mul
      (hc.comp x (hm.log hprod)))
  unfold correlationDifference
  dsimp only [Function.comp_apply, Pi.div_apply]
  field_simp [hx.ne', hk.ne', hsqrt]
  ring_nf
  rw [Real.sq_sqrt (mul_pos hx hk).le]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant215d32fd19eb4f2f66a6a50e8df67910bee6f45d4ce0e7c7459061322cc5e5a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant215d32fd19eb4f2f66a6a50e8df67910bee6f45d4ce0e7c7459061322cc5e5a0.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12763c93fe480ed3f488ba77164f8737646ac1af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
