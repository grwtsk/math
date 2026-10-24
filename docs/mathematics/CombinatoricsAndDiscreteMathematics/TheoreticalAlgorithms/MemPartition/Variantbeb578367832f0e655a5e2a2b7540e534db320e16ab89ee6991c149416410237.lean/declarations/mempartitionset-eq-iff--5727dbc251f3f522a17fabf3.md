# memPartitionSet_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c22ec058-0dec-ee5f-59cb-04f9ab5ed89d",
  "kind": "lemma",
  "lexical_name": "memPartitionSet_eq_iff",
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
  "slug": "mempartitionset-eq-iff--5727dbc251f3f522a17fabf3",
  "source": {
    "blob": "de82a8a22c6768a1b8931009cdb912e34e74be40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 148,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5727dbc251f3f522a17fabf36701c8806688c981d1954f673e72ab1ecbaac2ca",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c22ec058-0dec-ee5f-59cb-04f9ab5ed89d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma memPartitionSet_eq_iff {f : ℕ → Set α} {n : ℕ} (a : α) {s : Set α}
    (hs : s ∈ memPartition f n) :
    memPartitionSet f n a = s ↔ a ∈ s := by
  refine ⟨fun h ↦ h ▸ mem_memPartitionSet f n a, fun h ↦ ?_⟩
  by_contra h_ne
  have h_disj : Disjoint s (memPartitionSet f n a) :=
    disjoint_memPartition f n hs (memPartitionSet_mem f n a) (Ne.symm h_ne)
  refine absurd h_disj ?_
  rw [not_disjoint_iff_nonempty_inter]
  exact ⟨a, h, mem_memPartitionSet f n a⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantbeb578367832f0e655a5e2a2b7540e534db320e16ab89ee6991c149416410237.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de82a8a22c6768a1b8931009cdb912e34e74be40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
