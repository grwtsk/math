# IsWeierstrassFactorization.isWeierstrassDivision

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79131c1412bbd5c6ba1f9655dce9b7439c091c75",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 567,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:727e8510-2c51-60e2-169f-ee081cd7c9a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3ed3e91-6fe7-dd4b-918d-5fef69aac0cd",
  "kind": "theorem",
  "lexical_name": "IsWeierstrassFactorization.isWeierstrassDivision",
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
  "slug": "isweierstrassfactorization-isweierstrassdivision--5b7563399dc5d811a0ae5a94",
  "source": {
    "blob": "79131c1412bbd5c6ba1f9655dce9b7439c091c75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 587,
    "line": 567,
    "path": "GRWTSK/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b7563399dc5d811a0ae5a949e3d04b9903cb7469df5c93dca880fa60023881d",
  "verification": {
    "reference": "docs/verification/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3ed3e91-6fe7-dd4b-918d-5fef69aac0cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 567–587.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsWeierstrassFactorization.isWeierstrassDivision
    {g : A⟦X⟧} {f : A[X]} {h : A⟦X⟧} (H : g.IsWeierstrassFactorization f h) :
    (X ^ (g.map (IsLocalRing.residue A)).order.toNat).IsWeierstrassDivision g ↑H.isUnit.unit⁻¹
      (Polynomial.X ^ (g.map (IsLocalRing.residue A)).order.toNat - f) := by
  set n := (g.map (IsLocalRing.residue A)).order.toNat with hn
  constructor
  · refine (Polynomial.degree_sub_lt ?_ (Polynomial.monic_X_pow n).ne_zero ?_).trans_eq (by simpa)
    · simp_rw [H.degree_eq_coe_lift_order_map, Polynomial.degree_X_pow, n,
        ENat.lift_eq_toNat_of_lt_top]
    · rw [(Polynomial.monic_X_pow n).leadingCoeff, H.isDistinguishedAt.monic.leadingCoeff]
  · simp_rw [H.eq_mul, mul_assoc, IsUnit.mul_val_inv, mul_one, Polynomial.coe_sub,
      Polynomial.coe_pow, Polynomial.coe_X, add_sub_cancel]

section IsAdicComplete

variable [IsAdicComplete (IsLocalRing.maximalIdeal A) A] {g : A⟦X⟧}

/-- **Weierstrass preparation theorem** ([washington_cyclotomic], Theorem 7.3):
let `g` be a power series over a complete local ring,
such that the image of `g` in the residue field is not zero. Then there exists a distinguished
polynomial `f` and a power series `h` which is a unit, such that `g = f * h`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean#L567).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79131c1412bbd5c6ba1f9655dce9b7439c091c75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
