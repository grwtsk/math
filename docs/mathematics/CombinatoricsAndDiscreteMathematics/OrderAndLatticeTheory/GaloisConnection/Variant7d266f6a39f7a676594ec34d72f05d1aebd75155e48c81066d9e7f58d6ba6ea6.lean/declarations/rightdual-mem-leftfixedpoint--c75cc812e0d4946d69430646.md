# rightDual_mem_leftFixedPoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6163a7c7-dbbd-dfec-2bde-2565eaccd994",
  "kind": "theorem",
  "lexical_name": "rightDual_mem_leftFixedPoint",
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
  "slug": "rightdual-mem-leftfixedpoint--c75cc812e0d4946d69430646",
  "source": {
    "blob": "b8e0ed7dd8c1b87cfe2eefb103fd4e6b95c8760e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant7d266f6a39f7a676594ec34d72f05d1aebd75155e48c81066d9e7f58d6ba6ea6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c75cc812e0d4946d694306469102511c9f8601c229f296e7415b3a52f41ec51d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant7d266f6a39f7a676594ec34d72f05d1aebd75155e48c81066d9e7f58d6ba6ea6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6163a7c7-dbbd-dfec-2bde-2565eaccd994`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rightDual_mem_leftFixedPoint (I : Set β) : R.rightDual I ∈ R.leftFixedPoints := by
  apply le_antisymm
  · apply R.gc_leftDual_rightDual.monotone_u; exact R.gc_leftDual_rightDual.l_u_le I
  · exact R.gc_leftDual_rightDual.le_u_l (R.rightDual I)

/-- The maps `leftDual` and `rightDual` induce inverse bijections between the sets of fixed points.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant7d266f6a39f7a676594ec34d72f05d1aebd75155e48c81066d9e7f58d6ba6ea6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant7d266f6a39f7a676594ec34d72f05d1aebd75155e48c81066d9e7f58d6ba6ea6.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8e0ed7dd8c1b87cfe2eefb103fd4e6b95c8760e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
