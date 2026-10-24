# diagonalMainCoefficient_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0150a2fb-c4f0-3f0c-957f-8e6ce43a1e55",
  "kind": "theorem",
  "lexical_name": "diagonalMainCoefficient_hasDerivAt",
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
  "slug": "diagonalmaincoefficient-hasderivat--174c14d29118d4db8ec34f09",
  "source": {
    "blob": "61d105c5db95150bcde4b5f63180b4279b617403",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FullMaintermV2/Variant75f7b925baccec649fdf7cc7954b01c79319cd7cd7f35c21054f7974ec3f3060.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:174c14d29118d4db8ec34f0984be5caafdbaa392d5405aab818b68aaf5cc531c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FullMaintermV2/Variant75f7b925baccec649fdf7cc7954b01c79319cd7cd7f35c21054f7974ec3f3060.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0150a2fb-c4f0-3f0c-957f-8e6ce43a1e55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonalMainCoefficient_hasDerivAt {A : ℝ} (hA : 0 < A) :
    HasDerivAt diagonalMainCoefficient (diagonalCoefficientDerivative A) A := by
  have hz := (sourceNormalization_pos hA).ne'
  have hd := (hasDerivAt_const A (1024 : ℝ)).div
    ((sourceNormalization_hasDerivAt hA).const_mul 99225) (by positivity)
  convert hd using 1 <;> first
    | rfl
    | (dsimp [diagonalCoefficientDerivative, diagonalMainCoefficient]; field_simp; ring)

/-- Local C¹ of the actual diagonal coefficient, on its positive-scale domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FullMaintermV2/Variant75f7b925baccec649fdf7cc7954b01c79319cd7cd7f35c21054f7974ec3f3060.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FullMaintermV2/Variant75f7b925baccec649fdf7cc7954b01c79319cd7cd7f35c21054f7974ec3f3060.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61d105c5db95150bcde4b5f63180b4279b617403` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
