# cyclotomic_dvd_of_mahlerMeasure_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c88a865-403b-8d50-f8d4-09178c93e7cc",
  "kind": "theorem",
  "lexical_name": "cyclotomic_dvd_of_mahlerMeasure_eq_one",
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
  "slug": "cyclotomic-dvd-of-mahlermeasure-eq-one--4be7e5a36b49acc5bce42cb4",
  "source": {
    "blob": "0f2f35613260f858c7a6a03b66337b2b6156dec3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 225,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4be7e5a36b49acc5bce42cb49b2c7754d08298cb9cc68a07a6758cd433b329bc",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c88a865-403b-8d50-f8d4-09178c93e7cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomic_dvd_of_mahlerMeasure_eq_one (hX : ¬ X ∣ p) (hpdeg : p.degree ≠ 0) :
    ∃ n, 0 < n ∧ cyclotomic n ℤ ∣ p := by
  have hpdegC : (p.map (castRingHom ℂ)).degree ≠ 0 := by
    rwa [p.degree_map_eq_of_injective (castRingHom ℂ).injective_int]
  obtain ⟨z, _⟩ := Splits.exists_eval_eq_zero (IsAlgClosed.splits <| p.map (castRingHom ℂ))
    hpdegC
  have hz₀ : z ≠ 0 := by
    contrapose hX
    simp_all [X_dvd_iff, coeff_zero_eq_aeval_zero]
  have h_z_root : z ∈ p.aroots ℂ := by aesop
  obtain ⟨m, h_m_pos, h_prim⟩ := isPrimitiveRoot_of_mahlerMeasure_eq_one h hz₀ h_z_root
  use m, h_m_pos
  rw [cyclotomic_eq_minpoly h_prim h_m_pos]
  apply minpoly.isIntegrallyClosed_dvd <| isIntegral_of_mahlerMeasure_eq_one h h_z_root
  exact (mem_aroots.mp h_z_root).2

end Cyclotomic

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant0a159b04b4b6bfdc283e4aa6600fe857a8b65947cf0be206d92cac2518dea772.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f2f35613260f858c7a6a03b66337b2b6156dec3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
