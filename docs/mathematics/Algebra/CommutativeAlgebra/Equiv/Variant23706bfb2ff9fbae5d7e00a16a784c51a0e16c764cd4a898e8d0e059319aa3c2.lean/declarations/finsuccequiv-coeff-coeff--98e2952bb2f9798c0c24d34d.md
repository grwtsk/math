# finSuccEquiv_coeff_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b75c3e5-74e4-80a2-ac95-43c4a7226b05",
  "kind": "theorem",
  "lexical_name": "finSuccEquiv_coeff_coeff",
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
  "slug": "finsuccequiv-coeff-coeff--98e2952bb2f9798c0c24d34d",
  "source": {
    "blob": "1548fce94216adf949c2926d361eec1200162586",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 719,
    "line": 696,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Equiv/Variant23706bfb2ff9fbae5d7e00a16a784c51a0e16c764cd4a898e8d0e059319aa3c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98e2952bb2f9798c0c24d34d873a7e2b68b63115ebaee9de853a3952c00815d3",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Equiv/Variant23706bfb2ff9fbae5d7e00a16a784c51a0e16c764cd4a898e8d0e059319aa3c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b75c3e5-74e4-80a2-ac95-43c4a7226b05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 696–719.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finSuccEquiv_coeff_coeff (m : Fin n →₀ ℕ) (f : MvPolynomial (Fin (n + 1)) R) (i : ℕ) :
    (Polynomial.coeff (finSuccEquiv R n f) i).coeff m = f.coeff (m.cons i) := by
  induction f using MvPolynomial.induction_on' generalizing i m with
  | add p q hp hq =>
    simp only [map_add, Polynomial.coeff_add, AddMonoidAlgebra.coeff_add, Finsupp.add_apply, hp, hq]
  | monomial j r =>
    simp only [finSuccEquiv_apply, coe_eval₂Hom, eval₂_monomial, RingHom.coe_comp, Finsupp.prod_pow,
      Polynomial.coeff_C_mul, coeff_C_mul, coeff_monomial, Fin.prod_univ_succ, Fin.cases_zero,
      Fin.cases_succ, ← _root_.map_prod, ← map_pow, Function.comp_apply]
    rw [← mul_boole, mul_comm (Polynomial.X ^ j 0), Polynomial.coeff_C_mul_X_pow]; congr 1
    obtain rfl | hjmi := eq_or_ne j (m.cons i)
    · simpa only [cons_zero, cons_succ, ite_eq_left rfl, monomial_eq, C_1, one_mul,
        Finsupp.prod_pow] using! coeff_monomial m m (1 : R)
    · simp only [hjmi, ite_false]
      obtain hij | rfl := ne_or_eq i (j 0)
      · simp only [hij, ite_false, AddMonoidAlgebra.coeff_zero, Finsupp.zero_apply]
      simp only [ite_true]
      have hmj : m ≠ j.tail := by
        rintro rfl
        rw [cons_tail] at hjmi
        contradiction
      simpa only [monomial_eq, C_1, one_mul, Finsupp.prod_pow, tail_apply,
        ite_eq_right hmj.symm] using! coeff_monomial m j.tail (1 : R)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Equiv/Variant23706bfb2ff9fbae5d7e00a16a784c51a0e16c764cd4a898e8d0e059319aa3c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Equiv/Variant23706bfb2ff9fbae5d7e00a16a784c51a0e16c764cd4a898e8d0e059319aa3c2.lean#L696).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1548fce94216adf949c2926d361eec1200162586` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
