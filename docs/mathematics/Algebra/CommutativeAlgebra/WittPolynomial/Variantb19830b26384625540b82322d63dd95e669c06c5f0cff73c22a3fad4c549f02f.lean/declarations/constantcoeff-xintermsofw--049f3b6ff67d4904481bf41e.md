# constantCoeff_xInTermsOfW

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc2e12d00e106e36f43cc155b8cf3e46dbfc9a68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:100999f1-055e-d281-b922-f6659225d00e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a867f54-0a99-6592-3bd0-dce85efe8322",
  "kind": "theorem",
  "lexical_name": "constantCoeff_xInTermsOfW",
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
  "slug": "constantcoeff-xintermsofw--049f3b6ff67d4904481bf41e",
  "source": {
    "blob": "bc2e12d00e106e36f43cc155b8cf3e46dbfc9a68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 224,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:049f3b6ff67d4904481bf41e30d18bac7bc6ce4775e73c3a7a90dda2219e599a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a867f54-0a99-6592-3bd0-dce85efe8322`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem constantCoeff_xInTermsOfW [hp : Fact p.Prime] [Invertible (p : R)] (n : ℕ) :
    constantCoeff (xInTermsOfW p R n) = 0 := by
  apply Nat.strongInductionOn n; clear n
  intro n IH
  rw [xInTermsOfW_eq, mul_comm, RingHom.map_mul, RingHom.map_sub, map_sum, constantCoeff_C,
    constantCoeff_X, zero_sub, mul_neg, neg_eq_zero]
  -- porting note: here, we should be able to do `rw [sum_eq_zero]`, but the goal that
  -- is created is not what we expect, and the sum is not replaced by zero...
  -- is it a bug in `rw` tactic?
  refine' Eq.trans (_ : _ = ((⅟↑p : R) ^ n)* 0) (mul_zero _)
  congr 1
  rw [sum_eq_zero]
  intro m H
  rw [mem_range] at H
  simp only [RingHom.map_mul, RingHom.map_pow, map_natCast, IH m H]
  rw [zero_pow, mul_zero]
  apply pow_pos hp.1.pos
set_option linter.uppercaseLean3 false in
#align constant_coeff_X_in_terms_of_W constantCoeff_xInTermsOfW

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc2e12d00e106e36f43cc155b8cf3e46dbfc9a68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
