# prod_eq_prod_iff_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ccd216da72ad3d19f85e35f0c972157a31379955",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 454,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2afa32d066471405e5f8a4d569eb09c3aa19fd26f65285587918061ac8cf62ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7002e8a-0a85-6c7b-bfe2-a3f13e3b983c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c7ca064-2386-8f43-a12e-5ca55fd2d631",
  "kind": "theorem",
  "lexical_name": "prod_eq_prod_iff_of_le",
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
  "slug": "prod-eq-prod-iff-of-le--ab53369630bdd39346160e26",
  "source": {
    "blob": "ccd216da72ad3d19f85e35f0c972157a31379955",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 454,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant2afa32d066471405e5f8a4d569eb09c3aa19fd26f65285587918061ac8cf62ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab53369630bdd39346160e267390612c37026ff27d23456ff54bc0e213dfb962",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variant2afa32d066471405e5f8a4d569eb09c3aa19fd26f65285587918061ac8cf62ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c7ca064-2386-8f43-a12e-5ca55fd2d631`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_eq_prod_iff_of_le {f g : ι → M} (h : ∀ i ∈ s, f i ≤ g i) :
    ((∏ i ∈ s, f i) = ∏ i ∈ s, g i) ↔ ∀ i ∈ s, f i = g i := by
  classical
    revert h
    refine Finset.induction_on s (fun _ ↦ ⟨fun _ _ h ↦ False.elim (Finset.notMem_empty _ h),
      fun _ ↦ rfl⟩) fun a s ha ih H ↦ ?_
    specialize ih fun i ↦ H i ∘ Finset.mem_insert_of_mem
    rw [Finset.prod_insert ha, Finset.prod_insert ha, Finset.forall_mem_insert, ← ih]
    exact
      mul_eq_mul_iff_eq_and_eq (H a (s.mem_insert_self a))
        (Finset.prod_le_prod' fun i ↦ H i ∘ Finset.mem_insert_of_mem)

variable [DecidableEq ι]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variant2afa32d066471405e5f8a4d569eb09c3aa19fd26f65285587918061ac8cf62ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant2afa32d066471405e5f8a4d569eb09c3aa19fd26f65285587918061ac8cf62ca.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccd216da72ad3d19f85e35f0c972157a31379955` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
