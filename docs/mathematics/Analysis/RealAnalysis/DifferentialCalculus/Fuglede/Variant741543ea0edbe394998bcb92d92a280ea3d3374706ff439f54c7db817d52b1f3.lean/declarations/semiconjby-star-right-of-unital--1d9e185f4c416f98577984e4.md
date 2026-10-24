# SemiconjBy.star_right_of_unital

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
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0a14b24-101f-7a44-1ec8-ab6084c3b146",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c49c369b-c122-0daa-989e-42b60abcbcaf",
  "kind": "lemma",
  "lexical_name": "SemiconjBy.star_right_of_unital",
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
  "slug": "semiconjby-star-right-of-unital--1d9e185f4c416f98577984e4",
  "source": {
    "blob": "cef263280eedf310d800336a2ed6c38d8737594d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 92,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d9e185f4c416f98577984e4355d2d4632ae5310c852a19c075a428b4d81a8e9",
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

Occurrence: `result:c49c369b-c122-0daa-989e-42b60abcbcaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma SemiconjBy.star_right_of_unital (h : SemiconjBy x a b) :
    SemiconjBy x (star a) (star b) := by
  suffices key : ∀ z : ℂ, x * exp (z • star a) = exp (z • star b) * x by
    have (a : A) : HasDerivAt (fun z : ℂ ↦ exp (z • a)) a 0 := by
      simpa using hasDerivAt_exp_smul_const a (0 : ℂ)
    apply (this (star a)).const_mul x |>.unique
    simpa [key] using (this (star b)).mul_const x
  intro z
  let _ : NormedAlgebra ℚ A := .restrictScalars ℚ ℂ A
  let _ := invertibleExp (z • star a)
  simpa [← mul_assoc, ← invOf_exp, expMulMulExp] using
    congr($(expMulMulExp_const h z) * exp (z • star a)).symm

/-- A characterization of normal elements in a C⋆-algebra in terms of exponentials. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cef263280eedf310d800336a2ed6c38d8737594d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
