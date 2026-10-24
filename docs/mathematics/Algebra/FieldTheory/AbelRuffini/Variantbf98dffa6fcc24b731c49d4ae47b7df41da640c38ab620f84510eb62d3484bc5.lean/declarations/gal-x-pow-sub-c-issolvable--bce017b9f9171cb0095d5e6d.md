# gal_X_pow_sub_C_isSolvable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a19150d-6a8b-406b-8f20-a4a5acb9dcb0",
  "kind": "theorem",
  "lexical_name": "gal_X_pow_sub_C_isSolvable",
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
  "slug": "gal-x-pow-sub-c-issolvable--bce017b9f9171cb0095d5e6d",
  "source": {
    "blob": "3e83b05f47b9548982f19e8ea3dde485ef684b25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 184,
    "path": "GRWTSK/Algebra/FieldTheory/AbelRuffini/Variantbf98dffa6fcc24b731c49d4ae47b7df41da640c38ab620f84510eb62d3484bc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bce017b9f9171cb0095d5e6d845b75fa36bfda008d1967af1502afb9c49aaf4d",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/AbelRuffini/Variantbf98dffa6fcc24b731c49d4ae47b7df41da640c38ab620f84510eb62d3484bc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a19150d-6a8b-406b-8f20-a4a5acb9dcb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gal_X_pow_sub_C_isSolvable (n : ℕ) (x : F) : Group.IsSolvable (X ^ n - C x).Gal := by
  by_cases hx : x = 0
  · rw [hx, C_0, sub_zero]
    exact gal_X_pow_isSolvable n
  apply gal_isSolvable_tower (X ^ n - 1) (X ^ n - C x)
  · exact splits_X_pow_sub_one_of_X_pow_sub_C _ n hx (SplittingField.splits _)
  · exact gal_X_pow_sub_one_isSolvable n
  · rw [Polynomial.map_sub, Polynomial.map_pow, map_X, map_C]
    apply gal_X_pow_sub_C_isSolvable_aux
    rw [map_id]
    have key := SplittingField.splits (X ^ n - 1 : F[X])
    rwa [Polynomial.map_sub, Polynomial.map_pow, map_X,
      Polynomial.map_one] at key

end GalXPowSubC

variable (F E) in
/-- The intermediate field of elements solvable by radicals, defined as the smallest subfield which
is closed under `n`-th roots. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/AbelRuffini/Variantbf98dffa6fcc24b731c49d4ae47b7df41da640c38ab620f84510eb62d3484bc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/AbelRuffini/Variantbf98dffa6fcc24b731c49d4ae47b7df41da640c38ab620f84510eb62d3484bc5.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e83b05f47b9548982f19e8ea3dde485ef684b25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
