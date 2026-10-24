# frontier_equivFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac4c33b9747034c47160e466e612fa157f61bef8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 307,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8bbc2f76-f554-39ec-a29d-226989346ae7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9685ecde-6a0d-dae0-2c97-c90ebefae44f",
  "kind": "theorem",
  "lexical_name": "frontier_equivFun",
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
  "slug": "frontier-equivfun--56dd5224465d3e4957d0f14b",
  "source": {
    "blob": "ac4c33b9747034c47160e466e612fa157f61bef8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 307,
    "path": "GRWTSK/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56dd5224465d3e4957d0f14bdf1235496304a334d4ff9f38b362876fb52d2adc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9685ecde-6a0d-dae0-2c97-c90ebefae44f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem frontier_equivFun {E : Type*} [AddCommGroup E] [Module ℝ E] {ι : Type*} [Finite ι]
    [TopologicalSpace E] [IsTopologicalAddGroup E] [ContinuousSMul ℝ E] [T2Space E]
    (b : Basis ι ℝ E) (s : Set E) :
    frontier (b.equivFun '' s) = b.equivFun '' (frontier s) := by
  rw [LinearEquiv.image_eq_preimage_symm, LinearEquiv.image_eq_preimage_symm]
  exact (Homeomorph.preimage_frontier b.equivFunL.toHomeomorph.symm s).symm

variable {ι : Type*} [Fintype ι]
variable (L : Submodule ℤ (ι → ℝ)) [DiscreteTopology L] [IsZLattice ℝ L]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac4c33b9747034c47160e466e612fa157f61bef8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
