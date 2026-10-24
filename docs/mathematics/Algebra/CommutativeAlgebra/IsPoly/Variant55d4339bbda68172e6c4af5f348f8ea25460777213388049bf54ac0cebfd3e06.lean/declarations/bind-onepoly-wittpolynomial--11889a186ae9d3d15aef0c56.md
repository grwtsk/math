# bind₁_onePoly_wittPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a256e2854ccaba68bbee5f2d700f49acf7699ff0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 290,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/55d4339bbda68172e6c4af5f348f8ea25460777213388049bf54ac0cebfd3e06.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08da6628-61b6-7521-efb4-d901e032dc76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0a48993-7a50-162b-ff95-fe34df53f9e9",
  "kind": "theorem",
  "lexical_name": "bind₁_onePoly_wittPolynomial",
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
  "slug": "bind-onepoly-wittpolynomial--11889a186ae9d3d15aef0c56",
  "source": {
    "blob": "a256e2854ccaba68bbee5f2d700f49acf7699ff0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 290,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variant55d4339bbda68172e6c4af5f348f8ea25460777213388049bf54ac0cebfd3e06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11889a186ae9d3d15aef0c56d53b359fa885a573fa5b2806bcbc24d2cce9495c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsPoly/Variant55d4339bbda68172e6c4af5f348f8ea25460777213388049bf54ac0cebfd3e06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0a48993-7a50-162b-ff95-fe34df53f9e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bind₁_onePoly_wittPolynomial [hp : Fact p.Prime] (n : ℕ) :
    bind₁ onePoly (wittPolynomial p ℤ n) = 1 := by
  rw [wittPolynomial_eq_sum_C_mul_X_pow, map_sum, Finset.sum_eq_single 0]
  · simp only [onePoly, one_pow, one_mul, map_pow, C_1, pow_zero, bind₁_X_right, if_true,
      eq_self_iff_true]
  · intro i _hi hi0
    simp only [onePoly, if_neg hi0, zero_pow (pow_ne_zero _ hp.1.ne_zero), mul_zero, map_pow,
      bind₁_X_right, map_mul]
  · simp

/-- The function that is constantly one on Witt vectors is a polynomial function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsPoly/Variant55d4339bbda68172e6c4af5f348f8ea25460777213388049bf54ac0cebfd3e06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variant55d4339bbda68172e6c4af5f348f8ea25460777213388049bf54ac0cebfd3e06.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a256e2854ccaba68bbee5f2d700f49acf7699ff0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
