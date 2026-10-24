# clearsValue_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fba1880d-de22-fead-181a-f2007c020d35",
  "kind": "theorem",
  "lexical_name": "clearsValue_iff",
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
  "slug": "clearsvalue-iff--e23a1d236aec00e0faa66c13",
  "source": {
    "blob": "08bf6ec91f9a7815932c3a245b5d5132fb986135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 26,
    "path": "GRWTSK/NumberTheory/Height/RationalVectorAffineHeight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e23a1d236aec00e0faa66c1335d6a62596fe3068f05c08aca249f790ce241f53",
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

Occurrence: `result:fba1880d-de22-fead-181a-f2007c020d35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem clearsValue_iff (d : ℕ) (q : ℚ) : ClearsValue d q ↔ q.den ∣ d := by
  constructor
  · rintro ⟨z, hz⟩
    by_cases hd : d = 0
    · simp [hd]
    have hq : q = (z : ℚ) / (d : ℚ) :=
      (eq_div_iff (Nat.cast_ne_zero.mpr hd)).mpr (by simpa [mul_comm] using hz)
    rw [hq]
    have h := Rat.den_dvd z (d : ℤ)
    rw [← Rat.intCast_div_eq_divInt, Int.cast_natCast] at h
    exact Int.natCast_dvd_natCast.mp h
  · rintro ⟨t, ht⟩
    refine ⟨q.num * (t : ℤ), ?_⟩
    rw [ht, Nat.cast_mul]
    calc
      (q.den : ℚ) * (t : ℚ) * q = (q * (q.den : ℚ)) * (t : ℚ) := by ring
      _ = (q.num : ℚ) * (t : ℚ) := by rw [Rat.mul_den_eq_num]
      _ = ((q.num * (t : ℤ) : ℤ) : ℚ) := by simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Height/RationalVectorAffineHeight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Height/RationalVectorAffineHeight.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08bf6ec91f9a7815932c3a245b5d5132fb986135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
