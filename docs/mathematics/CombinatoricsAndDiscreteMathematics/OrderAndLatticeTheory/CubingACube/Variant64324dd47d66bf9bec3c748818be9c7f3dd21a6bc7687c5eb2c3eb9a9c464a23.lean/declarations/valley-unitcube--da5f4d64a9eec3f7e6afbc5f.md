# valley_unitCube

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf3d184c-e8d2-f183-3d47-0b6838ca2aa2",
  "kind": "theorem",
  "lexical_name": "valley_unitCube",
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
  "slug": "valley-unitcube--da5f4d64a9eec3f7e6afbc5f",
  "source": {
    "blob": "665ab04f8dd696df288baad6819bd671f1607043",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 234,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variant64324dd47d66bf9bec3c748818be9c7f3dd21a6bc7687c5eb2c3eb9a9c464a23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da5f4d64a9eec3f7e6afbc5f2734e024d8ee1c7df7ec2bacf1ca942cae773ec8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variant64324dd47d66bf9bec3c748818be9c7f3dd21a6bc7687c5eb2c3eb9a9c464a23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf3d184c-e8d2-f183-3d47-0b6838ca2aa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valley_unitCube [Nontrivial ι] (h : Correct cs) : Valley cs unitCube := by
  refine ⟨?_, ?_, ?_⟩
  · intro v
    simp only [bottom, and_imp, mem_iUnion, mem_ofPred_eq]
    intro h0 hv
    have : v ∈ (unitCube : Cube (n + 1)).toSet := by
      dsimp only [toSet, unitCube, mem_ofPred_eq]
      rw [forall_iff_succ, h0]; constructor
      · norm_num [side, unitCube]
      · exact hv
    rw [← h.2, mem_iUnion] at this; rcases this with ⟨i, hi⟩
    use i
    constructor
    · apply le_antisymm
      · rw [h0]; exact h.zero_le_b
      · exact (hi 0).1
    intro j; exact hi _
  · intro i _ _; rw [toSet_subset]; intro j; convert! h.side_subset using 1; simp [side_tail]
  · intro i _; exact h.w_ne_one i

/-- the cubes which lie in the valley `c` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variant64324dd47d66bf9bec3c748818be9c7f3dd21a6bc7687c5eb2c3eb9a9c464a23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variant64324dd47d66bf9bec3c748818be9c7f3dd21a6bc7687c5eb2c3eb9a9c464a23.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `665ab04f8dd696df288baad6819bd671f1607043` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
