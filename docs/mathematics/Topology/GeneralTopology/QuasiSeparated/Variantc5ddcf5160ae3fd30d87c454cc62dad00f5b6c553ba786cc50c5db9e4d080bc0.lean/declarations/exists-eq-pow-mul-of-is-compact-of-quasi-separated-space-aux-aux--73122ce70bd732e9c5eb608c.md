# exists_eq_pow_mul_of_is_compact_of_quasi_separated_space_aux_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58276965-3ad6-fdc5-4950-a3fdd57c2dcb",
  "kind": "theorem",
  "lexical_name": "exists_eq_pow_mul_of_is_compact_of_quasi_separated_space_aux_aux",
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
  "slug": "exists-eq-pow-mul-of-is-compact-of-quasi-separated-space-aux-aux--73122ce70bd732e9c5eb608c",
  "source": {
    "blob": "a2fdd2e6d0cdd0aba16037b320847a2049972835",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 208,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73122ce70bd732e9c5eb608c982b8433c67f8d1e5d1a447cadd0b7439502002f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58276965-3ad6-fdc5-4950-a3fdd57c2dcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_pow_mul_of_is_compact_of_quasi_separated_space_aux_aux {X : TopCat}
    (F : X.Presheaf CommRingCat) {U₁ U₂ U₃ U₄ U₅ U₆ U₇ : Opens X} {n₁ n₂ : ℕ}
    {y₁ : F.obj (op U₁)} {y₂ : F.obj (op U₂)} {f : F.obj (op <| U₁ ⊔ U₂)}
    {x : F.obj (op U₃)} (h₄₁ : U₄ ≤ U₁) (h₄₂ : U₄ ≤ U₂) (h₅₁ : U₅ ≤ U₁) (h₅₃ : U₅ ≤ U₃)
    (h₆₂ : U₆ ≤ U₂) (h₆₃ : U₆ ≤ U₃) (h₇₄ : U₇ ≤ U₄) (h₇₅ : U₇ ≤ U₅) (h₇₆ : U₇ ≤ U₆)
    (e₁ : y₁ |_ U₅ = (f |_ U₁ |_ U₅) ^ n₁ * x |_ U₅)
    (e₂ : y₂ |_ U₆ = (f |_ U₂ |_ U₆) ^ n₂ * x |_ U₆) :
    (((f |_ U₁) ^ n₂ * y₁) |_ U₄) |_ U₇ = (((f |_ U₂) ^ n₁ * y₂) |_ U₄) |_ U₇ := by
  apply_fun (fun x : F.obj (op U₅) ↦ x |_ U₇) at e₁
  apply_fun (fun x : F.obj (op U₆) ↦ x |_ U₇) at e₂
  dsimp only [TopCat.Presheaf.restrictOpenCommRingCat_apply] at e₁ e₂ ⊢
  simp only [map_mul, map_pow, ← op_comp, ← F.map_comp, homOfLE_comp, ← CommRingCat.comp_apply]
    at e₁ e₂ ⊢
  rw [e₁, e₂, mul_left_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2fdd2e6d0cdd0aba16037b320847a2049972835` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
