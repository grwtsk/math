# isSymmetric_iff_inner_map_self_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0aa3f6d4-19dd-a5ef-18c0-adb123fd063f",
  "kind": "theorem",
  "lexical_name": "isSymmetric_iff_inner_map_self_real",
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
  "slug": "issymmetric-iff-inner-map-self-real--31706ed5a28de95a7ec3b460",
  "source": {
    "blob": "dce54212871cf5dbdfefb03ac3be57637fa98d01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 146,
    "path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31706ed5a28de95a7ec3b4608e6019f51d0142b1418a762d65bb093fe774f9eb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0aa3f6d4-19dd-a5ef-18c0-adb123fd063f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSymmetric_iff_inner_map_self_real (T : V →ₗ[ℂ] V) :
    IsSymmetric T ↔ ∀ v : V, conj ⟪T v, v⟫_ℂ = ⟪T v, v⟫_ℂ := by
  constructor
  · intro hT v
    apply IsSymmetric.conj_inner_sym hT
  · intro h x y
    rw [← inner_conj_symm x (T y)]
    rw [inner_map_polarization T x y]
    simp only [starRingEnd_apply, star_div₀, star_sub, star_add, star_mul]
    simp only [← starRingEnd_apply]
    rw [h (x + y), h (x - y), h (x + Complex.I • y), h (x - Complex.I • y)]
    simp only [Complex.conj_I]
    rw [inner_map_polarization']
    norm_num
    ring

end Complex

/-- Polarization identity for symmetric linear maps.
See `inner_map_polarization` for the complex version without the symmetric assumption. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dce54212871cf5dbdfefb03ac3be57637fa98d01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
