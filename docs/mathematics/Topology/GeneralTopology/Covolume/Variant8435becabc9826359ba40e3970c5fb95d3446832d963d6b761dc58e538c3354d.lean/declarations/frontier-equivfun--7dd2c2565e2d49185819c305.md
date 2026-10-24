# frontier_equivFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38bfd271-6f5c-62bb-c61f-e0dc0e42227e",
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
  "slug": "frontier-equivfun--7dd2c2565e2d49185819c305",
  "source": {
    "blob": "27d6e0d0b791b553ec941145a34af57a38708e06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 261,
    "path": "GRWTSK/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dd2c2565e2d49185819c305f14654876737eb74a561ca6d5fa81994b16ced3e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38bfd271-6f5c-62bb-c61f-e0dc0e42227e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem frontier_equivFun {E : Type*} [AddCommGroup E] [Module ℝ E] {ι : Type*} [Fintype ι]
    [TopologicalSpace E] [IsTopologicalAddGroup E] [ContinuousSMul ℝ E] [T2Space E]
    (b : Basis ι ℝ E) (s : Set E) :
    frontier (b.equivFun '' s) = b.equivFun '' (frontier s) := by
  rw [LinearEquiv.image_eq_preimage, LinearEquiv.image_eq_preimage]
  exact (Homeomorph.preimage_frontier b.equivFunL.toHomeomorph.symm s).symm

variable {ι : Type*} [Fintype ι]
variable (L : Submodule ℤ (ι → ℝ)) [DiscreteTopology L] [IsZLattice ℝ L]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27d6e0d0b791b553ec941145a34af57a38708e06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
