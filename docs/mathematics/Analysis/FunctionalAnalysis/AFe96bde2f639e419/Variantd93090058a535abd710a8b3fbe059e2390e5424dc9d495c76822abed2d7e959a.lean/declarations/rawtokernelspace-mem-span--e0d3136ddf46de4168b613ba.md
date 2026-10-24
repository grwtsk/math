# rawToKernelSpace_mem_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2801cc735dc6bf7919c915c138f4ff3d8222e08e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 20,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d93090058a535abd710a8b3fbe059e2390e5424dc9d495c76822abed2d7e959a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9719d07e-3043-f6fa-5c6e-f1a47c974ca3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29b50511-3d5e-f5d5-4e7c-3cbe4e626c6c",
  "kind": "theorem",
  "lexical_name": "rawToKernelSpace_mem_span",
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
  "slug": "rawtokernelspace-mem-span--e0d3136ddf46de4168b613ba",
  "source": {
    "blob": "2801cc735dc6bf7919c915c138f4ff3d8222e08e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 20,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/AFe96bde2f639e419/Variantd93090058a535abd710a8b3fbe059e2390e5424dc9d495c76822abed2d7e959a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0d3136ddf46de4168b613bab577b3820e30892c685a7d69da1f8019c71d03da",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/AFe96bde2f639e419/Variantd93090058a535abd710a8b3fbe059e2390e5424dc9d495c76822abed2d7e959a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29b50511-3d5e-f5d5-4e7c-3cbe4e626c6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawToKernelSpace_mem_span (f : Raw kernel) :
    rawToKernelSpace kernel f ∈ kernelSpan kernel := by
  classical
  induction f using Finsupp.induction with
  | zero =>
      exact (kernelSpan kernel).zero_mem
  | single_add index scalar tail _ _ inductionHypothesis =>
      rw [map_add]
      apply (kernelSpan kernel).add_mem
      · have basisMem : kernelVector kernel index ∈
            kernelSpan kernel :=
          Submodule.subset_span (Set.mem_range_self index)
        have scaledMem := (kernelSpan kernel).smul_mem scalar basisMem
        have singleEq :
            (Finsupp.single index scalar : Raw kernel) =
              scalar • Raw.basisVector kernel index := by
          ext candidate
          simp [Raw.basisVector]
        rw [singleEq, map_smul, rawToKernelSpace_basisVector]
        exact scaledMem
      · exact inductionHypothesis

end Mathematics.Hilbert
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/AFe96bde2f639e419/Variantd93090058a535abd710a8b3fbe059e2390e5424dc9d495c76822abed2d7e959a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/AFe96bde2f639e419/Variantd93090058a535abd710a8b3fbe059e2390e5424dc9d495c76822abed2d7e959a.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2801cc735dc6bf7919c915c138f4ff3d8222e08e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
