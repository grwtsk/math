# log_two_mul_dyadicScale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf93a80f-33ec-4dcf-ae96-18054eab52a6",
  "kind": "theorem",
  "lexical_name": "log_two_mul_dyadicScale",
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
  "slug": "log-two-mul-dyadicscale--90d83bc5dfbd81626eceb814",
  "source": {
    "blob": "b7bc717e32b7cdfaff56d5258e6c98093ed9f9ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 109,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90d83bc5dfbd81626eceb8147cf0781731899ae5d1d21a13e4580ae958571253",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf93a80f-33ec-4dcf-ae96-18054eab52a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_two_mul_dyadicScale (j : ℕ) :
    Real.log (((2 * dyadicScale j : ℕ) : ℝ)) =
      ((j : ℝ) + 2) * Real.log 2 := by
  calc
    Real.log (((2 * dyadicScale j : ℕ) : ℝ)) =
        Real.log ((2 : ℝ) ^ (j + 2)) := by
          rw [two_mul_dyadicScale_eq_pow]
          push_cast
          rfl
    _ = (j + 2 : ℕ) * Real.log (2 : ℝ) := by
      rw [Real.log_pow]
    _ = ((j : ℝ) + 2) * Real.log 2 := by
      push_cast
      ring

/-- Bertrand primes with arbitrarily large logarithm exist in actual
late next octaves. This is stronger than a single prime-witness lemma
and requires no PNT. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7bc717e32b7cdfaff56d5258e6c98093ed9f9ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
