# valuation_aeval_monomial_eq_valuation_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0acb60c3daaefea95ff792e0d3826b5e0e50197e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12ac3461b33212a5fa2fc2b9f1c47dea3e5b4fb0371e1c8a235f72d2d6c78d14.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba885122-e976-c3c9-5dd7-b3db15ef2304",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1631c222-c5e4-2287-8447-bda54784fea3",
  "kind": "lemma",
  "lexical_name": "valuation_aeval_monomial_eq_valuation_pow",
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
  "slug": "valuation-aeval-monomial-eq-valuation-pow--d36bd60b40cb0582876b3d66",
  "source": {
    "blob": "0acb60c3daaefea95ff792e0d3826b5e0e50197e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 41,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsTrivialOn/Variant12ac3461b33212a5fa2fc2b9f1c47dea3e5b4fb0371e1c8a235f72d2d6c78d14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d36bd60b40cb0582876b3d66b21719d8629ba6b9cd74f5e3eded7a850fa5f70a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsTrivialOn/Variant12ac3461b33212a5fa2fc2b9f1c47dea3e5b4fb0371e1c8a235f72d2d6c78d14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1631c222-c5e4-2287-8447-bda54784fea3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma valuation_aeval_monomial_eq_valuation_pow (w : B) (n : ℕ) {a : A} (ha : a ≠ 0) :
    v ((monomial n a).aeval w) = (v w) ^ n := by
  simp [← C_mul_X_pow_eq_monomial, map_mul, map_pow, one_mul, hv.eq_one a ha]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsTrivialOn/Variant12ac3461b33212a5fa2fc2b9f1c47dea3e5b4fb0371e1c8a235f72d2d6c78d14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsTrivialOn/Variant12ac3461b33212a5fa2fc2b9f1c47dea3e5b4fb0371e1c8a235f72d2d6c78d14.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0acb60c3daaefea95ff792e0d3826b5e0e50197e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
