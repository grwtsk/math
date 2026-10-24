# hasStrictFDerivAt_list_prod_finRange'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c625329be59e8f6f32f242efbf6ccb9e783f1c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 408,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a9ac40abb691761c9d09a4870f886f03ec758b286e3685c1f31614e91d372950.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:69db4c90-f277-5367-f3f1-b440c37c41f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac5945f2-5d18-b56c-d2f5-48e49d391eb9",
  "kind": "theorem",
  "lexical_name": "hasStrictFDerivAt_list_prod_finRange'",
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
  "slug": "hasstrictfderivat-list-prod-finrange--752c6d251701670a0321954a",
  "source": {
    "blob": "5c625329be59e8f6f32f242efbf6ccb9e783f1c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 408,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Varianta9ac40abb691761c9d09a4870f886f03ec758b286e3685c1f31614e91d372950.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:752c6d251701670a0321954ad3751a7bcb93506d86c7b3073582c107d4598059",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Mul/Varianta9ac40abb691761c9d09a4870f886f03ec758b286e3685c1f31614e91d372950.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac5945f2-5d18-b56c-d2f5-48e49d391eb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasStrictFDerivAt_list_prod_finRange' {n : ℕ} {x : Fin n → 𝔸} :
    HasStrictFDerivAt (𝕜 := 𝕜) (fun x ↦ ((List.finRange n).map x).prod)
      (∑ i : Fin n, (((List.finRange n).take i).map x).prod •
        proj i <• (((List.finRange n).drop (.succ i)).map x).prod) x :=
  hasStrictFDerivAt_list_prod'.congr_fderiv <|
    Finset.sum_equiv (finCongr List.length_finRange) (by simp) (by simp)

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Mul/Varianta9ac40abb691761c9d09a4870f886f03ec758b286e3685c1f31614e91d372950.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Varianta9ac40abb691761c9d09a4870f886f03ec758b286e3685c1f31614e91d372950.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c625329be59e8f6f32f242efbf6ccb9e783f1c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
