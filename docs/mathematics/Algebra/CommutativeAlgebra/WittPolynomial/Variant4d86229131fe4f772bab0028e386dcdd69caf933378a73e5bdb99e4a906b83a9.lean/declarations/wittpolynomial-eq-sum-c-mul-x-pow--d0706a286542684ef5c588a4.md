# wittPolynomial_eq_sum_C_mul_X_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9db2fae7-2e9b-9ca3-f312-6655864f4d01",
  "kind": "theorem",
  "lexical_name": "wittPolynomial_eq_sum_C_mul_X_pow",
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
  "slug": "wittpolynomial-eq-sum-c-mul-x-pow--d0706a286542684ef5c588a4",
  "source": {
    "blob": "14ca07097aab35c59b8a174d8388eeb4112906ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 87,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0706a286542684ef5c588a435003a6717e6d5e69eaa3aed1b4fd5d809243685",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9db2fae7-2e9b-9ca3-f312-6655864f4d01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wittPolynomial_eq_sum_C_mul_X_pow (n : ℕ) :
    wittPolynomial p R n = ∑ i ∈ range (n + 1), C ((p : R) ^ i) * X i ^ p ^ (n - i) := by
  apply sum_congr rfl
  rintro i -
  rw [monomial_eq, Finsupp.prod_single_index]
  rw [pow_zero]

/-! We set up notation locally to this file, to keep statements short and comprehensible.
This allows us to simply write `W n` or `W_ ℤ n`. -/


-- Notation with ring of coefficients explicit
set_option quotPrecheck false in
@[inherit_doc]
scoped[Witt] notation "W_" => wittPolynomial p

-- Notation with ring of coefficients implicit
set_option quotPrecheck false in
@[inherit_doc]
scoped[Witt] notation "W" => wittPolynomial p _

open Witt

open MvPolynomial

/-! The first observation is that the Witt polynomial doesn't really depend on the coefficient ring.
If we map the coefficients through a ring homomorphism, we obtain the corresponding Witt polynomial
over the target ring. -/
section

variable {R} {S : Type*} [CommRing S]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14ca07097aab35c59b8a174d8388eeb4112906ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
