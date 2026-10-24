# clears_reciprocal_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99cfefd2-ef61-b931-cc59-b6b4246c2653",
  "kind": "theorem",
  "lexical_name": "clears_reciprocal_iff",
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
  "slug": "clears-reciprocal-iff--0eca498ff91934ade1327a3e",
  "source": {
    "blob": "08bf6ec91f9a7815932c3a245b5d5132fb986135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 81,
    "path": "GRWTSK/NumberTheory/Height/RationalVectorAffineHeight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0eca498ff91934ade1327a3e6e05322d806d44d1f2ca7eae9f827dafa7fd7350",
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

Occurrence: `result:99cfefd2-ef61-b931-cc59-b6b4246c2653`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem clears_reciprocal_iff (d : ℕ) (z : ℤ) (hz : z ≠ 0) :
    ClearsValue d (1 / (z : ℚ)) ↔ z ∣ (d : ℤ) := by
  have hzq : (z : ℚ) ≠ 0 := Int.cast_ne_zero.mpr hz
  constructor
  · rintro ⟨t, ht⟩
    have hq : (d : ℚ) = (z : ℚ) * (t : ℚ) := by
      have h := (div_eq_iff hzq).mp (by simpa [div_eq_mul_inv] using ht)
      simpa only [mul_comm] using h
    exact ⟨t, by exact_mod_cast hq⟩
  · rintro ⟨t, ht⟩
    refine ⟨t, ?_⟩
    have hq : (d : ℚ) = (z : ℚ) * (t : ℚ) := by exact_mod_cast ht
    rw [hq]
    field_simp

section Denominator
variable {ι : Type*} [Fintype ι]

/-- Least positive common denominator of the original, reduced rational coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Height/RationalVectorAffineHeight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Height/RationalVectorAffineHeight.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08bf6ec91f9a7815932c3a245b5d5132fb986135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
