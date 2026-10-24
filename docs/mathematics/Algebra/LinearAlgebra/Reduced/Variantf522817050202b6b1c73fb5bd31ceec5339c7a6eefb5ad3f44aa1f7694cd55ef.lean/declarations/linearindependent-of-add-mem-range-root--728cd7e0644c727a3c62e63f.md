# linearIndependent_of_add_mem_range_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6eda5c8-02ea-4541-a511-4e1f6f72b2f0",
  "kind": "lemma",
  "lexical_name": "linearIndependent_of_add_mem_range_root",
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
  "slug": "linearindependent-of-add-mem-range-root--728cd7e0644c727a3c62e63f",
  "source": {
    "blob": "4913c743b0f911d113e76ed0fccbf0b833d01185",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 96,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:728cd7e0644c727a3c62e63f8a2c38e6f0df5ecf15abdacb820a075dc427d6f8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6eda5c8-02ea-4541-a511-4e1f6f72b2f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma linearIndependent_of_add_mem_range_root
    [NeZero (2 : R)] [NoZeroSMulDivisors ℤ M] [P.IsReduced] {i j : ι}
    (h : P.root i + P.root j ∈ range P.root) :
    LinearIndependent R ![P.root i, P.root j] := by
  refine IsReduced.linearIndependent P (fun hij ↦ ?_) (fun hij ↦ P.zero_notMem_range_root ?_)
  · rw [hij, ← two_smul (R := R)] at h
    exact P.two_smul_notMem_range_root h
  · rwa [hij, neg_add_cancel] at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4913c743b0f911d113e76ed0fccbf0b833d01185` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
