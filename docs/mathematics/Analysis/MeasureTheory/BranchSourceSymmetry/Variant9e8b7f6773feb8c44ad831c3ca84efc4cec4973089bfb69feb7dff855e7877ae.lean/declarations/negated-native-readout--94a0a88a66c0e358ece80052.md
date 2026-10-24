# negated_native_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:621c8832-b65d-23a9-1113-911e94ebf5ec",
  "kind": "theorem",
  "lexical_name": "negated_native_readout",
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
  "slug": "negated-native-readout--94a0a88a66c0e358ece80052",
  "source": {
    "blob": "63c01733f7788a889c7bc2be0de4a14c373ac757",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 125,
    "path": "GRWTSK/Analysis/MeasureTheory/BranchSourceSymmetry/Variant9e8b7f6773feb8c44ad831c3ca84efc4cec4973089bfb69feb7dff855e7877ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94a0a88a66c0e358ece800525d379726128cb7fbc235ae1c73abf1a20898dba2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BranchSourceSymmetry/Variant9e8b7f6773feb8c44ad831c3ca84efc4cec4973089bfb69feb7dff855e7877ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:621c8832-b65d-23a9-1113-911e94ebf5ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negated_native_readout (A : ℝ) :
    sourceReadout A (fun x ↦ -normalizedTest explicitSecondDerivative A x) =
      closedPrimeMoment A := by
  rw [sourceReadout_neg, sourceReadout_native]

/-- Exact correlation preservation rules out strict scalar descent without any norm estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BranchSourceSymmetry/Variant9e8b7f6773feb8c44ad831c3ca84efc4cec4973089bfb69feb7dff855e7877ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BranchSourceSymmetry/Variant9e8b7f6773feb8c44ad831c3ca84efc4cec4973089bfb69feb7dff855e7877ae.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63c01733f7788a889c7bc2be0de4a14c373ac757` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
