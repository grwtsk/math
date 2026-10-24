# trace_eq_sum_roots_charpoly_of_splits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "99fa9dac7347e62dc25099d51c4d9f9fae16af53",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d80260b19f5542fa50b198855f638d73d7c8441d972aab98836b4e30d3151c4a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d19edd8-fe45-e1f3-33ec-670a9a672af1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df0b1463-9164-b7de-5e2e-4dc10efae868",
  "kind": "theorem",
  "lexical_name": "trace_eq_sum_roots_charpoly_of_splits",
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
  "slug": "trace-eq-sum-roots-charpoly-of-splits--6505c8c6213478af56f7dd81",
  "source": {
    "blob": "99fa9dac7347e62dc25099d51c4d9f9fae16af53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 64,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Eigs/Variantd80260b19f5542fa50b198855f638d73d7c8441d972aab98836b4e30d3151c4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6505c8c6213478af56f7dd81ea9b3d4c27727a7930fdc204d294fa93e9053866",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Eigs/Variantd80260b19f5542fa50b198855f638d73d7c8441d972aab98836b4e30d3151c4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df0b1463-9164-b7de-5e2e-4dc10efae868`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trace_eq_sum_roots_charpoly_of_splits (hAps : A.charpoly.Splits (RingHom.id R)) :
    A.trace = (Matrix.charpoly A).roots.sum := by
  rcases isEmpty_or_nonempty n with h | _
  · rw [Matrix.trace, Fintype.sum_empty, Matrix.charpoly,
      det_eq_one_of_card_eq_zero (Fintype.card_eq_zero_iff.2 h), Polynomial.roots_one,
      Multiset.empty_eq_zero, Multiset.sum_zero]
  · rw [trace_eq_neg_charpoly_coeff, neg_eq_iff_eq_neg,
      ← Polynomial.sum_roots_eq_nextCoeff_of_monic_of_split A.charpoly_monic hAps, nextCoeff,
      charpoly_natDegree_eq_dim, if_neg (Fintype.card_ne_zero : Fintype.card n ≠ 0)]

variable (A)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Eigs/Variantd80260b19f5542fa50b198855f638d73d7c8441d972aab98836b4e30d3151c4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Eigs/Variantd80260b19f5542fa50b198855f638d73d7c8441d972aab98836b4e30d3151c4a.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99fa9dac7347e62dc25099d51c4d9f9fae16af53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
