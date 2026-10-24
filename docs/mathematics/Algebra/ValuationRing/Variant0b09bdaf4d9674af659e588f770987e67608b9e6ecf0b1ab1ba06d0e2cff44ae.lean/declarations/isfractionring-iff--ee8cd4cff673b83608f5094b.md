# isFractionRing_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ccda6d03-4412-8eaf-a59d-0ad8564019f1",
  "kind": "theorem",
  "lexical_name": "isFractionRing_iff",
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
  "slug": "isfractionring-iff--ee8cd4cff673b83608f5094b",
  "source": {
    "blob": "9e8ece665efaf8d2d37fa86e246c44a78e60a49b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 459,
    "path": "GRWTSK/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee8cd4cff673b83608f5094b132d7de524b35d90b6d198dc2c35c847ffb5ba3e",
  "verification": {
    "reference": "docs/verification/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccda6d03-4412-8eaf-a59d-0ad8564019f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isFractionRing_iff [ValuationRing 𝒪] :
    IsFractionRing 𝒪 K ↔
      (∀ (x : K), ∃ a : 𝒪, x = algebraMap 𝒪 K a ∨ x⁻¹ = algebraMap 𝒪 K a) ∧
        Function.Injective (algebraMap 𝒪 K) := by
  refine ⟨fun h ↦ ⟨fun x ↦ ?_, IsFractionRing.injective _ _⟩, fun h ↦ ?_⟩
  · obtain (⟨a, e⟩ | ⟨a, e⟩) := isInteger_or_isInteger 𝒪 x
    exacts [⟨a, .inl e.symm⟩, ⟨a, .inr e.symm⟩]
  · constructor
    · intro a
      simpa using h.2.ne_iff.mpr (nonZeroDivisors.ne_zero a.2)
    · intro x
      obtain ⟨a, ha⟩ := h.1 x
      by_cases h0 : a = 0
      · exact ⟨⟨0, 1⟩, by simpa [h0] using ha⟩
      · have : algebraMap 𝒪 K a ≠ 0 := by simpa using h.2.ne_iff.mpr h0
        rw [inv_eq_iff_eq_inv, ← one_div, eq_div_iff this] at ha
        cases ha with
        | inl ha => exact ⟨⟨a, 1⟩, by simpa⟩
        | inr ha => exact ⟨⟨1, ⟨a, mem_nonZeroDivisors_of_ne_zero h0⟩⟩, by simpa using ha⟩
    · intro _ _ hab
      exact ⟨1, by simp only [OneMemClass.coe_one, h.2 hab, one_mul]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e8ece665efaf8d2d37fa86e246c44a78e60a49b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
