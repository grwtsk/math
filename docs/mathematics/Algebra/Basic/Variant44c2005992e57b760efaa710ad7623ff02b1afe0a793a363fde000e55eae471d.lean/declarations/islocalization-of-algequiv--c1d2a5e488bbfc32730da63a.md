# isLocalization_of_algEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51677891-043b-1dda-81eb-d11c5b2814e1",
  "kind": "theorem",
  "lexical_name": "isLocalization_of_algEquiv",
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
  "slug": "islocalization-of-algequiv--c1d2a5e488bbfc32730da63a",
  "source": {
    "blob": "43c5ad6059f4ee16137d18d8ef5c32ac7f89abb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 337,
    "path": "GRWTSK/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1d2a5e488bbfc32730da63a1d9721bb7b7c8ffd5cb42f5b8dfb61aa8ce0fe00",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51677891-043b-1dda-81eb-d11c5b2814e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocalization_of_algEquiv [Algebra R P] [IsLocalization M S] (h : S ≃ₐ[R] P) :
    IsLocalization M P := by
  constructor; constructor
  · intro y
    convert! (IsLocalization.map_units S y).map h.toAlgHom.toRingHom.toMonoidHom
    exact (h.commutes y).symm
  · intro y
    obtain ⟨⟨x, s⟩, e⟩ := IsLocalization.surj M (h.symm y)
    apply_fun (show S → P from h) at e
    simp only [map_mul, h.apply_symm_apply, h.commutes] at e
    exact ⟨⟨x, s⟩, e⟩
  · intro x y
    rw [← h.symm.toEquiv.injective.eq_iff, ← IsLocalization.eq_iff_exists M S, ← h.symm.commutes, ←
      h.symm.commutes]
    exact id

variable {M} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43c5ad6059f4ee16137d18d8ef5c32ac7f89abb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
