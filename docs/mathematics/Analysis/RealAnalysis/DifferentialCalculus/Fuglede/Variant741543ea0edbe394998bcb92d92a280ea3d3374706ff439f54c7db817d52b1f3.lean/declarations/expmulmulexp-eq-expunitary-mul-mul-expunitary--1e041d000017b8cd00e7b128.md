# expMulMulExp_eq_expUnitary_mul_mul_expUnitary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cef263280eedf310d800336a2ed6c38d8737594d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01bda2bf-6a88-59c5-802f-e84e3b45da62",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84fb0e07-2316-e3fb-2598-79bcb0d449b3",
  "kind": "lemma",
  "lexical_name": "expMulMulExp_eq_expUnitary_mul_mul_expUnitary",
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
  "slug": "expmulmulexp-eq-expunitary-mul-mul-expunitary--1e041d000017b8cd00e7b128",
  "source": {
    "blob": "cef263280eedf310d800336a2ed6c38d8737594d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e041d000017b8cd00e7b128b77d3cb6bdccc1c7f54724e45c9472c810815fab",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84fb0e07-2316-e3fb-2598-79bcb0d449b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma expMulMulExp_eq_expUnitary_mul_mul_expUnitary (h : SemiconjBy x a b) (z : ℂ) :
    expMulMulExp a b x z =
      expUnitary ((2 : ℝ) • ℑ (z • star b)) * x * expUnitary ((2 : ℝ) • ℑ (star z • a)) := by
  let _ : NormedAlgebra ℚ A := .restrictScalars ℚ ℂ A
  nth_rw 1 [expMulMulExp, ← (h.smul_right (star z)).exp_neg_mul_mul_exp_eq_self]
  simp_rw [← mul_assoc, mul_assoc (_ * _ * x)]
  congr!
  all_goals
    simp [imaginaryPart_apply_coe, smul_comm (2 : ℝ) I, smul_smul I I, sub_eq_add_neg]
    grind [exp_add_of_commute, Commute.smul_right, Commute.neg_right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cef263280eedf310d800336a2ed6c38d8737594d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
