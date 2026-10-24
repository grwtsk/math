# exists_primitive_element_of_finite_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61ec1a4a-73f6-ce2c-b55b-5d6bdad5471b",
  "kind": "theorem",
  "lexical_name": "exists_primitive_element_of_finite_top",
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
  "slug": "exists-primitive-element-of-finite-top--bf4f47a79f07b6782cf92745",
  "source": {
    "blob": "4dbd270553095739f827fad1f63bdba71b14d03d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 62,
    "path": "GRWTSK/Algebra/PrimitiveElement/Variant97ae4cbf66c13eca0415a743143b06f8dbff15092c9cf2f8ca792e0a2c99759a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf4f47a79f07b6782cf92745281233dbb5b5d1814786f71ee6ea30895b37f272",
  "verification": {
    "reference": "docs/verification/Algebra/PrimitiveElement/Variant97ae4cbf66c13eca0415a743143b06f8dbff15092c9cf2f8ca792e0a2c99759a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61ec1a4a-73f6-ce2c-b55b-5d6bdad5471b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_primitive_element_of_finite_top [Finite E] : ∃ α : E, F⟮α⟯ = ⊤ := by
  obtain ⟨α, hα⟩ := @IsCyclic.exists_generator (Units E) _ _
  use α
  apply eq_top_iff.mpr
  rintro x -
  by_cases hx : x = 0
  · rw [hx]
    exact F⟮α.val⟯.zero_mem
  · obtain ⟨n, hn⟩ := Set.mem_range.mp (hα (Units.mk0 x hx))
    simp only at hn
    rw [show x = α ^ n by norm_cast; rw [hn, Units.val_mk0], Units.val_zpow_eq_zpow_val]
    exact zpow_mem (mem_adjoin_simple_self F (E := E) ↑α) n
#align field.exists_primitive_element_of_finite_top Field.exists_primitive_element_of_finite_top

/-- Primitive element theorem for finite dimensional extension of a finite field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrimitiveElement/Variant97ae4cbf66c13eca0415a743143b06f8dbff15092c9cf2f8ca792e0a2c99759a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrimitiveElement/Variant97ae4cbf66c13eca0415a743143b06f8dbff15092c9cf2f8ca792e0a2c99759a.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dbd270553095739f827fad1f63bdba71b14d03d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
