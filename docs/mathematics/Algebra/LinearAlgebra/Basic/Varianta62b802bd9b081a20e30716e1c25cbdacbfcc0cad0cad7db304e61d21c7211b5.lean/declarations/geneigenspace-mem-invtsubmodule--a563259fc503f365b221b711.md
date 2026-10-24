# genEigenspace_mem_invtSubmodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de4180f04893b0a4f45fb821c47dc36e8ac22963",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 490,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a62b802bd9b081a20e30716e1c25cbdacbfcc0cad0cad7db304e61d21c7211b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3bed21f8-4224-fe9a-ac01-74848b0ad9b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e8fdba8-9540-d7a2-29e1-a8e6b8b6fd2f",
  "kind": "theorem",
  "lexical_name": "genEigenspace_mem_invtSubmodule",
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
  "slug": "geneigenspace-mem-invtsubmodule--a563259fc503f365b221b711",
  "source": {
    "blob": "de4180f04893b0a4f45fb821c47dc36e8ac22963",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 490,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta62b802bd9b081a20e30716e1c25cbdacbfcc0cad0cad7db304e61d21c7211b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a563259fc503f365b221b711759a4fb340013e0c2d4e49da2072e74d12fb12ce",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianta62b802bd9b081a20e30716e1c25cbdacbfcc0cad0cad7db304e61d21c7211b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e8fdba8-9540-d7a2-29e1-a8e6b8b6fd2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 490–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem genEigenspace_mem_invtSubmodule (f : End R M) (μ : R) (n : ℕ∞) :
    genEigenspace f μ n ∈ invtSubmodule f := by
  intro x hx
  simp only [Submodule.mem_comap, mem_genEigenspace, LinearMap.mem_ker] at hx ⊢
  obtain ⟨k, hk, hx⟩ := hx
  refine ⟨k, hk, ?_⟩
  induction k generalizing x
  case zero => simp_all
  case succ k ih =>
    rw [pow_succ, mul_apply] at hx ⊢
    simpa using ih (le_trans (by simp) hk) hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta62b802bd9b081a20e30716e1c25cbdacbfcc0cad0cad7db304e61d21c7211b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianta62b802bd9b081a20e30716e1c25cbdacbfcc0cad0cad7db304e61d21c7211b5.lean#L490).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de4180f04893b0a4f45fb821c47dc36e8ac22963` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
