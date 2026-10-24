# nonempty_algEquiv_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f28257ff-23ae-4460-5fb6-9cc032422037",
  "kind": "theorem",
  "lexical_name": "nonempty_algEquiv_iff",
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
  "slug": "nonempty-algequiv-iff--5ba6e423f530d6d38a5b5e44",
  "source": {
    "blob": "f94de84008804b2f718166291f9c3a04b62d1011",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 139,
    "path": "GRWTSK/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ba6e423f530d6d38a5b5e4499a3424218be97405405b972a3dbe742dc4435ee",
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

Occurrence: `result:f28257ff-23ae-4460-5fb6-9cc032422037`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonempty_algEquiv_iff (h : IsRegular (2 : R)) :
    Nonempty (QuadraticAlgebra R a b ≃ₐ[R] QuadraticAlgebra R a' b') ↔
      ∃ u : Rˣ, discr a b = (u : R) ^ 2 * discr a' b' ∧ 2 ∣ (b - u * b') := by
  refine ⟨fun ⟨e⟩ ↦ ?_, fun ⟨u, hu, ⟨k, hk⟩⟩ ↦ ⟨changeGeneratorEquiv a' b' u k ?_ (by grind)⟩⟩
  · refine ⟨(isUnit_im_omega_of_algEquiv e).unit,
      by rw [discr_eq_im_sq_mul_discr e.toAlgHom e.injective, AlgEquiv.toAlgHom_apply,
        IsUnit.unit_spec], ⟨(e ω).re, ?_⟩⟩
    rw [IsUnit.unit_spec, sub_eq_iff_eq_add', add_comm, mul_comm _ b', ← trace_def, eq_comm]
    exact trace_algHom_omega e.toAlgHom e.injective
  · rw [← h.left.eq_iff, ← h.left.eq_iff]
    grind [discr]

/-- If `2` is invertible, the discriminant classifies quadratic algebras up to
isomorphism, modulo squares of units. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Discriminant/Variant99ef406f4a793e091149192fc403c9cd5d5dcdb59b070885a85e0d1bf19731fe.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f94de84008804b2f718166291f9c3a04b62d1011` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
