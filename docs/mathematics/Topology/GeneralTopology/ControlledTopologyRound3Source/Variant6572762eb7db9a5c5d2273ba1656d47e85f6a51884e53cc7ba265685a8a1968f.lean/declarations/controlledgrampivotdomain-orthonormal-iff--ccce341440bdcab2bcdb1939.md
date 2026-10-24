# controlledGramPivotDomain_orthonormal_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4de5620-8cca-0fa3-0417-9b997188029b",
  "kind": "theorem",
  "lexical_name": "controlledGramPivotDomain_orthonormal_iff",
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
  "slug": "controlledgrampivotdomain-orthonormal-iff--ccce341440bdcab2bcdb1939",
  "source": {
    "blob": "7ffa37b3436ed0f1462946b74d122bc898cbc5b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 45,
    "path": "GRWTSK/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccce341440bdcab2bcdb19393ed074b32ff36b6bef3cb8af511c5070b80ead02",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4de5620-8cca-0fa3-0417-9b997188029b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem controlledGramPivotDomain_orthonormal_iff (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) (I : Fin k ↪o Fin n) :
    A ∈ controlledGramPivotDomain I ↔ A ∈ controlledPivotDomain I := by
  have hδ : 0 ≤ controlledPivotThreshold k n := by
    unfold controlledPivotThreshold
    positivity
  change controlledPivotThreshold k n ^ 2 * (A * A.transpose).det < columnMinor A I ^ 2 ↔
    controlledPivotThreshold k n < |columnMinor A I|
  rw [hA, Matrix.det_one, mul_one, ← sq_abs (columnMinor A I)]
  exact sq_lt_sq₀ hδ (abs_nonneg _)

/-- Actual invertible row changes preserve the homogeneous controlled test. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ffa37b3436ed0f1462946b74d122bc898cbc5b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
