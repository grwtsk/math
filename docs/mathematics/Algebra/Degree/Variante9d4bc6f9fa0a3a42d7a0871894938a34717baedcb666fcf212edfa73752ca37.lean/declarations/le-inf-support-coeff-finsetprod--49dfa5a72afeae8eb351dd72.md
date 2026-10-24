# le_inf_support_coeff_finsetProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffc26b012b53b5d59cd75356e7b3a00ff96455de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9d4bc6f9fa0a3a42d7a0871894938a34717baedcb666fcf212edfa73752ca37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6efd6dfb-918a-8d6d-89dd-7909d5c7c110",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85f8f6d0-a34b-2061-63f9-fc5d85adb836",
  "kind": "theorem",
  "lexical_name": "le_inf_support_coeff_finsetProd",
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
  "slug": "le-inf-support-coeff-finsetprod--49dfa5a72afeae8eb351dd72",
  "source": {
    "blob": "ffc26b012b53b5d59cd75356e7b3a00ff96455de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 211,
    "path": "GRWTSK/Algebra/Degree/Variante9d4bc6f9fa0a3a42d7a0871894938a34717baedcb666fcf212edfa73752ca37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49dfa5a72afeae8eb351dd7205df14f966adde1c2aa157b0b857125973a1c4d9",
  "verification": {
    "reference": "docs/verification/Algebra/Degree/Variante9d4bc6f9fa0a3a42d7a0871894938a34717baedcb666fcf212edfa73752ca37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85f8f6d0-a34b-2061-63f9-fc5d85adb836`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_inf_support_coeff_finsetProd (degt0 : 0 ≤ degt 0)
    (degtm : ∀ a b, degt a + degt b ≤ degt (a + b)) (s : Finset ι) (f : ι → R[A]) :
    (∑ i ∈ s, (f i).coeff.support.inf degt) ≤ (∏ i ∈ s, f i).coeff.support.inf degt :=
  le_of_eq_of_le (by rw [Multiset.map_map]; rfl) (le_inf_support_coeff_multisetProd degt0 degtm _)

@[deprecated (since := "2026-06-18")]
alias le_inf_support_finsetProd := le_inf_support_coeff_finsetProd

@[deprecated (since := "2026-04-08")]
alias le_inf_support_finset_prod := le_inf_support_coeff_finsetProd

end CommutativeLemmas

end GeneralResultsAssumingSemilatticeSup


/-! ### Shorthands for special cases
Note that these definitions are reducible, in order to make it easier to apply the more generic
lemmas above. -/


section Degrees

variable [Semiring R] [Ring R']

section SupDegree

variable [SemilatticeSup B] [OrderBot B] (D : A → B)

/-- Let `R` be a semiring, let `A` be an `AddZeroClass`, let `B` be an `OrderBot`,
and let `D : A → B` be a "degree" function.
For an element `f : R[A]`, the element `supDegree f : B` is the supremum of all the elements in the
support of `f`, or `⊥` if `f` is zero.
Often, the Type `B` is `WithBot A`,
If, further, `A` has a linear order, then this notion coincides with the usual one,
using the maximum of the exponents.

If `A := σ →₀ ℕ` then `R[A] = MvPolynomial σ R`, and if we equip `σ` with a linear order then
the induced linear order on `Lex A` equips `MvPolynomial` ring with a
[monomial order](https://en.wikipedia.org/wiki/Monomial_order) (i.e. a linear order on `A`, the
type of (monic) monomials in `R[A]`, that respects addition). We make use of this monomial order
by taking `D := toLex`, and different monomial orders could be accessed via different type
synonyms once they are added. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Degree/Variante9d4bc6f9fa0a3a42d7a0871894938a34717baedcb666fcf212edfa73752ca37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Degree/Variante9d4bc6f9fa0a3a42d7a0871894938a34717baedcb666fcf212edfa73752ca37.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffc26b012b53b5d59cd75356e7b3a00ff96455de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
