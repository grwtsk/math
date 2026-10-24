# jacobiSum_eq_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b2c5a59f4c30ec3302b7391a511ca2b0aa1255e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d822928-2881-841d-7af1-cf0d48d8ad99",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:081e2e58-773c-1c2a-07a2-87549d53184b",
  "kind": "lemma",
  "lexical_name": "jacobiSum_eq_aux",
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
  "slug": "jacobisum-eq-aux--e28b99c9d82f8773e10c1efb",
  "source": {
    "blob": "6b2c5a59f4c30ec3302b7391a511ca2b0aa1255e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 77,
    "path": "GRWTSK/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e28b99c9d82f8773e10c1efb029659fa3238bbf3659ead1bca6d05226949fcdc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:081e2e58-773c-1c2a-07a2-87549d53184b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma jacobiSum_eq_aux (χ ψ : MulChar F R) :
    jacobiSum χ ψ = ∑ x : F, χ x + ∑ x : F, ψ x - Fintype.card F +
                      ∑ x ∈ univ \ {0, 1}, (χ x - 1) * (ψ (1 - x) - 1) := by
  rw [jacobiSum]
  conv =>
    enter [1, 2, x]
    rw [show ∀ x y : R, x * y = x + y - 1 + (x - 1) * (y - 1) by intros; ring]
  rw [sum_add_distrib, sum_sub_distrib, sum_add_distrib]
  conv => enter [1, 1, 1, 2, 2, x]; rw [← Equiv.subLeft_apply 1]
  rw [(Equiv.subLeft 1).sum_comp ψ, Fintype.card_eq_sum_ones, Nat.cast_sum, Nat.cast_one,
    sum_sdiff_eq_sub (subset_univ _), ← sub_zero (_ - _ + _), add_sub_assoc]
  congr
  rw [sum_pair zero_ne_one, sub_zero, ψ.map_one, χ.map_one, sub_self, mul_zero, zero_mul, add_zero]

end CommRing

section FiniteField

variable {F R : Type*} [Field F] [Fintype F] [CommRing R]

/-- The Jacobi sum of twice the trivial multiplicative character on a finite field `F`
equals `#F-2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b2c5a59f4c30ec3302b7391a511ca2b0aa1255e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
