# blocks_partial_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2edcf0aa-bb4d-05b8-a160-043cd37c90ad",
  "kind": "theorem",
  "lexical_name": "blocks_partial_sum",
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
  "slug": "blocks-partial-sum--28ed05171ab2b7338a43cfd0",
  "source": {
    "blob": "743743d60cec862274d7d70ca71dbe0c2522cc39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 970,
    "line": 957,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Composition/Variant566c36549e08f786ba50a51dad2b33f8768face49e3733ab5641cd6a38747570.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28ed05171ab2b7338a43cfd09f0836a5f30a7371b60793b07c1385f903b9e91b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Composition/Variant566c36549e08f786ba50a51dad2b33f8768face49e3733ab5641cd6a38747570.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2edcf0aa-bb4d-05b8-a160-043cd37c90ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 957–970.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blocks_partial_sum {i : ℕ} (h : i < c.boundaries.card) :
    (c.blocks.take i).sum = c.boundary ⟨i, h⟩ := by
  induction' i with i IH
  · simp
  have A : i < c.blocks.length := by
    rw [c.card_boundaries_eq_succ_length] at h
    simp [blocks, Nat.lt_of_succ_lt_succ h]
  have B : i < c.boundaries.card := lt_of_lt_of_le A (by simp [blocks, length, Nat.sub_le])
  rw [sum_take_succ _ _ A, IH B]
  simp only [blocks, blocksFun, nthLe_ofFn']
  apply add_tsub_cancel_of_le
  simp
#align composition_as_set.blocks_partial_sum CompositionAsSet.blocks_partial_sum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Composition/Variant566c36549e08f786ba50a51dad2b33f8768face49e3733ab5641cd6a38747570.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Composition/Variant566c36549e08f786ba50a51dad2b33f8768face49e3733ab5641cd6a38747570.lean#L957).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `743743d60cec862274d7d70ca71dbe0c2522cc39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
