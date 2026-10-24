# weightedSource_continuousOn_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6c4fde8-878a-0744-63b4-094351a648f5",
  "kind": "theorem",
  "lexical_name": "weightedSource_continuousOn_Icc",
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
  "slug": "weightedsource-continuouson-icc--b1838d986d3091579f13d1ef",
  "source": {
    "blob": "5642226a22f8e4aed7932e83090b4a56b70167d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 503,
    "path": "GRWTSK/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1838d986d3091579f13d1ef349df6618d8817afed9203de39f2aea4337870db",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6c4fde8-878a-0744-63b4-094351a648f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 503–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedSource_continuousOn_Icc
    (B : ℝ) (hB : 1 ≤ B) :
    ContinuousOn
      (fun A : ℝ ↦ (weightedSource A : ℂ))
      (Icc (1 : ℝ) B) := by
  refine (expanded_sum_continuousOn_Icc B hB).congr ?_
  intro A hA
  exact (equation17 A hA.1).2.symm

/-- The weighted source remains the real-valued source family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean#L503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5642226a22f8e4aed7932e83090b4a56b70167d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
