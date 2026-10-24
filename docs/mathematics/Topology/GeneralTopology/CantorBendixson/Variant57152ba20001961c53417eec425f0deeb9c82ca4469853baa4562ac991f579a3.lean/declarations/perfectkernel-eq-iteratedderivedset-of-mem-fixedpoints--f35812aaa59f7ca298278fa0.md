# perfectKernel_eq_iteratedDerivedSet_of_mem_fixedPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7672712-a5cc-8b8d-9500-bcbe37e0fb82",
  "kind": "theorem",
  "lexical_name": "perfectKernel_eq_iteratedDerivedSet_of_mem_fixedPoints",
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
  "slug": "perfectkernel-eq-iteratedderivedset-of-mem-fixedpoints--f35812aaa59f7ca298278fa0",
  "source": {
    "blob": "3d1f1cdba86b16f634af58d6f4da03e25af41a2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 165,
    "path": "GRWTSK/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f35812aaa59f7ca298278fa0594b8889e77784b1b7b6819bff46e099e9005a01",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7672712-a5cc-8b8d-9500-bcbe37e0fb82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perfectKernel_eq_iteratedDerivedSet_of_mem_fixedPoints
    (ha : sᵈ[a] ∈ fixedPoints relDerivedSet) :
    perfectKernel s = sᵈ[a] := by
  refine le_antisymm (perfectKernel_subset_iteratedDerivedSet s a) ?_
  refine Set.subset_iInter fun i => ?_
  rcases lt_or_ge i a with hi | hi
  · exact iteratedDerivedSet_antitone s hi.le
  · exact (gfpApprox_eq_of_mem_fixedPoints relDerivedSet hi ha).ge

/-- Every perfect subset of a set is contained in its perfect kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d1f1cdba86b16f634af58d6f4da03e25af41a2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
