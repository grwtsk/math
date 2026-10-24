# aeval_equivPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f98fa11b-6886-3e2d-7f61-f89be0059e6f",
  "kind": "lemma",
  "lexical_name": "aeval_equivPolynomial",
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
  "slug": "aeval-equivpolynomial--e43ddf4c1092fc459594ecce",
  "source": {
    "blob": "7e92d0d7d412bc5fbaad9e02d86f67c34f6d1582",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 304,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e43ddf4c1092fc459594eccefbaf82703d4ee39fb894b54172a7549d2f4b3608",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f98fa11b-6886-3e2d-7f61-f89be0059e6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma aeval_equivPolynomial {S : Type*} [CommRing S] [Algebra S R]
    (f : PolynomialModule S S) (x : R) :
    aeval x (equivPolynomial f) = eval x (map R (Algebra.linearMap S R) f) := by
  induction f using induction_linear with
  | zero => simp
  | add f g e₁ e₂ => simp_rw [map_add, e₁, e₂]
  | single i m => rw [equivPolynomial_single, aeval_monomial, mul_comm, map_single,
      Algebra.linearMap_apply, eval_single, smul_eq_mul]

/-- `comp p q` is the composition of `p : R[X]` and `q : M[X]` as `q(p(x))`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e92d0d7d412bc5fbaad9e02d86f67c34f6d1582` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
