# actualCriticalAdjustedColumnPrimitive_at_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3cc6be61-092a-2eca-b175-c7a9a38a5040",
  "kind": "theorem",
  "lexical_name": "actualCriticalAdjustedColumnPrimitive_at_lower",
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
  "slug": "actualcriticaladjustedcolumnprimitive-at-lower--9ffa8eea822030b97fdb2bdd",
  "source": {
    "blob": "96dec076113d24324d29582b1f6d7e9575102eb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 90,
    "path": "GRWTSK/Topology/GeneralTopology/RootActualCriticalColumnTransfer/Variant35037d48fa9807bd720e5a8ee52371a5f0dbcc4a0760514e85ffc1519138f137.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ffa8eea822030b97fdb2bdde7f06c4e822300acd173047488b92cf9d29fb916",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RootActualCriticalColumnTransfer/Variant35037d48fa9807bd720e5a8ee52371a5f0dbcc4a0760514e85ffc1519138f137.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cc6be61-092a-2eca-b175-c7a9a38a5040`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalAdjustedColumnPrimitive_at_lower (A : ℝ) :
    actualCriticalAdjustedColumnPrimitive A (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) =
      actualAdjointColumnPrimitive A (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) -
        actualCriticalColumnTraceMain A := by
  have he : Real.exp (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2) =
      Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
    rw [Real.exp_half, Real.exp_log (by positivity)]
  unfold actualCriticalAdjustedColumnPrimitive actualCriticalColumnTraceMain
  rw [he]
  ring

/-- This concrete lower correction has a quantitative budget including the terminal prefix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RootActualCriticalColumnTransfer/Variant35037d48fa9807bd720e5a8ee52371a5f0dbcc4a0760514e85ffc1519138f137.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RootActualCriticalColumnTransfer/Variant35037d48fa9807bd720e5a8ee52371a5f0dbcc4a0760514e85ffc1519138f137.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96dec076113d24324d29582b1f6d7e9575102eb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
