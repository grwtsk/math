# Ideal.torsionMapQuot_injective'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf462305-f350-862b-1b94-b42d8d062214",
  "kind": "theorem",
  "lexical_name": "Ideal.torsionMapQuot_injective'",
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
  "slug": "ideal-torsionmapquot-injective--1a3d41665cb3c53414a50909",
  "source": {
    "blob": "ca3fd952b6c61a488e929ae1b3243db386c8ad8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 143,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantfe9ea4ef3014f3f228884e60d1e54c62e52c8a148e51887dbf1bed7eadc7f371.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a3d41665cb3c53414a509094260357c7fb0b038a73f0dda931fb944162b5837",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantfe9ea4ef3014f3f228884e60d1e54c62e52c8a148e51887dbf1bed7eadc7f371.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf462305-f350-862b-1b94-b42d8d062214`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.torsionMapQuot_injective' {P : Ideal (𝓞 K)} [hP : P.IsPrime]
    (hP₁ : Algebra.IsUnramifiedAt ℤ P) (hP₂ : 2 < absNorm (under ℤ P)) :
    Function.Injective P.torsionMapQuot := by
  have : NeZero P := ⟨fun h ↦ by simp [h] at hP₂⟩
  rw [injective_iff_map_eq_one]
  by_contra!
  obtain ⟨⟨ζ, hζ₀⟩, hζ₁, hζ₂⟩ := this
  obtain ⟨n, hn, hζ₃⟩ : ∃ n, 2 ≤ n ∧ IsPrimitiveRoot (ζ : K) n := by
    refine ⟨orderOf ζ, ?_, IsPrimitiveRoot.coe_coe_iff.mpr (IsPrimitiveRoot.orderOf ζ)⟩
    rw [Nat.two_le_iff, orderOf_ne_zero_iff]
    exact ⟨hζ₀, by simpa using hζ₂⟩
  have h_cpr := hζ₃.not_coprime_norm_of_mk_eq_one
    (absNorm_eq_one_iff.not.mpr <| IsPrime.ne_top hP) hn
    (by rwa [Units.ext_iff, torsionMapQuot_apply, val_one] at hζ₁)
  let p := (Ideal.under ℤ P).absNorm
  have hp := Nat.absNorm_under_prime P
  have : Fact p.Prime := ⟨hp⟩
  rw [← P.pow_inertiaDeg p, Nat.coprime_pow_left_iff (P.inertiaDeg_pos ℤ),
    ← Nat.Prime.dvd_iff_not_coprime hp] at h_cpr
  obtain ⟨c, hc⟩ := h_cpr
  have hζ_pow := IsPrimitiveRoot.pow (by positivity) hζ₃ (by rwa [mul_comm])
  let F := ℚ⟮(ζ : K) ^ c⟯
  have : IsCyclotomicExtension {p} ℚ F :=
    hζ_pow.intermediateField_adjoin_isCyclotomicExtension ℚ
  suffices 1 < P.ramificationIdx ℤ by
    rwa [P.ramificationIdx_eq_one ℤ, lt_self_iff_false] at this
  refine lt_of_lt_of_le ?_ <| ramificationIdx_below_le (P.under (𝓞 F)) P
  rwa [IsCyclotomicExtension.Rat.ramificationIdx_eq_of_prime p F, Nat.lt_sub_iff_add_lt']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantfe9ea4ef3014f3f228884e60d1e54c62e52c8a148e51887dbf1bed7eadc7f371.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantfe9ea4ef3014f3f228884e60d1e54c62e52c8a148e51887dbf1bed7eadc7f371.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca3fd952b6c61a488e929ae1b3243db386c8ad8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
