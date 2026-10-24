# sqrt_increment_sq_le_reciprocal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a383c7d4-a0c0-82d6-f925-d8556866abd8",
  "kind": "theorem",
  "lexical_name": "sqrt_increment_sq_le_reciprocal",
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
  "slug": "sqrt-increment-sq-le-reciprocal--1ee7e13a763fa699885ec994",
  "source": {
    "blob": "846c5cf5f51498a60713fa2394b89dce2361d0d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 28,
    "path": "GRWTSK/NumberTheory/Moebius/ReciprocalFluxKernelBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ee7e13a763fa699885ec99400eefee139717bf9841f420da2e3ea135b26c01c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ReciprocalFluxKernelBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a383c7d4-a0c0-82d6-f925-d8556866abd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_increment_sq_le_reciprocal (k : ℕ) :
    (Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ)) ^ 2 ≤
      1 / ((k + 1 : ℕ) : ℝ) := by
  have ha : 0 < Real.sqrt ((k + 1 : ℕ) : ℝ) := by positivity
  have hb : 0 ≤ Real.sqrt (k : ℝ) := Real.sqrt_nonneg _
  have hab : 0 ≤ Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ) := by
    exact sub_nonneg.mpr (Real.sqrt_le_sqrt (by exact_mod_cast Nat.le_succ k))
  have hconj :
      (Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ)) *
          (Real.sqrt ((k + 1 : ℕ) : ℝ) + Real.sqrt (k : ℝ)) = 1 := by
    calc
      _ = Real.sqrt ((k + 1 : ℕ) : ℝ) ^ 2 - Real.sqrt (k : ℝ) ^ 2 := by ring
      _ = 1 := by
        rw [Real.sq_sqrt (by positivity), Real.sq_sqrt (by positivity)]
        norm_num
  have hrecip :
      Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ) =
        1 / (Real.sqrt ((k + 1 : ℕ) : ℝ) + Real.sqrt (k : ℝ)) := by
    rw [eq_div_iff]
    · exact hconj
    · positivity
  rw [hrecip, div_pow, one_pow]
  apply one_div_le_one_div_of_le
  · positivity
  · nlinarith [Real.sq_sqrt (show 0 ≤ ((k + 1 : ℕ) : ℝ) by positivity)]

/-- On and to the right of the left endpoint of the `n`th logarithmic cell,
the deterministic reciprocal-flux kernel has only logarithmic square mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ReciprocalFluxKernelBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ReciprocalFluxKernelBounds.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `846c5cf5f51498a60713fa2394b89dce2361d0d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
