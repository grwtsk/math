# actualRieszLaplaceAtoms_integral_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5243e47-c151-6975-ba01-e753230cbc6c",
  "kind": "theorem",
  "lexical_name": "actualRieszLaplaceAtoms_integral_tsum",
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
  "slug": "actualrieszlaplaceatoms-integral-tsum--cc16db15aab3259ded53477b",
  "source": {
    "blob": "edbfba0eb766f1bafb48cc8a779f4ee7505c3861",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 366,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc16db15aab3259ded53477bcd343c3bbc6cbc85b0a1dfe7eb8f1475f97f138a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5243e47-c151-6975-ba01-e753230cbc6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRieszLaplaceAtoms_integral_tsum {z : ℂ} (hz : 1 / 2 < z.re) :
    (∫ t in Ioi 0, ∑' n : ℕ, actualRieszLaplaceAtom z n t) =
      ∑' n : ℕ, ∫ t in Ioi 0, actualRieszLaplaceAtom z n t := by
  exact (integral_tsum_of_summable_integral_norm
    (fun n => actualRieszLaplaceAtom_integrable (by linarith : 0 < z.re) n)
    (actualRieszLaplaceAtoms_summable_integral_norm hz)).symm

/-- Each genuine actual atom has its exact Dirichlet term as initial transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant88fa7f54c9c9682050908c6c82fcb169daacfbf6a3bcf70f6472d76fdf47050a.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edbfba0eb766f1bafb48cc8a779f4ee7505c3861` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
