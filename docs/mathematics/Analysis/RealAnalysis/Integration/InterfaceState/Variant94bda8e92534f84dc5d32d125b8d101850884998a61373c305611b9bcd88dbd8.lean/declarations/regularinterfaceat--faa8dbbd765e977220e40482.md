# RegularInterfaceAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:399c5abd4105f130bf95e70b4ec056bc46848511b419f5a0ada6d1e7ed83c289",
  "kind": "structure",
  "lexical_name": "RegularInterfaceAt",
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
  "slug": "regularinterfaceat--faa8dbbd765e977220e40482",
  "source": {
    "blob": "7b9c7ad58f1d57e6a324eeca5cf8d0becc564f7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 192,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InterfaceState/Variant94bda8e92534f84dc5d32d125b8d101850884998a61373c305611b9bcd88dbd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:faa8dbbd765e977220e40482abc2945a67ca8d05e9d2de6472b2d46c6cdf9712",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InterfaceState/Variant94bda8e92534f84dc5d32d125b8d101850884998a61373c305611b9bcd88dbd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:399c5abd4105f130bf95e70b4ec056bc46848511b419f5a0ada6d1e7ed83c289`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RegularInterfaceAt (level : ℝ → Space → ℝ) (time : ℝ) : Prop where
  /-- The global sign representation is continuous at this time. -/
  levelContinuous : Continuous (level time)
  /-- The negative phase really has this interface as its entire boundary. -/
  minusBoundary : frontier (minusRegion (level time)) = interfaceSet (level time)
  /-- The positive phase really has this interface as its entire boundary. -/
  plusBoundary : frontier (plusRegion (level time)) = interfaceSet (level time)
  /-- Joint local C1 regularity permits interpreting the zero set as a moving level surface. -/
  spaceTimeLevel : ∀ x ∈ interfaceSet (level time),
    ContDiffAt ℝ 1 (fun z : ℝ × Space => level z.1 z.2) (time, x)
  /-- A time derivative exists at every interface point. -/
  timeLevel : ∀ x ∈ interfaceSet (level time), DifferentiableAt ℝ (fun t => level t x) time
  /-- A spatial gradient exists at every interface point. -/
  spaceLevel : ∀ x ∈ interfaceSet (level time), DifferentiableAt ℝ (level time) x
  /-- Regularity excludes a vanishing normal at every interface point. -/
  gradientNonzero : ∀ x ∈ interfaceSet (level time), gradient (level time) x ≠ 0
  /-- The normal field has the derivative used to define curvature. -/
  normalDerivative : ∀ x ∈ interfaceSet (level time),
    DifferentiableAt ℝ (interfaceNormal (level time)) x

/-- The negative bulk phase of a regular interface is open. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InterfaceState/Variant94bda8e92534f84dc5d32d125b8d101850884998a61373c305611b9bcd88dbd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InterfaceState/Variant94bda8e92534f84dc5d32d125b8d101850884998a61373c305611b9bcd88dbd8.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b9c7ad58f1d57e6a324eeca5cf8d0becc564f7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
