# divisionRingOfFiniteDimensional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81a6e5000ac4ea7e745dac3e25f5428c62f99e5c58e20e0026fbba06069a896f",
  "kind": "def",
  "lexical_name": "divisionRingOfFiniteDimensional",
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
  "slug": "divisionringoffinitedimensional--6d747144f46df2976b0b44ce",
  "source": {
    "blob": "a9bd4711528e02e48be1c10bb6d7a39467adff0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1104,
    "line": 1090,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant764f7ca13a498ae399b0f9a75f72d00dad3fda448aa0071c6cd0ecc54da95942.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d747144f46df2976b0b44ce8f5d8055f02e609fc518b4b37ec4ff96659fcce3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteDimensional/Variant764f7ca13a498ae399b0f9a75f72d00dad3fda448aa0071c6cd0ecc54da95942.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81a6e5000ac4ea7e745dac3e25f5428c62f99e5c58e20e0026fbba06069a896f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1090–1104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def divisionRingOfFiniteDimensional (F K : Type*) [Field F] [h : Ring K] [IsDomain K]
    [Algebra F K] [FiniteDimensional F K] : DivisionRing K :=
  { ‹IsDomain K› with
    toRing := h
    inv := fun x =>
      letI := Classical.decEq K
      if H : x = 0 then 0 else Classical.choose <| FiniteDimensional.exists_mul_eq_one F H
    mul_inv_cancel := fun x hx =>
      show x * dite _ (h := _) _ = _ by
        rw [dif_neg hx]
        exact (Classical.choose_spec (FiniteDimensional.exists_mul_eq_one F hx) :)
    inv_zero := dif_pos rfl }
#align division_ring_of_finite_dimensional divisionRingOfFiniteDimensional

/-- An integral domain that is module-finite as an algebra over a field is a field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteDimensional/Variant764f7ca13a498ae399b0f9a75f72d00dad3fda448aa0071c6cd0ecc54da95942.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant764f7ca13a498ae399b0f9a75f72d00dad3fda448aa0071c6cd0ecc54da95942.lean#L1090).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9bd4711528e02e48be1c10bb6d7a39467adff0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
