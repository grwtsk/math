# norm_LFunction_le_of_two_le_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67a7e979-a8ae-1069-c1b6-7108d8a9a1b3",
  "kind": "theorem",
  "lexical_name": "norm_LFunction_le_of_two_le_re",
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
  "slug": "norm-lfunction-le-of-two-le-re--b93ccc68663d84287a68aedb",
  "source": {
    "blob": "0cd15a5b50841aff7a251ae4dc89a80f8a9d52fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 326,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b93ccc68663d84287a68aedb4bfe5a1be7738cc409c87e06620b0edf1261d058",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67a7e979-a8ae-1069-c1b6-7108d8a9a1b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_LFunction_le_of_two_le_re {s : ℂ} (hs : 2 ≤ s.re) :
    ‖χ.LFunction s‖ ≤ Real.pi ^ 2 / 6 := by
  have h := norm_LFunction_sub_one_le (χ := χ) hs
  have h' : ‖χ.LFunction s‖ ≤ ‖χ.LFunction s - 1‖ + ‖(1 : ℂ)‖ := by
    simpa using norm_le_norm_sub_add (χ.LFunction s) (1 : ℂ)
  simp only [norm_one] at h'
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cd15a5b50841aff7a251ae4dc89a80f8a9d52fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
