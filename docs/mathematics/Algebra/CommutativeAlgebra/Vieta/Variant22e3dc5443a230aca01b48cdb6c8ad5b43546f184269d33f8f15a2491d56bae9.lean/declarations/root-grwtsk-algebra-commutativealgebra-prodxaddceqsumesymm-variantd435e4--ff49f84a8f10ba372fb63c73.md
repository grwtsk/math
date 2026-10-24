# _root_.GRWTSK.Algebra.CommutativeAlgebra.ProdXAddCEqSumEsymm.Variantd435e4d12967f9df9620aa6c9edba2383671365cff4b79c272848ba7ecdcfa67.Polynomial.coeff_eq_esymm_roots_of_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19e14f8f-0e6e-6385-8a3a-044549ec246c",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.CommutativeAlgebra.ProdXAddCEqSumEsymm.Variantd435e4d12967f9df9620aa6c9edba2383671365cff4b79c272848ba7ecdcfa67.Polynomial.coeff_eq_esymm_roots_of_card",
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
  "slug": "root-grwtsk-algebra-commutativealgebra-prodxaddceqsumesymm-variantd435e4--ff49f84a8f10ba372fb63c73",
  "source": {
    "blob": "d325721da8e6104ca201a348cbd31bfc284e4d34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 147,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Vieta/Variant22e3dc5443a230aca01b48cdb6c8ad5b43546f184269d33f8f15a2491d56bae9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff49f84a8f10ba372fb63c7332b49c27f3d51adccc111c28cac4134a92c6e05d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Vieta/Variant22e3dc5443a230aca01b48cdb6c8ad5b43546f184269d33f8f15a2491d56bae9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19e14f8f-0e6e-6385-8a3a-044549ec246c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.CommutativeAlgebra.ProdXAddCEqSumEsymm.Variantd435e4d12967f9df9620aa6c9edba2383671365cff4b79c272848ba7ecdcfa67.Polynomial.coeff_eq_esymm_roots_of_card [IsDomain R] {p : R[X]}
    (hroots : Multiset.card p.roots = p.natDegree) {k : ℕ} (h : k ≤ p.natDegree) :
    p.coeff k = p.leadingCoeff * (-1) ^ (p.natDegree - k) * p.roots.esymm (p.natDegree - k) := by
  conv_lhs => rw [← C_leadingCoeff_mul_prod_multiset_X_sub_C hroots]
  rw [coeff_C_mul, mul_assoc]; congr
  have : k ≤ card (roots p) := by rw [hroots]; exact h
  convert p.roots.prod_X_sub_C_coeff this using 3 <;> rw [hroots]
#align polynomial.coeff_eq_esymm_roots_of_card Polynomial.coeff_eq_esymm_roots_of_card

/-- Vieta's formula for split polynomials over a field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Vieta/Variant22e3dc5443a230aca01b48cdb6c8ad5b43546f184269d33f8f15a2491d56bae9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Vieta/Variant22e3dc5443a230aca01b48cdb6c8ad5b43546f184269d33f8f15a2491d56bae9.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d325721da8e6104ca201a348cbd31bfc284e4d34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
