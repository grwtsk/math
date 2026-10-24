# boundaryPeano_second_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3114d5a6-d416-ba99-6efe-d8ab19c58868",
  "kind": "theorem",
  "lexical_name": "boundaryPeano_second_deriv",
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
  "slug": "boundarypeano-second-deriv--2f6636d6b3c410b6ffed3b96",
  "source": {
    "blob": "9c6d7b97c9303c71fa0f47b54961cbae4e4f1548",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoBoundaryAtoms/Variant6aa4600ee864ec07b0b723df33faed6903f3ca68ac36925dce4853897229f72d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f6636d6b3c410b6ffed3b96a109b14c800173fd523728f5e4b10c110de97ba1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoBoundaryAtoms/Variant6aa4600ee864ec07b0b723df33faed6903f3ca68ac36925dce4853897229f72d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3114d5a6-d416-ba99-6efe-d8ab19c58868`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryPeano_second_deriv {A : ℝ} (hA : 0 < A) (y : ℝ) :
    deriv (deriv (boundaryPeano A)) y = Real.exp (-y / 2) * boundaryKernel A y := by
  rw [boundaryPeano_second_deriv_eq_scaled hA, sourcePeanoPrimitive_second_deriv hA]
  unfold peanoScale boundaryKernel
  have he : Real.exp (-A) * Real.exp ((2 * A - y) / 2) = Real.exp (-y / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  calc
    _ = A ^ 9 * (Real.exp (-A) * Real.exp ((2 * A - y) / 2)) *
        sourceCorrelation explicitSecondDerivative A (2 * A - y) := by ring
    _ = _ := by rw [he]; ring

/-- Positivity is transported only for the source primitive on its certified closed interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoBoundaryAtoms/Variant6aa4600ee864ec07b0b723df33faed6903f3ca68ac36925dce4853897229f72d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoBoundaryAtoms/Variant6aa4600ee864ec07b0b723df33faed6903f3ca68ac36925dce4853897229f72d.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c6d7b97c9303c71fa0f47b54961cbae4e4f1548` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
