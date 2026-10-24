# perfect_perfectKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63040d00-aafd-a02f-bbaa-d6060c41a234",
  "kind": "theorem",
  "lexical_name": "perfect_perfectKernel",
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
  "slug": "perfect-perfectkernel--554eb880264fd3fbc0a6742e",
  "source": {
    "blob": "3d1f1cdba86b16f634af58d6f4da03e25af41a2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 183,
    "path": "GRWTSK/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:554eb880264fd3fbc0a6742ee1d1f1ceed5b497a6b8277568dbbe5326a81e0b5",
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

Occurrence: `result:63040d00-aafd-a02f-bbaa-d6060c41a234`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perfect_perfectKernel (hs : IsClosed s) :
    Perfect (perfectKernel s) := by
  obtain ⟨a, ha⟩ := iteratedDerivedSet_mem_fixedPoints s
  rw [perfectKernel_eq_iteratedDerivedSet_of_mem_fixedPoints ha]
  refine perfect_iff_eq_derivedSet.mpr ?_
  simpa [(isClosed_iteratedDerivedSet hs a).relDerivedSet_eq] using
    (Function.mem_fixedPoints_iff.mp ha).symm

/-- Taking the perfect kernel of a closed set is idempotent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CantorBendixson/Variant57152ba20001961c53417eec425f0deeb9c82ca4469853baa4562ac991f579a3.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d1f1cdba86b16f634af58d6f4da03e25af41a2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
