# coroot'_apply_apply_mem_of_mem_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4f7e07fe5052bfb1d4e27345a06833fa900fdd5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00e0b959-2416-be0e-ac50-52803529cf44",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9054bcf1-891c-62a9-320e-fd9d4193ee9b",
  "kind": "lemma",
  "lexical_name": "coroot'_apply_apply_mem_of_mem_span",
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
  "slug": "coroot-apply-apply-mem-of-mem-span--82941eca24ab52f8041d9d82",
  "source": {
    "blob": "c4f7e07fe5052bfb1d4e27345a06833fa900fdd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 107,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82941eca24ab52f8041d9d820374a9fc858ed305dceac6aaa37f7e696ba0a443",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9054bcf1-891c-62a9-320e-fd9d4193ee9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coroot'_apply_apply_mem_of_mem_span [Module S M] [IsScalarTower S R M] [P.IsValuedIn S]
    {x : M} (hx : x ∈ span S (range P.root)) (i : ι) :
    P.coroot' i x ∈ range (algebraMap S R) := by
  rw [show range (algebraMap S R) = LinearMap.range (Algebra.linearMap S R) by ext; simp]
  induction hx using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨k, rfl⟩ := hx
    simpa using RootPairing.exists_value k i
  | zero => simp
  | add x y _ _ hx hy => simpa only [map_add] using add_mem hx hy
  | smul t x _ hx => simpa only [LinearMap.map_smul_of_tower] using Submodule.smul_mem _ t hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4f7e07fe5052bfb1d4e27345a06833fa900fdd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
