# isMax_of_succFn_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "733efb872ae3c3ab2e3419290b3e0e74a5f5eedc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa903116-6a84-8718-3863-b663d9083caa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:beda74f9-7e70-c64c-e8a9-a0543116f50c",
  "kind": "theorem",
  "lexical_name": "isMax_of_succFn_le",
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
  "slug": "ismax-of-succfn-le--db35fa137ece6905b2b32739",
  "source": {
    "blob": "733efb872ae3c3ab2e3419290b3e0e74a5f5eedc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 119,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db35fa137ece6905b2b327396126675b9a29f4601c6b4e3923250519e9343422",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:beda74f9-7e70-c64c-e8a9-a0543116f50c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMax_of_succFn_le [LocallyFiniteOrder ι] (i : ι) (hi : succFn i ≤ i) : IsMax i := by
  refine fun j _ ↦ not_lt.mp fun hij_lt ↦ ?_
  have h_succFn_eq : succFn i = i := le_antisymm hi (le_succFn i)
  have h_glb : IsGLB (Finset.Ioc i j : Set ι) i := by
    rw [Finset.coe_Ioc]
    have h := succFn_spec i
    rw [h_succFn_eq] at h
    exact isGLB_Ioc_of_isGLB_Ioi hij_lt h
  have hi_mem : i ∈ Finset.Ioc i j := by
    refine Finset.isGLB_mem _ h_glb ?_
    exact ⟨_, Finset.mem_Ioc.mpr ⟨hij_lt, le_rfl⟩⟩
  rw [Finset.mem_Ioc] at hi_mem
  exact lt_irrefl i hi_mem.1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `733efb872ae3c3ab2e3419290b3e0e74a5f5eedc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
