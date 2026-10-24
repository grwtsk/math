# isMultiplicative_moebius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92ebac87-8820-8d7a-6d81-7c61d43c6504",
  "kind": "theorem",
  "lexical_name": "isMultiplicative_moebius",
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
  "slug": "ismultiplicative-moebius--57a5e1b0e2afb4b31fa5d83b",
  "source": {
    "blob": "3fb304d4ef40bf24ee99cf11450b012de924679c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1045,
    "line": 1027,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variant5887826a25855ea97e4d9271ee4e346e9d099056add5eda9f4f8a9afc4b11142.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57a5e1b0e2afb4b31fa5d83bfba88a544f4e0e78b9dd181cd18ab4927719f04d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variant5887826a25855ea97e4d9271ee4e346e9d099056add5eda9f4f8a9afc4b11142.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92ebac87-8820-8d7a-6d81-7c61d43c6504`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1027–1045.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMultiplicative_moebius : IsMultiplicative μ := by
  rw [IsMultiplicative.iff_ne_zero]
  refine' ⟨by simp, fun {n m} hn hm hnm => _⟩
  -- porting note: the rest of this proof was a single `simp only` with all the lemmas thrown in
  -- followed by the last `rw`.
  simp only [moebius, ZeroHom.coe_mk]
  dsimp only [coe_mk, ZeroHom.toFun_eq_coe, Eq.ndrec, ZeroHom.coe_mk]
  simp only [IsUnit.mul_iff, Nat.isUnit_iff, squarefree_mul hnm, ite_and, mul_ite, ite_mul,
    zero_mul, mul_zero]
  rw [cardFactors_mul hn hm] -- porting note: `simp` does not seem to use this lemma.
  simp only [moebius, ZeroHom.coe_mk, squarefree_mul hnm, ite_and, cardFactors_mul hn hm]
  rw [pow_add, ite_mul_zero_left, ite_mul_zero_right]
  split_ifs <;>  -- porting note: added
  simp           -- porting note: added
#align nat.arithmetic_function.is_multiplicative_moebius Nat.ArithmeticFunction.isMultiplicative_moebius

open UniqueFactorizationMonoid

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variant5887826a25855ea97e4d9271ee4e346e9d099056add5eda9f4f8a9afc4b11142.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variant5887826a25855ea97e4d9271ee4e346e9d099056add5eda9f4f8a9afc4b11142.lean#L1027).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fb304d4ef40bf24ee99cf11450b012de924679c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
