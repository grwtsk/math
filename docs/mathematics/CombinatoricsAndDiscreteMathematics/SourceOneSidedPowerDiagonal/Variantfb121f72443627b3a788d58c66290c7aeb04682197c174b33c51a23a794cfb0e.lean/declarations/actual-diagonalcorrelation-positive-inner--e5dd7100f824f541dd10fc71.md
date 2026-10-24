# actual_diagonalCorrelation_positive_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c802f42e-4f48-1f2b-8c13-9251905327ff",
  "kind": "theorem",
  "lexical_name": "actual_diagonalCorrelation_positive_inner",
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
  "slug": "actual-diagonalcorrelation-positive-inner--e5dd7100f824f541dd10fc71",
  "source": {
    "blob": "e153822936245340d43ff70976ee07c7274ec1ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 32,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerDiagonal/Variantfb121f72443627b3a788d58c66290c7aeb04682197c174b33c51a23a794cfb0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5dd7100f824f541dd10fc71198356da5a2ee92f0e4c8aeb8e41b9691bd80966",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerDiagonal/Variantfb121f72443627b3a788d58c66290c7aeb04682197c174b33c51a23a794cfb0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c802f42e-4f48-1f2b-8c13-9251905327ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_diagonalCorrelation_positive_inner (A n : ℝ) (hA : 91 ≤ A)
    (hn : 1 ≤ n) (hlog : Real.log n ≤ 3 * A / 10) :
    (1 / 10 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A (2 * Real.log n) := by
  apply actual_correlation_positive_inner A (2 * Real.log n) hA
  rw [abs_of_nonneg (by positivity : 0 ≤ 2 * Real.log n)]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerDiagonal/Variantfb121f72443627b3a788d58c66290c7aeb04682197c174b33c51a23a794cfb0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerDiagonal/Variantfb121f72443627b3a788d58c66290c7aeb04682197c174b33c51a23a794cfb0e.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e153822936245340d43ff70976ee07c7274ec1ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
