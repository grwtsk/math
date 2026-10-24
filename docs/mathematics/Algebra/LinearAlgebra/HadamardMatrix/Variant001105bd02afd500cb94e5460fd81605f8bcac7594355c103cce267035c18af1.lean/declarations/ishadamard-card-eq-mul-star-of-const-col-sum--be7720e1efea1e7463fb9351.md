# IsHadamard.card_eq_mul_star_of_const_col_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a19c30ac-aa7b-9087-6b14-150b129bcaff",
  "kind": "theorem",
  "lexical_name": "IsHadamard.card_eq_mul_star_of_const_col_sum",
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
  "slug": "ishadamard-card-eq-mul-star-of-const-col-sum--be7720e1efea1e7463fb9351",
  "source": {
    "blob": "96d28597998ad54c95d1f75c4a57946c4cfcfaff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 124,
    "path": "GRWTSK/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be7720e1efea1e7463fb9351e9cd94a680e98a95056cde7848b628dd7809b576",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a19c30ac-aa7b-9087-6b14-150b129bcaff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsHadamard.card_eq_mul_star_of_const_col_sum {s : R}
    (hA : A.IsHadamard) (hcard : IsRegular (Fintype.card n : R))
    (hcol : ∀ j, ∑ i, A i j = s) : (Fintype.card n : R) = s * star s := by
  have hvcol : (1 : n → R) ᵥ* A = s • 1 := by
    ext j
    simpa [Matrix.vecMul, dotProduct] using hcol j
  have hconjcol : Aᴴ *ᵥ (1 : n → R) = star s • 1 := by
    ext i
    simp [Matrix.mulVec, dotProduct, ← star_sum, hcol i]
  have hleft : (1 : n → R) ᵥ* (A * Aᴴ) ⬝ᵥ 1 = (Fintype.card n : R) ^ 2 := by
    rw [hA.mul_conjTranspose, Nat.cast_smul_eq_nsmul, vecMul_smul, smul_dotProduct]
    simp [dotProduct, pow_two]
  have hright : (1 : n → R) ᵥ* (A * Aᴴ) ⬝ᵥ 1 = (Fintype.card n : R) * (s * star s) := by
    rw [← vecMul_vecMul, ← dotProduct_mulVec, hvcol, hconjcol]
    simp [dotProduct]
  exact hcard.left <| show (Fintype.card n : R) * (Fintype.card n : R) =
      (Fintype.card n : R) * (s * star s) by
    simpa [pow_two] using hleft.symm.trans hright

/-- A Hadamard matrix with constant row sum `s` has order `star s * s`, provided the order
is regular in `R`. This generalizes [Theorem 2.3.7][deLauneyFlannery2011]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96d28597998ad54c95d1f75c4a57946c4cfcfaff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
