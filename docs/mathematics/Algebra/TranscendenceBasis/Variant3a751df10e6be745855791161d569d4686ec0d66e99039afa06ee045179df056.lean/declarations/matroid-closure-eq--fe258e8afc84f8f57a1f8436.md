# matroid_closure_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "719787d3972b07cbf7379dc9c356934a648993d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 328,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d866805c-2ddc-b93d-ae8d-b4289fea498f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a7fcc4e-aa33-0e5d-4ac7-5e0a7fffd10b",
  "kind": "theorem",
  "lexical_name": "matroid_closure_eq",
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
  "slug": "matroid-closure-eq--fe258e8afc84f8f57a1f8436",
  "source": {
    "blob": "719787d3972b07cbf7379dc9c356934a648993d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 328,
    "path": "GRWTSK/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe258e8afc84f8f57a1f8436aa942a15bb7a5816e901ae544a90c588a3d87db8",
  "verification": {
    "reference": "docs/verification/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a7fcc4e-aa33-0e5d-4ac7-5e0a7fffd10b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matroid_closure_eq [IsDomain A] {s : Set A} :
    (matroid R A).closure s = algebraicClosure (adjoin R s) A := by
  have ⟨B, hB⟩ := (matroid R A).exists_isBasis s
  simp_rw [← hB.closure_eq_closure, hB.1.1.1.closure_eq_setOf_isBasis_insert, Set.ext_iff,
    mem_setOf, matroid_isBasis_iff, ← matroid_indep_iff, hB.1.1.1, subset_insert, true_and,
    SetLike.mem_coe, mem_algebraicClosure, ← isAlgebraic_adjoin_iff_of_matroid_isBasis hB,
    forall_mem_insert]
  exact fun _ ↦ and_iff_left fun x hx ↦ isAlgebraic_algebraMap (⟨x, subset_adjoin hx⟩ : adjoin R B)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TranscendenceBasis/Variant3a751df10e6be745855791161d569d4686ec0d66e99039afa06ee045179df056.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `719787d3972b07cbf7379dc9c356934a648993d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
