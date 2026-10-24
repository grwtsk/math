# representative_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee28083f-7244-f044-a468-b22eec7fba1c",
  "kind": "theorem",
  "lexical_name": "representative_primitive",
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
  "slug": "representative-primitive--ba05adec6325dd5b413d6d70",
  "source": {
    "blob": "08bf6ec91f9a7815932c3a245b5d5132fb986135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 134,
    "path": "GRWTSK/NumberTheory/Height/RationalVectorAffineHeight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba05adec6325dd5b413d6d70d3048b1b3ab8afc1a6df63080b14bda20720860a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Height/RationalVectorAffineHeight.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee28083f-7244-f044-a468-b22eec7fba1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem representative_primitive (x : ι → ℚ) (d : ℕ)
    (h : ∀ j, (d : ℤ) ∣ representative x j) : d = 1 := by
  have hdD : d ∣ denominator x := Int.natCast_dvd_natCast.mp (h none)
  obtain ⟨t, ht⟩ := hdD
  have hdt : d * t ≠ 0 := by rw [← ht]; exact denominator_ne_zero x
  have hd0 : d ≠ 0 := left_ne_zero_of_mul hdt
  have ht0 : t ≠ 0 := right_ne_zero_of_mul hdt
  have hclear : ∀ i, ClearsValue t (x i) := by
    intro i
    obtain ⟨z, hz⟩ := h (some i)
    change numerator x i = (d : ℤ) * z at hz
    refine ⟨z, ?_⟩
    apply mul_left_cancel₀ (Nat.cast_ne_zero.mpr hd0 : (d : ℚ) ≠ 0)
    calc
      (d : ℚ) * ((t : ℚ) * x i) = (denominator x : ℚ) * x i := by
        rw [ht, Nat.cast_mul]; ring
      _ = (numerator x i : ℚ) := numerator_spec x i
      _ = (d : ℚ) * (z : ℚ) := by exact_mod_cast hz
  have hdiv : denominator x ∣ t := (denominator_dvd_iff_clears x t).mpr hclear
  have hle := Nat.le_of_dvd (Nat.pos_of_ne_zero ht0) hdiv
  have hdpos := Nat.pos_of_ne_zero hd0
  have htpos := Nat.pos_of_ne_zero ht0
  nlinarith

end Denominator

section Height
variable {ι κ : Type*} [Fintype ι] [Nonempty ι] [Fintype κ] [Nonempty κ]

/-- Multiplicative affine height of [1:x] in this named coordinate frame. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Height/RationalVectorAffineHeight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Height/RationalVectorAffineHeight.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08bf6ec91f9a7815932c3a245b5d5132fb986135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
