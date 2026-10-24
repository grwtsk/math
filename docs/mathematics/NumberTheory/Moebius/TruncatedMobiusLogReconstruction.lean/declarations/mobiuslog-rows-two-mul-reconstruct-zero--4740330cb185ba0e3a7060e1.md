# mobiusLog_rows_two_mul_reconstruct_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a31b60d2-1e41-253b-3426-ad56a09f3a5f",
  "kind": "theorem",
  "lexical_name": "mobiusLog_rows_two_mul_reconstruct_zero",
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
  "slug": "mobiuslog-rows-two-mul-reconstruct-zero--4740330cb185ba0e3a7060e1",
  "source": {
    "blob": "57360c4ce401d82c0dd3edad9cd1b3d1dae277f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 74,
    "path": "GRWTSK/NumberTheory/Moebius/TruncatedMobiusLogReconstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4740330cb185ba0e3a7060e177663acf2c4b6a5895959d1fe6c647c5dbf322bf",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/TruncatedMobiusLogReconstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a31b60d2-1e41-253b-3426-ad56a09f3a5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mobiusLog_rows_two_mul_reconstruct_zero
    {N : ℕ} (a : ℕ → ℝ)
    (hrows : ∀ n, 1 ≤ n → n ≤ 2 * N → mobiusLogDivisorRow a n = 0) :
    ∀ d, 1 ≤ d → d ≤ N → a d = 0 := by
  intro d
  induction d using Nat.strong_induction_on with
  | h d ih =>
      intro hd hdN
      have hlower : ∀ r, 1 ≤ r → r < d → a r = 0 := by
        intro r hr hrlt
        exact ih r hrlt hr (by omega)
      have hrow : mobiusLogDivisorRow a (2 * d) = 0 :=
        hrows (2 * d) (by omega) (by nlinarith)
      rw [mobiusLogDivisorRow_two_mul_eq hd hlower] at hrow
      have hlog2 : Real.log 2 ≠ 0 := by positivity
      exact (mul_eq_zero.mp hrow).resolve_right hlog2

/-- Exact injectivity threshold for arbitrary packets: equality of truncated
outputs through 2N recovers equality of the first N input coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/TruncatedMobiusLogReconstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/TruncatedMobiusLogReconstruction.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57360c4ce401d82c0dd3edad9cd1b3d1dae277f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
