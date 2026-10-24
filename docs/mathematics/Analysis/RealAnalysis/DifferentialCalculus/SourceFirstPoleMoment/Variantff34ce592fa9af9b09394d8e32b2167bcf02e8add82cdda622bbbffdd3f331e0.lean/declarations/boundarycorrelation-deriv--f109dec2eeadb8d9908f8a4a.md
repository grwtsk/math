# boundaryCorrelation_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b263823b-210b-0d63-a014-5a2c9f5242c0",
  "kind": "theorem",
  "lexical_name": "boundaryCorrelation_deriv",
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
  "slug": "boundarycorrelation-deriv--f109dec2eeadb8d9908f8a4a",
  "source": {
    "blob": "3daa8733b4de0c8f9a17cc512675df9a99841ea3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 157,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variantff34ce592fa9af9b09394d8e32b2167bcf02e8add82cdda622bbbffdd3f331e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f109dec2eeadb8d9908f8a4a304cb71742288b7e27464d4ea58a27f570a88921",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variantff34ce592fa9af9b09394d8e32b2167bcf02e8add82cdda622bbbffdd3f331e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b263823b-210b-0d63-a014-5a2c9f5242c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryCorrelation_deriv {A : ℝ} (hA : 1 ≤ A) (y : ℝ) :
    deriv (boundaryCorrelation A) y =
      -A^9 * deriv (sourceCorrelation explicitSecondDerivative A) (2*A-y) := by
  have hd := ((sourceCorrelation_contDiff A (show 0 < A by linarith)).differentiable
    (by norm_num) (2*A-y)).hasDerivAt
  have hi := (hasDerivAt_const y (2*A)).sub (hasDerivAt_id y)
  have hh := (hd.comp y hi).const_mul (A^9)
  change HasDerivAt (boundaryCorrelation A)
    (A^9 * (deriv (sourceCorrelation explicitSecondDerivative A) (2*A-y) * (0-1))) y at hh
  exact hh.deriv.trans (by ring)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variantff34ce592fa9af9b09394d8e32b2167bcf02e8add82cdda622bbbffdd3f331e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variantff34ce592fa9af9b09394d8e32b2167bcf02e8add82cdda622bbbffdd3f331e0.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3daa8733b4de0c8f9a17cc512675df9a99841ea3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
