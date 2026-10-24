# mem_set_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c64aa9956f9a2c4a8c4b0da1ad1fc2a6ca9600ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 439,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15baba2b-6aca-03d7-a571-8370644e87d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:855ef33a-98b4-cf05-7d06-aee0466959bd",
  "kind": "lemma",
  "lexical_name": "mem_set_smul",
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
  "slug": "mem-set-smul--7e4029b7d1faca65e832e645",
  "source": {
    "blob": "c64aa9956f9a2c4a8c4b0da1ad1fc2a6ca9600ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 439,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e4029b7d1faca65e832e645617a4bb8569c358a915cba328e7653b6f14c22c5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:855ef33a-98b4-cf05-7d06-aee0466959bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_set_smul (x : M) [SMulCommClass R R N] :
    x ∈ sR • N ↔ ∃ (c : R →₀ N), (c.support : Set R) ⊆ sR ∧ x = c.sum fun r m ↦ r • m := by
  fconstructor
  · intros h
    rw [set_smul_eq_map] at h
    obtain ⟨c, hc, rfl⟩ := h
    exact ⟨c, hc, rfl⟩
  · rw [mem_set_smul_def, Submodule.mem_sInf]
    rintro ⟨c, hc1, rfl⟩ p hp
    rw [Finsupp.sum, AddSubmonoid.coe_finset_sum]
    exact Submodule.sum_mem _ fun r hr ↦ hp (hc1 hr) (c _).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c64aa9956f9a2c4a8c4b0da1ad1fc2a6ca9600ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
