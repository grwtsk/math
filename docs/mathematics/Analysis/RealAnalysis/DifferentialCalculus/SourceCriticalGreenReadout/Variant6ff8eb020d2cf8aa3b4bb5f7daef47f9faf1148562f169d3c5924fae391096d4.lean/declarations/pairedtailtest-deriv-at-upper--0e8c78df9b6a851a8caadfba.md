# pairedTailTest_deriv_at_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d854f9b-317d-79cf-7b7a-3d014988e038",
  "kind": "theorem",
  "lexical_name": "pairedTailTest_deriv_at_upper",
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
  "slug": "pairedtailtest-deriv-at-upper--0e8c78df9b6a851a8caadfba",
  "source": {
    "blob": "dde468e3f6373a5ea9e643535b83a2bd28c215c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 140,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant6ff8eb020d2cf8aa3b4bb5f7daef47f9faf1148562f169d3c5924fae391096d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e8c78df9b6a851a8caadfbad4627f2fff0e562c8878a91fccd04cd03b17d53d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant6ff8eb020d2cf8aa3b4bb5f7daef47f9faf1148562f169d3c5924fae391096d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d854f9b-317d-79cf-7b7a-3d014988e038`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedTailTest_deriv_at_upper {A : ℝ} (hA : 1 ≤ A) :
    deriv (pairedTailTest A) (2 * A) = 0 := by
  have hp : 0 < A := by linarith
  have hg : deriv (criticalPrimeTest A) (2 * A) = 0 := by
    rw [criticalPrimeTest_deriv A (2 * A) hp, sourceCorrelation_upper_endpoint A hp,
      sourceCorrelation_deriv_zero_of_two_mul_le A (2 * A) hp le_rfl]
    simp
  rw [pairedTailTest_deriv hA]
  simp [positiveSlope, negativeSlope, hg]

/-- AC supplies genuine integrability and the exact zeroth and first curvature moments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant6ff8eb020d2cf8aa3b4bb5f7daef47f9faf1148562f169d3c5924fae391096d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant6ff8eb020d2cf8aa3b4bb5f7daef47f9faf1148562f169d3c5924fae391096d4.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dde468e3f6373a5ea9e643535b83a2bd28c215c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
