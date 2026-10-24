# separable_minpoly_mod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c227400b-87b3-47c0-8845-4919803b55bd",
  "kind": "theorem",
  "lexical_name": "separable_minpoly_mod",
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
  "slug": "separable-minpoly-mod--40b28738a48ffe021fbae41d",
  "source": {
    "blob": "608a155b2a0003e5932d854f728f831993ade86d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 69,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variantb16ce864b9b6228291a60bae82addb301a500c1a333ff8c5e58a282e353edd89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40b28738a48ffe021fbae41d87906b936457228b591f63a62fffaa9cff54a436",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Minpoly/Variantb16ce864b9b6228291a60bae82addb301a500c1a333ff8c5e58a282e353edd89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c227400b-87b3-47c0-8845-4919803b55bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem separable_minpoly_mod {p : ℕ} [Fact p.Prime] (hdiv : ¬p ∣ n) :
    Separable (map (Int.castRingHom (ZMod p)) (minpoly ℤ μ)) := by
  have hdvd : map (Int.castRingHom (ZMod p)) (minpoly ℤ μ) ∣ X ^ n - 1 := by
    convert RingHom.map_dvd (mapRingHom (Int.castRingHom (ZMod p)))
        (minpoly_dvd_x_pow_sub_one h)
    simp only [map_sub, map_pow, coe_mapRingHom, map_X, map_one]
  refine' Separable.of_dvd (separable_X_pow_sub_C 1 _ one_ne_zero) hdvd
  by_contra hzero
  exact hdiv ((ZMod.nat_cast_zmod_eq_zero_iff_dvd n p).1 hzero)
#align is_primitive_root.separable_minpoly_mod IsPrimitiveRoot.separable_minpoly_mod

/-- The reduction modulo `p` of the minimal polynomial of a root of unity `μ` is squarefree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Minpoly/Variantb16ce864b9b6228291a60bae82addb301a500c1a333ff8c5e58a282e353edd89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variantb16ce864b9b6228291a60bae82addb301a500c1a333ff8c5e58a282e353edd89.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `608a155b2a0003e5932d854f728f831993ade86d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
