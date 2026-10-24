# shortPlainSamplingAt_contDiffAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d5cf065-d2e0-b21b-9d4d-2c909099dc9d",
  "kind": "theorem",
  "lexical_name": "shortPlainSamplingAt_contDiffAt",
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
  "slug": "shortplainsamplingat-contdiffat--442c6b86285a4139911757ca",
  "source": {
    "blob": "9fd1671138d0e1d61d36f5bfb546b3f89bf2b49a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 264,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FullMaintermV1/Variant148f52c79ab30dc9cd21068e2825049db7b38da5f99b838b2d33d2e930c12fc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:442c6b86285a4139911757caacf91e826c27f92e835f5045b8299ab0b8f55f06",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FullMaintermV1/Variant148f52c79ab30dc9cd21068e2825049db7b38da5f99b838b2d33d2e930c12fc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d5cf065-d2e0-b21b-9d4d-2c909099dc9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shortPlainSamplingAt_contDiffAt {A : ℝ} (hA : 0 < A) (U : ℕ) :
    ContDiffAt ℝ 1 (fun B ↦ shortPlainSamplingAt B U) A := by
  apply ContDiffAt.sum
  intro d _
  apply ContDiffAt.sum
  intro m _
  exact contDiffAt_const.mul (sourcePlainSamplingMainTerm_contDiffAt hA ((d * m : ℕ) : ℝ))

/-- Independent formula for the full fixed-inventory derivative, never defined from deriv M. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FullMaintermV1/Variant148f52c79ab30dc9cd21068e2825049db7b38da5f99b838b2d33d2e930c12fc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FullMaintermV1/Variant148f52c79ab30dc9cd21068e2825049db7b38da5f99b838b2d33d2e930c12fc2.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fd1671138d0e1d61d36f5bfb546b3f89bf2b49a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
