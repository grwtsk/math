# logOnePlus_second

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bb040af9eb0387ae07b6d0081250802b6c46fe8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e524f6e-c97a-77f9-a5f5-1ca767e68354",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ecc693a1-2ff8-dbd9-accf-ac2d7f545565",
  "kind": "theorem",
  "lexical_name": "logOnePlus_second",
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
  "slug": "logoneplus-second--0b1a4a1387b70a4d7494b7dd",
  "source": {
    "blob": "4bb040af9eb0387ae07b6d0081250802b6c46fe8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b1a4a1387b70a4d7494b7ddcdae68d543633c22c5f0a9b686fb8efd8e28cfbb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecc693a1-2ff8-dbd9-accf-ac2d7f545565`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logOnePlus_second (u : ℝ) (hu : 0 < u) :
    deriv (deriv logOnePlus) u = -1 / (1 + u) ^ 2 := by
  have heq : deriv logOnePlus =ᶠ[𝓝 u] (fun v : ℝ => (1 + v)⁻¹) := by
    filter_upwards [isOpen_Ioi.mem_nhds hu] with v hv
    exact (hasDerivAt_logOnePlus v hv).deriv
  rw [heq.deriv_eq]
  exact (hasDerivAt_logOnePlusSlope u hu).deriv

/-- The logarithmic chart has the usual reciprocal derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant51e184da5d1dc7893b4d6bd3085d2b495345d05bc600bdc3ab94f90f9501dae7.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bb040af9eb0387ae07b6d0081250802b6c46fe8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
