# LFunctionTrivChar_eq_mul_riemannZeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ede3211d8b863f8b9ccc841427cb4e967d92fdc3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d022fa6-37bb-508a-0403-9bd8d1ab636e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62b59c34-a35e-06bd-dc38-7639641f2546",
  "kind": "lemma",
  "lexical_name": "LFunctionTrivChar_eq_mul_riemannZeta",
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
  "slug": "lfunctiontrivchar-eq-mul-riemannzeta--0e58e9a1da9b39676b4fea59",
  "source": {
    "blob": "ede3211d8b863f8b9ccc841427cb4e967d92fdc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 170,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e58e9a1da9b39676b4fea59557f5fde31b7db8ab75c17a87ceb12010dc9265c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62b59c34-a35e-06bd-dc38-7639641f2546`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LFunctionTrivChar_eq_mul_riemannZeta {s : ℂ} (hs : s ≠ 1) :
    LFunctionTrivChar N s = (∏ p ∈ N.primeFactors, (1 - (p : ℂ) ^ (-s))) * riemannZeta s := by
  rw [← LFunction_modOne_eq (χ := 1), LFunctionTrivChar, ← changeLevel_one N.one_dvd, mul_comm]
  convert LFunction_changeLevel N.one_dvd 1 (.inr hs) using 4 with p
  rw [MulChar.one_apply <| isUnit_of_subsingleton _, one_mul]

/-- The L function of the trivial Dirichlet character mod `N` has a simple pole with
residue `∏ p ∈ N.primeFactors, (1 - p⁻¹)` at `s = 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ede3211d8b863f8b9ccc841427cb4e967d92fdc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
