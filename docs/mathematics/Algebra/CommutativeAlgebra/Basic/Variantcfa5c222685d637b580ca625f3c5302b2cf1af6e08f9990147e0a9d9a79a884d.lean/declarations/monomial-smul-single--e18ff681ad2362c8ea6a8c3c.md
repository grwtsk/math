# monomial_smul_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "07af0ad535001c133d543dbd3c8fd4fcb507379d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5928a82c-d3bd-9cb8-aa7a-23603abe0480",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:180ec8b0-47fa-0b7a-d5f0-270dbbad7168",
  "kind": "theorem",
  "lexical_name": "monomial_smul_single",
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
  "slug": "monomial-smul-single--e18ff681ad2362c8ea6a8c3c",
  "source": {
    "blob": "07af0ad535001c133d543dbd3c8fd4fcb507379d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 115,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e18ff681ad2362c8ea6a8c3cae35b842304e20c817e593fe64f1d7804efb9919",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:180ec8b0-47fa-0b7a-d5f0-270dbbad7168`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monomial_smul_single (i : ℕ) (r : R) (j : ℕ) (m : M) :
    monomial i r • single R j m = single R (i + j) (r • m) := by
  simp only [Module.End.mul_apply, Polynomial.aeval_monomial, Module.End.pow_apply,
    Module.algebraMap_end_apply, smul_def]
  induction i generalizing r j m with
  | zero =>
    rw [Function.iterate_zero, zero_add]
    exact Finsupp.smul_single r j m
  | succ n hn =>
    rw [Function.iterate_succ, Function.comp_apply, add_assoc, ← hn]
    congr 2
    rw [Nat.one_add]
    exact Finsupp.mapDomain_single

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantcfa5c222685d637b580ca625f3c5302b2cf1af6e08f9990147e0a9d9a79a884d.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07af0ad535001c133d543dbd3c8fd4fcb507379d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
