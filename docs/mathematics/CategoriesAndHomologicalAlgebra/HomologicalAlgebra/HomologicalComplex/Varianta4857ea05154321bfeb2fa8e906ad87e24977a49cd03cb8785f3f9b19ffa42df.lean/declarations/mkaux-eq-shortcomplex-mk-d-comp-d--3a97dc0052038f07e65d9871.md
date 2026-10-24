# mkAux_eq_shortComplex_mk_d_comp_d

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "50646b814429df3f77ee4be826053853b54d6c64",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 746,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4857ea05154321bfeb2fa8e906ad87e24977a49cd03cb8785f3f9b19ffa42df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf19499e-8859-bba4-f5c9-d7a23cdd747d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a7315c1-2e92-859f-74bc-a7e0dfe39c27",
  "kind": "lemma",
  "lexical_name": "mkAux_eq_shortComplex_mk_d_comp_d",
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
  "slug": "mkaux-eq-shortcomplex-mk-d-comp-d--3a97dc0052038f07e65d9871",
  "source": {
    "blob": "50646b814429df3f77ee4be826053853b54d6c64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 753,
    "line": 746,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Varianta4857ea05154321bfeb2fa8e906ad87e24977a49cd03cb8785f3f9b19ffa42df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a97dc0052038f07e65d9871668cf2f75cbf05b6129524168754f8766ca79b91",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Varianta4857ea05154321bfeb2fa8e906ad87e24977a49cd03cb8785f3f9b19ffa42df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a7315c1-2e92-859f-74bc-a7e0dfe39c27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 746–753.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mkAux_eq_shortComplex_mk_d_comp_d (n : ℕ) :
    mkAux X₀ X₁ X₂ d₀ d₁ s succ n =
      ShortComplex.mk _ _ ((mk X₀ X₁ X₂ d₀ d₁ s succ).d_comp_d (n + 2) (n + 1) n) := by
  rw [show n + 2 = n + 1 + 1 from rfl]
  simp [mk, mkAux]

/-- The isomorphism from `(mk X₀ X₁ X₂ d₀ d₁ s succ).X (n + 3)` that is given by
the inductive construction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Varianta4857ea05154321bfeb2fa8e906ad87e24977a49cd03cb8785f3f9b19ffa42df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Varianta4857ea05154321bfeb2fa8e906ad87e24977a49cd03cb8785f3f9b19ffa42df.lean#L746).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50646b814429df3f77ee4be826053853b54d6c64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
