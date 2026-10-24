# intrinsicControlledPivotDomain_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d2fb0fb-a6ce-9e16-3633-4d097d3f65a2",
  "kind": "theorem",
  "lexical_name": "intrinsicControlledPivotDomain_cover",
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
  "slug": "intrinsiccontrolledpivotdomain-cover--59ae901c79c970c698cfbb41",
  "source": {
    "blob": "01298727189f364dc3445fecc3c88d291b915adc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 100,
    "path": "GRWTSK/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant4918f240f297cd71da3b9612ecf15a62f2fbde261e6510a5e80c43cb6b31116b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59ae901c79c970c698cfbb4133a439b6cfe57feafd547b6161c912f339f7f384",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant4918f240f297cd71da3b9612ecf15a62f2fbde261e6510a5e80c43cb6b31116b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d2fb0fb-a6ce-9e16-3633-4d097d3f65a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intrinsicControlledPivotDomain_cover (P : IntrinsicPlane k n) :
    ∃ I : Fin k ↪o Fin n, P ∈ intrinsicControlledPivotDomain I := by
  obtain ⟨A, I, hAP, hA, hI⟩ := intrinsicPlane_controlled_orthonormal_pivot P
  refine ⟨I, A, hAP, ?_⟩
  exact (controlledGramPivotDomain_orthonormal_iff A.val hA I).mpr hI

/-- The intrinsic open test is exactly the specified margin on every orthonormal representative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant4918f240f297cd71da3b9612ecf15a62f2fbde261e6510a5e80c43cb6b31116b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant4918f240f297cd71da3b9612ecf15a62f2fbde261e6510a5e80c43cb6b31116b.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01298727189f364dc3445fecc3c88d291b915adc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
