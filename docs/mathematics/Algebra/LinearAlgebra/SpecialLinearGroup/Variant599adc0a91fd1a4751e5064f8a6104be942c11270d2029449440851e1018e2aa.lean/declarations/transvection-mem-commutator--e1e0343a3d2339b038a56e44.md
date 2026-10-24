# transvection_mem_commutator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d914df37d8f5cc56decaa61e4c4d66345ce4c4a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 769,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/599adc0a91fd1a4751e5064f8a6104be942c11270d2029449440851e1018e2aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1dbcbb8d-06ba-b215-6085-40997b458c8d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ce23ec2-1e91-ba4f-973d-70b4fb3e479b",
  "kind": "lemma",
  "lexical_name": "transvection_mem_commutator",
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
  "slug": "transvection-mem-commutator--e1e0343a3d2339b038a56e44",
  "source": {
    "blob": "d914df37d8f5cc56decaa61e4c4d66345ce4c4a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 776,
    "line": 769,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variant599adc0a91fd1a4751e5064f8a6104be942c11270d2029449440851e1018e2aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1e0343a3d2339b038a56e4457aba23ce6408ee2cc0cbae681f0026d4b88ea6a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variant599adc0a91fd1a4751e5064f8a6104be942c11270d2029449440851e1018e2aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ce23ec2-1e91-ba4f-973d-70b4fb3e479b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 769–776.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma transvection_mem_commutator {a : F} (ha : a ≠ 0) (hasq : a ^ 2 ≠ 1) {i j : Fin 2} (h : i ≠ j)
    (c : F) : SpecialLinearGroup.transvection h c ∈ commutator SL(2, F) := by
  fin_cases i
  · obtain rfl : j = 1 := by fin_cases j <;> tauto
    exact transvection_mem_commutator₀ ha hasq c
  · obtain rfl : j = 0 := by fin_cases j <;> tauto
    exact transvection_mem_commutator₁ ha hasq c

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variant599adc0a91fd1a4751e5064f8a6104be942c11270d2029449440851e1018e2aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variant599adc0a91fd1a4751e5064f8a6104be942c11270d2029449440851e1018e2aa.lean#L769).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d914df37d8f5cc56decaa61e4c4d66345ce4c4a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
