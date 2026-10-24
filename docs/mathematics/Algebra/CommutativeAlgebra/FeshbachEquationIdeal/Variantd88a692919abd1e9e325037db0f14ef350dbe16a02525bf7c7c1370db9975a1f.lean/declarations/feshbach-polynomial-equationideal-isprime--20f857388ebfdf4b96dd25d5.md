# feshbach_polynomial_equationIdeal_isPrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ddbb4f7-3f5f-35eb-1288-226ec60f35ea",
  "kind": "theorem",
  "lexical_name": "feshbach_polynomial_equationIdeal_isPrime",
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
  "slug": "feshbach-polynomial-equationideal-isprime--20f857388ebfdf4b96dd25d5",
  "source": {
    "blob": "8da69080fedd6d000ebc4f809dccd682d71819c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 200,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20f857388ebfdf4b96dd25d52771800c8e33d8abf63dece9f41158f34a9b70c9",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ddbb4f7-3f5f-35eb-1288-226ec60f35ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem feshbach_polynomial_equationIdeal_isPrime [Fintype ι]
    (A : Matrix ι ι K) (U : Matrix ι κ K) (C : Matrix κ ι K)
    (B : Matrix κ κ K) :
    (blockEquationIdeal
        ((A.map (MvPolynomial.C : K →+* MvPolynomial (ι ⊕ κ) K)).mulVec
            (fun i ↦ MvPolynomial.X (Sum.inl i)) +
          (U.map MvPolynomial.C).mulVec (fun j ↦ MvPolynomial.X (Sum.inr j)))
        ((C.map MvPolynomial.C).mulVec (fun i ↦ MvPolynomial.X (Sum.inl i)) +
          (B.map MvPolynomial.C).mulVec (fun j ↦ MvPolynomial.X (Sum.inr j)))).IsPrime := by
  have h := homogeneous_mulVec_equationIdeal_isPrime (Matrix.fromBlocks A U C B)
  have hcoords : (MvPolynomial.X : (ι ⊕ κ) → MvPolynomial (ι ⊕ κ) K) =
      Sum.elim (fun i ↦ MvPolynomial.X (Sum.inl i))
        (fun j ↦ MvPolynomial.X (Sum.inr j)) := by
    funext s
    cases s <;> rfl
  rw [Matrix.fromBlocks_map, hcoords, Matrix.fromBlocks_mulVec] at h
  exact h

/-- Radicality of every finite homogeneous Feshbach polynomial system over a
field, including the singular Schur case. Radicality imposes no sign condition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8da69080fedd6d000ebc4f809dccd682d71819c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
