# natDegree_hasseDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c273a9eb814f9518e5f4194ea0c73446c5d21be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d22b94e1-da0b-c5d6-06e3-c726e8323843",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb70f0ad-62e0-5847-61d0-e5c6f2146795",
  "kind": "theorem",
  "lexical_name": "natDegree_hasseDeriv",
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
  "slug": "natdegree-hassederiv--7f3f5f63deac0f031cf0f36e",
  "source": {
    "blob": "2c273a9eb814f9518e5f4194ea0c73446c5d21be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 212,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f3f5f63deac0f031cf0f36ed7d3a7305b0672df6aaf175bbb27bcaed8de91fd",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb70f0ad-62e0-5847-61d0-e5c6f2146795`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_hasseDeriv [NoZeroSMulDivisors ℕ R] (p : R[X]) (n : ℕ) :
    natDegree (hasseDeriv n p) = natDegree p - n := by
  cases' lt_or_le p.natDegree n with hn hn
  · simpa [hasseDeriv_eq_zero_of_lt_natDegree, hn] using (tsub_eq_zero_of_le hn.le).symm
  · refine' map_natDegree_eq_sub _ _
    · exact fun h => hasseDeriv_eq_zero_of_lt_natDegree _ _
    · classical
        simp only [ite_eq_right_iff, Ne.def, natDegree_monomial, hasseDeriv_monomial]
        intro k c c0 hh
        -- this is where we use the `smul_eq_zero` from `NoZeroSMulDivisors`
        rw [← nsmul_eq_mul, smul_eq_zero, Nat.choose_eq_zero_iff] at hh
        exact (tsub_eq_zero_of_le (Or.resolve_right hh c0).le).symm
#align polynomial.nat_degree_hasse_deriv Polynomial.natDegree_hasseDeriv

section

open AddMonoidHom Finset.Nat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c273a9eb814f9518e5f4194ea0c73446c5d21be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
