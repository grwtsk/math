# not_isField_of_isSquare_discr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cc3188e-2690-6179-2be8-630baad3d215",
  "kind": "theorem",
  "lexical_name": "not_isField_of_isSquare_discr",
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
  "slug": "not-isfield-of-issquare-discr--9511e5789436a0d90c435197",
  "source": {
    "blob": "f94de84008804b2f718166291f9c3a04b62d1011",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 188,
    "path": "GRWTSK/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9511e5789436a0d90c435197bdc1b233b5c8a98c8778c9d4a3caaff4071247d6",
  "verification": {
    "reference": "docs/verification/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cc3188e-2690-6179-2be8-630baad3d215`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_isField_of_isSquare_discr [NeZero (2 : K)] {a b : K}
    (h : IsSquare (discr a b)) : ¬ IsField (QuadraticAlgebra K a b) := by
  let : Invertible (2 : K) := invertibleOfNonzero two_ne_zero
  obtain ⟨r, hr⟩ := exists_sq_eq_iff_isSquare_discr.mpr h
  intro hfield
  let := hfield.toField
  have : (⟨r, -1⟩ : QuadraticAlgebra K a b) ∈ nonZeroDivisors (QuadraticAlgebra K a b) := by
    simp [mem_nonZeroDivisors_iff_ne_zero, QuadraticAlgebra.ext_iff]
  rw [← norm_mem_nonZeroDivisors_iff, show norm ⟨r, -1⟩ = 0 by rw [norm_def]; grind] at this
  exact zero_notMem_nonZeroDivisors this

/-- If `2 ≠ 0` in the field `K`, `QuadraticAlgebra K a b` is a field iff `discr a b` is
not a square. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f94de84008804b2f718166291f9c3a04b62d1011` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
