# tailEnergyCoefficient_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49d0b847-70cd-5534-64d6-cbf17f0cb1a3",
  "kind": "theorem",
  "lexical_name": "tailEnergyCoefficient_antitone",
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
  "slug": "tailenergycoefficient-antitone--5e566612cac3dcb69bf1d28c",
  "source": {
    "blob": "f7ab97dc4ad7548d4760f0a3a0cf01e76f7ed35c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant2b802b93fb449d054427ff3a1132237c49026c65ffcee7eb69050e66c573120f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e566612cac3dcb69bf1d28cd5d904ecafc258371fbff73db6b79604b922b92d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant2b802b93fb449d054427ff3a1132237c49026c65ffcee7eb69050e66c573120f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49d0b847-70cd-5534-64d6-cbf17f0cb1a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tailEnergyCoefficient_antitone {R A : ℝ} (hR : 0 < R) (hRA : R ≤ A) :
    tailEnergyCoefficient A ≤ tailEnergyCoefficient R := by
  have hA : 0 < A := hR.trans_le hRA
  apply exact_ratio_mono (inv_nonneg.mpr (sq_nonneg A))
  apply inv_le_inv₀ (sq_pos_of_pos hA) (sq_pos_of_pos hR) |>.mpr
  nlinarith

/-- The exact energy, not the all-radius majorant, is applied to actual bytes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant2b802b93fb449d054427ff3a1132237c49026c65ffcee7eb69050e66c573120f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant2b802b93fb449d054427ff3a1132237c49026c65ffcee7eb69050e66c573120f.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7ab97dc4ad7548d4760f0a3a0cf01e76f7ed35c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
