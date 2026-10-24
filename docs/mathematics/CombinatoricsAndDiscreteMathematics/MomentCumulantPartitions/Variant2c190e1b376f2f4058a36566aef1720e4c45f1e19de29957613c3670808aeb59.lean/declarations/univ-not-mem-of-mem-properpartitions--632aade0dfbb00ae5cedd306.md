# univ_not_mem_of_mem_properPartitions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53d64733-8b11-42b1-efc5-4559a4badd5b",
  "kind": "theorem",
  "lexical_name": "univ_not_mem_of_mem_properPartitions",
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
  "slug": "univ-not-mem-of-mem-properpartitions--632aade0dfbb00ae5cedd306",
  "source": {
    "blob": "1ea5a8e524e0066a07ed90ee91eae18e245b89f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 126,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:632aade0dfbb00ae5cedd3060e1c1d00a3fdeb6fcabf23266feacbbce1809475",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53d64733-8b11-42b1-efc5-4559a4badd5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem univ_not_mem_of_mem_properPartitions
    (n : ℕ) (hn : 0 < n)
    {P : DirectionPartition n}
    (hP : P ∈ properPartitions n hn) :
    (Finset.univ : Finset (Fin n)) ∉ P.parts := by
  intro hfull
  have hEq : P = oneBlockPartition n hn := by
    apply le_antisymm
    · intro B hB
      refine ⟨(Finset.univ : Finset (Fin n)), ?_, P.le hB⟩
      simp [oneBlockPartition_parts]
    · intro B hB
      have hBu : B = (Finset.univ : Finset (Fin n)) := by
        simpa [oneBlockPartition_parts] using hB
      subst B
      exact ⟨(Finset.univ : Finset (Fin n)), hfull, le_rfl⟩
  exact (Finset.mem_erase.mp hP).1 hEq

/-- Partition weights agree on a proper partition when the block functionals
agree away from the full block. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant2c190e1b376f2f4058a36566aef1720e4c45f1e19de29957613c3670808aeb59.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ea5a8e524e0066a07ed90ee91eae18e245b89f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
