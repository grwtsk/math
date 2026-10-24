# actual_positiveMass_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d8c9573-1f38-7011-9561-e436a4df79b8",
  "kind": "theorem",
  "lexical_name": "actual_positiveMass_pos",
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
  "slug": "actual-positivemass-pos--ad5581a782ec5332a455b1fb",
  "source": {
    "blob": "c9d01ac84a34101da8c4a798b87f462fb246b960",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 18,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPhaseCurvatureAttempt03/Variant855645ee007078af2ebd7112e1744671026cadb3fcf62c5e3cdb47c889df5a86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad5581a782ec5332a455b1fbc4ce665f182f6c546798f59a82ca137e9fd9bbca",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPhaseCurvatureAttempt03/Variant855645ee007078af2ebd7112e1744671026cadb3fcf62c5e3cdb47c889df5a86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d8c9573-1f38-7011-9561-e436a4df79b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_positiveMass_pos {A : ℝ} (hA : 1≤A) : 0<positiveMass A := by
  unfold positiveMass
  apply intervalIntegral.integral_pos (by linarith : (0:ℝ)<2*A)
    (positiveSlope_continuous (by linarith : 0<A)).continuousOn
    (fun u _ => positiveSlope_nonneg A u)
  refine ⟨0,⟨le_rfl,by linarith⟩,?_⟩
  rw [positiveSlope_at_zero hA]
  norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPhaseCurvatureAttempt03/Variant855645ee007078af2ebd7112e1744671026cadb3fcf62c5e3cdb47c889df5a86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPhaseCurvatureAttempt03/Variant855645ee007078af2ebd7112e1744671026cadb3fcf62c5e3cdb47c889df5a86.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9d01ac84a34101da8c4a798b87f462fb246b960` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
