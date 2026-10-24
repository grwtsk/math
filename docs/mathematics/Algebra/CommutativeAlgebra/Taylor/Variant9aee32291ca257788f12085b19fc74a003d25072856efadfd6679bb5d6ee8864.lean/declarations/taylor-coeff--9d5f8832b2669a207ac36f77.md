# taylor_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:462ed215-4d95-5583-3688-1c9b5861426f",
  "kind": "theorem",
  "lexical_name": "taylor_coeff",
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
  "slug": "taylor-coeff--9d5f8832b2669a207ac36f77",
  "source": {
    "blob": "f51e76dfd3e14322f1d1c8643510ab24489d9006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 70,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Taylor/Variant9aee32291ca257788f12085b19fc74a003d25072856efadfd6679bb5d6ee8864.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d5f8832b2669a207ac36f777bd4ec905b54cf2cbcecc75c038d80a5a69560a6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Taylor/Variant9aee32291ca257788f12085b19fc74a003d25072856efadfd6679bb5d6ee8864.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:462ed215-4d95-5583-3688-1c9b5861426f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem taylor_coeff (n : ℕ) : (taylor r f).coeff n = (hasseDeriv n f).eval r :=
  show (lcoeff R n).comp (taylor r) f = (leval r).comp (hasseDeriv n) f by
    congr 1; clear! f; ext i
    simp only [leval_apply, mul_one, one_mul, eval_monomial, LinearMap.comp_apply, coeff_C_mul,
      hasseDeriv_monomial, taylor_apply, monomial_comp, C_1, (commute_X (C r)).add_pow i,
      map_sum]
    simp only [lcoeff_apply, ← C_eq_natCast, mul_assoc, ← C_pow, ← C_mul, coeff_mul_C,
      (Nat.cast_commute _ _).eq, coeff_X_pow, boole_mul, Finset.sum_ite_eq, Finset.mem_range]
    split_ifs with h; · rfl
    push_neg at h; rw [Nat.choose_eq_zero_of_lt h, Nat.cast_zero, mul_zero]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Taylor/Variant9aee32291ca257788f12085b19fc74a003d25072856efadfd6679bb5d6ee8864.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Taylor/Variant9aee32291ca257788f12085b19fc74a003d25072856efadfd6679bb5d6ee8864.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f51e76dfd3e14322f1d1c8643510ab24489d9006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
