# isInternal_submodule_of_iSupIndep_of_iSup_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e69bbfdf0f2885aefba1a5eee6a1ba9e621d4760",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 504,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af5a288acea251b197ea9b3453fe7d32d5bac6776a70d159bbddcdb602569d50.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d05f612b-2688-fa94-5f6b-9b8e8633f2eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23ef3dfd-cee8-c37e-b885-82ae32234ac8",
  "kind": "theorem",
  "lexical_name": "isInternal_submodule_of_iSupIndep_of_iSup_eq_top",
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
  "slug": "isinternal-submodule-of-isupindep-of-isup-eq-top--1b8a49a813d35d1ac890fc03",
  "source": {
    "blob": "e69bbfdf0f2885aefba1a5eee6a1ba9e621d4760",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 516,
    "line": 504,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantaf5a288acea251b197ea9b3453fe7d32d5bac6776a70d159bbddcdb602569d50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b8a49a813d35d1ac890fc03cb1db7eaaee9339f96088fa7f0807bfba2bb1c77",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variantaf5a288acea251b197ea9b3453fe7d32d5bac6776a70d159bbddcdb602569d50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23ef3dfd-cee8-c37e-b885-82ae32234ac8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–516.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isInternal_submodule_of_iSupIndep_of_iSup_eq_top {A : ι → Submodule R M}
    (hi : iSupIndep A) (hs : iSup A = ⊤) : IsInternal A :=
  ⟨hi.dfinsupp_lsum_injective,
    -- Note: https://github.com/leanprover-community/mathlib4/pull/8386 had to specify value of `f`
    (LinearMap.range_eq_top (f := DFinsupp.lsum _ _)).1 <|
      (Submodule.iSup_eq_range_dfinsupp_lsum _).symm.trans hs⟩

@[deprecated (since := "2024-11-24")]
alias isInternal_submodule_of_independent_of_iSup_eq_top :=
  isInternal_submodule_of_iSupIndep_of_iSup_eq_top

/-- `iff` version of `DirectSum.isInternal_submodule_of_iSupIndep_of_iSup_eq_top`,
`DirectSum.IsInternal.iSupIndep`, and `DirectSum.IsInternal.submodule_iSup_eq_top`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variantaf5a288acea251b197ea9b3453fe7d32d5bac6776a70d159bbddcdb602569d50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantaf5a288acea251b197ea9b3453fe7d32d5bac6776a70d159bbddcdb602569d50.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e69bbfdf0f2885aefba1a5eee6a1ba9e621d4760` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
