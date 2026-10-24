# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d07fd8f3d35a78470ab4c9560a02ea8a9cd824316324642b1f7b12b3fc504176",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--6e29bfd5cd49cb6df58310c3",
  "source": {
    "blob": "2ff92ae30c0038a118f262f0e939b9cd6ae0ff92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant9398be448347b9585e8c5eb4297d16705e1ac5861ad22896d91a99b47b5fc163.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e29bfd5cd49cb6df58310c3a02cc744d4c881c73505f8799cecc2d1ef56a794",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant9398be448347b9585e8c5eb4297d16705e1ac5861ad22896d91a99b47b5fc163.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d07fd8f3d35a78470ab4c9560a02ea8a9cd824316324642b1f7b12b3fc504176`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) completeSpace_of_cauSeq_isComplete [CauSeq.IsComplete β norm] :
    CompleteSpace β := by
  apply complete_of_cauchySeq_tendsto
  intro u hu
  have C : IsCauSeq norm u := isCauSeq_iff_cauchySeq.2 hu
  exists CauSeq.lim ⟨u, C⟩
  rw [Metric.tendsto_atTop]
  intro ε εpos
  obtain ⟨N, hN⟩ := (CauSeq.equiv_lim ⟨u, C⟩) _ εpos
  exists N
  simpa [dist_eq_norm] using hN
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant9398be448347b9585e8c5eb4297d16705e1ac5861ad22896d91a99b47b5fc163.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/CauSeqFilter/Variant9398be448347b9585e8c5eb4297d16705e1ac5861ad22896d91a99b47b5fc163.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ff92ae30c0038a118f262f0e939b9cd6ae0ff92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
