# actualSourceQuadraticValue_scaled_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5b09640-1dc1-025f-19c6-0565b9312333",
  "kind": "theorem",
  "lexical_name": "actualSourceQuadraticValue_scaled_tendsto_zero",
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
  "slug": "actualsourcequadraticvalue-scaled-tendsto-zero--00ac062ea5b25ca7aa258834",
  "source": {
    "blob": "4110c5e72da6bcb2af67a3a2036d4ffc01fd765c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 198,
    "path": "GRWTSK/Topology/GeneralTopology/Fa629655470ac835e693c92db1a9c0f06f76100af7ce4a108aaca479e776766bSourceActualZero/Variantff7d634e50d480bf961996663fb7b4e5e59c9de7a2c9f2b4e9952322ab5c6f33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00ac062ea5b25ca7aa258834a2abe0274500111711f1c6daddbd20906e3246b4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Fa629655470ac835e693c92db1a9c0f06f76100af7ce4a108aaca479e776766bSourceActualZero/Variantff7d634e50d480bf961996663fb7b4e5e59c9de7a2c9f2b4e9952322ab5c6f33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5b09640-1dc1-025f-19c6-0565b9312333`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSourceQuadraticValue_scaled_tendsto_zero :
    Tendsto (fun A : ℝ => ((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
      (sourceQuadraticValue explicitSecondDerivative A : ℂ)) atTop (𝓝 0) := by
  apply actualFullZeroContribution_scaled_tendsto_zero.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  rw [actualFullZeroContribution_eq_original_sourceQuadraticValue A hA]

/-- The original arithmetic residual has the same relative decay, with its full signed inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Fa629655470ac835e693c92db1a9c0f06f76100af7ce4a108aaca479e776766bSourceActualZero/Variantff7d634e50d480bf961996663fb7b4e5e59c9de7a2c9f2b4e9952322ab5c6f33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Fa629655470ac835e693c92db1a9c0f06f76100af7ce4a108aaca479e776766bSourceActualZero/Variantff7d634e50d480bf961996663fb7b4e5e59c9de7a2c9f2b4e9952322ab5c6f33.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4110c5e72da6bcb2af67a3a2036d4ffc01fd765c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
