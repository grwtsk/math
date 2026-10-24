# isClosed_upperClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:deb312f3-9d15-ff9f-67f2-c40cc98ca02f",
  "kind": "theorem",
  "lexical_name": "isClosed_upperClosure",
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
  "slug": "isclosed-upperclosure--8f53f01dc8cf31c04f0d6fb5",
  "source": {
    "blob": "2bc14241f5b982e12a0e298db13243f055e059b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 295,
    "path": "GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant7122fffdc1c2a506017befd0ba426e28f59c43728166fb891f81cf0ce3237f7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f53f01dc8cf31c04f0d6fb5f1620cfe47e4c4ef245341cb578aa2e865880cc9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LowerUpperTopology/Variant7122fffdc1c2a506017befd0ba426e28f59c43728166fb891f81cf0ce3237f7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:deb312f3-9d15-ff9f-67f2-c40cc98ca02f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_upperClosure (h : s.Finite) : IsClosed (upperClosure s : Set α) := by
  simp only [← UpperSet.iInf_Ici, UpperSet.coe_iInf]
  exact isClosed_biUnion h fun _ _ => isClosed_Ici
#align lower_topology.is_closed_upper_closure LowerTopology.isClosed_upperClosure

/-- Every set open in the lower topology is a lower set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LowerUpperTopology/Variant7122fffdc1c2a506017befd0ba426e28f59c43728166fb891f81cf0ce3237f7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant7122fffdc1c2a506017befd0ba426e28f59c43728166fb891f81cf0ce3237f7b.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bc14241f5b982e12a0e298db13243f055e059b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
