# actualRiesz_continuousMoment_eq_neg_magnitude

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f0cf1eb-a5c9-7b93-5bcd-1170539aac6b",
  "kind": "theorem",
  "lexical_name": "actualRiesz_continuousMoment_eq_neg_magnitude",
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
  "slug": "actualriesz-continuousmoment-eq-neg-magnitude--0060961af6a7eb433f8eaeeb",
  "source": {
    "blob": "8da4ea89423feb460a515ea5d60d64b14782d9e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 251,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative02/Variantcce1568be66fb02b7d7c17d97b5ec88dea2273c30f9d50588b09167014fe0bfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0060961af6a7eb433f8eaeeb86139615c1366ecfc2995f5272a59cc4d23adaf4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative02/Variantcce1568be66fb02b7d7c17d97b5ec88dea2273c30f9d50588b09167014fe0bfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f0cf1eb-a5c9-7b93-5bcd-1170539aac6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRiesz_continuousMoment_eq_neg_magnitude {A : ℝ} (hA : 1 ≤ A) :
    criticalContinuousMoment A = -actualRieszContinuousMagnitude A := by
  rw [criticalContinuousMoment_eq_rational hA]
  unfold actualRieszContinuousMagnitude
  ring

end FormalResearch.RiemannHypothesis.SourceActualRieszCenteredReconstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative02/Variantcce1568be66fb02b7d7c17d97b5ec88dea2273c30f9d50588b09167014fe0bfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative02/Variantcce1568be66fb02b7d7c17d97b5ec88dea2273c30f9d50588b09167014fe0bfb.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8da4ea89423feb460a515ea5d60d64b14782d9e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
