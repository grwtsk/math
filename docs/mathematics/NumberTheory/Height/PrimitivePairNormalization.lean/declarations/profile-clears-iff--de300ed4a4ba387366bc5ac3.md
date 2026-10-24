# profile_clears_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2a55d6a-cc81-3294-dcc5-392dc12393f2",
  "kind": "theorem",
  "lexical_name": "profile_clears_iff",
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
  "slug": "profile-clears-iff--de300ed4a4ba387366bc5ac3",
  "source": {
    "blob": "1f7f7ac1a5fa69d996d8d0814fbcf5e27faa7c9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 56,
    "path": "GRWTSK/NumberTheory/Height/PrimitivePairNormalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de300ed4a4ba387366bc5ac3c74c950bd52c6def5e7a3554806fc5557a7a3ea6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Height/PrimitivePairNormalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2a55d6a-cc81-3294-dcc5-392dc12393f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem profile_clears_iff (a b c d : ℕ) (hc : c ≠ 0)
    (r s : ℤ) (hrs : r * (a : ℤ) + s * (b : ℤ) = 1) :
    (∀ i, ClearsValue d (profile a b c i)) ↔ c ∣ d := by
  have hcz : (c : ℤ) ≠ 0 := Int.natCast_ne_zero.mpr hc
  constructor
  · intro h
    have hq : (r : ℚ) * (a : ℚ) + (s : ℚ) * (b : ℚ) = 1 := by exact_mod_cast hrs
    have hrec := clears_sub d _ _
      (clears_int_mul d r (profile a b c 1) (h 1))
      (clears_int_mul d s (profile a b c 2) (h 2))
    have he : (r : ℚ) * profile a b c 1 - (s : ℚ) * profile a b c 2 = 1 / (c : ℚ) := by
      change (r : ℚ) * ((a : ℚ) / c) - (s : ℚ) * (-(b : ℚ) / c) = _
      calc
        _ = ((r : ℚ) * (a : ℚ) + (s : ℚ) * (b : ℚ)) / (c : ℚ) := by ring
        _ = _ := by rw [hq]
    rw [he] at hrec
    apply Int.natCast_dvd_natCast.mp
    exact (clears_reciprocal_iff d (c : ℤ) hcz).mp (by simpa only [Int.cast_natCast] using hrec)
  · intro h i
    have hrec : ClearsValue d (1 / (c : ℚ)) := by
      simpa only [Int.cast_natCast] using
        (clears_reciprocal_iff d (c : ℤ) hcz).mpr (Int.natCast_dvd_natCast.mpr h)
    fin_cases i
    · exact ⟨0, by simp [profile]⟩
    · simpa [profile, div_eq_mul_inv] using clears_int_mul d (a : ℤ) (1 / (c : ℚ)) hrec
    · simpa [profile, div_eq_mul_inv] using clears_int_mul d (-(b : ℤ)) (1 / (c : ℚ)) hrec

/-- Exact least denominator, not just divisibility or occupied prime support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Height/PrimitivePairNormalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Height/PrimitivePairNormalization.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f7f7ac1a5fa69d996d8d0814fbcf5e27faa7c9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
