# IsSimpleModule.finrank_eq_one_of_isMulCommutative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95aa227d6b65dde77fdfa451bc5ee8d57d8207f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da4342d6f182651fd4e5a4168644389ff5a23c5a7230f2591459ede6d1cbfbbe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7fc040c-bea6-e9fa-7c66-5f4e2c4eee0f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7704f707-e53f-f620-d996-8bcd6e402d06",
  "kind": "theorem",
  "lexical_name": "IsSimpleModule.finrank_eq_one_of_isMulCommutative",
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
  "slug": "issimplemodule-finrank-eq-one-of-ismulcommutative--4f854c400b8b755167efc7b0",
  "source": {
    "blob": "95aa227d6b65dde77fdfa451bc5ee8d57d8207f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 39,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantda4342d6f182651fd4e5a4168644389ff5a23c5a7230f2591459ede6d1cbfbbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f854c400b8b755167efc7b0c16c439d48278292fcb4eaa2b0ab7e84c0c392e4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantda4342d6f182651fd4e5a4168644389ff5a23c5a7230f2591459ede6d1cbfbbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7704f707-e53f-f620-d996-8bcd6e402d06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSimpleModule.finrank_eq_one_of_isMulCommutative [IsMulCommutative A] :
    Module.finrank k V = 1 := by
  have : Nontrivial V := IsSimpleModule.nontrivial A V
  obtain ⟨v, v_nz⟩ := exists_ne (0 : V)
  set U : Submodule A V := { Submodule.span k {v} with
    smul_mem' a w hw := by
      have ⟨t, ht⟩ := (IsSimpleModule.algebraMap_end_bijective_of_isAlgClosed k).2
        (Module.toModuleEnd A V a)
      simpa only [← show _ = a • w from congr($ht w)] using! (k ∙ v).smul_mem t hw }
  obtain hU | hU := eq_bot_or_eq_top U
  · exact (v_nz <| hU.le <| Submodule.mem_span_singleton_self v).elim
  · rw [finrank_eq_one_iff_of_nonzero v v_nz]
    rwa [← top_le_iff] at hU ⊢
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantda4342d6f182651fd4e5a4168644389ff5a23c5a7230f2591459ede6d1cbfbbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantda4342d6f182651fd4e5a4168644389ff5a23c5a7230f2591459ede6d1cbfbbe.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95aa227d6b65dde77fdfa451bc5ee8d57d8207f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
