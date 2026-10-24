# HasFDerivAt.list_prod'

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
      "line": 515,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a9ac40abb691761c9d09a4870f886f03ec758b286e3685c1f31614e91d372950.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:339203f7-a9b0-b034-d4f4-82e290179fe1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6af38f8f-b06f-36cb-ae4b-99ce17e4ef72",
  "kind": "theorem",
  "lexical_name": "HasFDerivAt.list_prod'",
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
  "slug": "hasfderivat-list-prod--8c5bf7cb11249b76a94b4029",
  "source": {
    "blob": "5c625329be59e8f6f32f242efbf6ccb9e783f1c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 515,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Varianta9ac40abb691761c9d09a4870f886f03ec758b286e3685c1f31614e91d372950.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c5bf7cb11249b76a94b4029edfdcb7c89de50c52854801dc8a54bf38a27fddd",
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

Occurrence: `result:6af38f8f-b06f-36cb-ae4b-99ce17e4ef72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFDerivAt.list_prod' {l : List ι} {x : E}
    (h : ∀ i ∈ l, HasFDerivAt (f i ·) (f' i) x) :
    HasFDerivAt (fun x ↦ (l.map (f · x)).prod)
      (∑ i : Fin l.length, ((l.take i).map (f · x)).prod •
        f' l[i] <• ((l.drop (.succ i)).map (f · x)).prod) x := by
  simp_rw [Fin.getElem_fin, ← l.get_eq_getElem, ← List.map_get_finRange l, List.map_map]
  refine .congr_fderiv (hasFDerivAt_list_prod_finRange'.comp x
    (hasFDerivAt_pi.mpr fun i ↦ h (l.get i) (l.get_mem i)) :) ?_
  ext m
  simp_rw [List.map_take, List.map_drop, List.map_map, comp_apply, sum_apply, smul_apply,
    proj_apply, pi_apply, Function.comp_def]

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Mul/Varianta9ac40abb691761c9d09a4870f886f03ec758b286e3685c1f31614e91d372950.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Varianta9ac40abb691761c9d09a4870f886f03ec758b286e3685c1f31614e91d372950.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c625329be59e8f6f32f242efbf6ccb9e783f1c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
