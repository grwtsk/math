# repr_mul_isIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46ec187c-f9e5-d9ac-ccbe-9d071ff84a09",
  "kind": "theorem",
  "lexical_name": "repr_mul_isIntegral",
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
  "slug": "repr-mul-isintegral--a6a79a7f266582de3ccf0aab",
  "source": {
    "blob": "3a6f1f523e14596348d020b16674cbd3202fecad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 136,
    "path": "GRWTSK/Algebra/PowerBasis/Variant303013906b88d1408af1b7490f17fe1f44c6b2620f0c64c0cd39ee1ad4e92588.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6a79a7f266582de3ccf0aab365e99293d8410e9ef9ff91353171935b8aa06f9",
  "verification": {
    "reference": "docs/verification/Algebra/PowerBasis/Variant303013906b88d1408af1b7490f17fe1f44c6b2620f0c64c0cd39ee1ad4e92588.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46ec187c-f9e5-d9ac-ccbe-9d071ff84a09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem repr_mul_isIntegral (hB : IsIntegral R B.gen) {x y : A}
    (hx : ∀ i, IsIntegral R (B.basis.repr x i)) (hy : ∀ i, IsIntegral R (B.basis.repr y i))
    (hmin : minpoly S B.gen = (minpoly R B.gen).map (algebraMap R S)) :
    ∀ i, IsIntegral R (B.basis.repr (x * y) i) := by
  intro i
  rw [← B.basis.sum_repr x, ← B.basis.sum_repr y, Finset.sum_mul_sum, ← Finset.sum_product',
    map_sum, Finset.sum_apply']
  refine IsIntegral.sum _ fun I _ => ?_
  simp only [Algebra.smul_mul_assoc, Algebra.mul_smul_comm, map_smulₛₗ, RingHom.id_apply,
    Finsupp.coe_smul, Pi.smul_apply, smul_eq_mul]
  refine (hy _).mul ((hx _).mul ?_)
  simp only [coe_basis, ← pow_add]
  exact repr_gen_pow_isIntegral hB hmin _ _

/-- Let `B : PowerBasis S A` be such that `IsIntegral R B.gen`, and let `x : A` be an element
with integral coordinates in the base `B.basis`. Then `IsIntegral R ((B.basis.repr (x ^ n) i)` for
all `i` and all `n` if `minpoly S B.gen = (minpoly R B.gen).map (algebraMap R S)`. This is the case
if `R` is a GCD domain and `S` is its fraction ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PowerBasis/Variant303013906b88d1408af1b7490f17fe1f44c6b2620f0c64c0cd39ee1ad4e92588.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PowerBasis/Variant303013906b88d1408af1b7490f17fe1f44c6b2620f0c64c0cd39ee1ad4e92588.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a6f1f523e14596348d020b16674cbd3202fecad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
