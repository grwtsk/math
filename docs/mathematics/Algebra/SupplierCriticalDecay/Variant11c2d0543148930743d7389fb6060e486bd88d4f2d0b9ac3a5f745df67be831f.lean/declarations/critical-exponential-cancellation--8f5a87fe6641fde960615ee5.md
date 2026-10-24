# critical_exponential_cancellation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e805c47-f768-0a57-e319-e9a5b302e846",
  "kind": "theorem",
  "lexical_name": "critical_exponential_cancellation",
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
  "slug": "critical-exponential-cancellation--8f5a87fe6641fde960615ee5",
  "source": {
    "blob": "602400a08e5b8a7792355c50773dc002a04f3355",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 100,
    "path": "GRWTSK/Algebra/SupplierCriticalDecay/Variant11c2d0543148930743d7389fb6060e486bd88d4f2d0b9ac3a5f745df67be831f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f5a87fe6641fde960615ee5855d7a9f353b2a86d7cdac05fa3bd0cef73c2621",
  "verification": {
    "reference": "docs/verification/Algebra/SupplierCriticalDecay/Variant11c2d0543148930743d7389fb6060e486bd88d4f2d0b9ac3a5f745df67be831f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e805c47-f768-0a57-e319-e9a5b302e846`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem critical_exponential_cancellation (T : ℝ) (n : ℕ) :
    criticalFactor ^ n * Real.exp ((T + (n : ℝ) * criticalStep) / 2) =
      Real.exp (T / 2) := by
  induction n with
  | zero => simp
  | succ n ih =>
    have he : (T + ((n + 1 : ℕ) : ℝ) * criticalStep) / 2 =
        (T + (n : ℝ) * criticalStep) / 2 + criticalStep / 2 := by push_cast; ring
    rw [he, Real.exp_add, pow_succ]
    have hh : Real.exp (criticalStep / 2) = Real.sqrt 2 := by
      rw [criticalStep, Real.exp_half, Real.exp_log (by norm_num : (0 : ℝ) < 2)]
    rw [hh]
    calc
      _ = (criticalFactor ^ n * Real.exp ((T + (n : ℝ) * criticalStep) / 2)) *
          (criticalFactor * Real.sqrt 2) := by ring
      _ = Real.exp (T / 2) := by rw [ih]; simp [criticalFactor]

/-- Exponential decay in the square-root variable dominates every natural
polynomial, proved from Mathlib's exponential-over-power limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SupplierCriticalDecay/Variant11c2d0543148930743d7389fb6060e486bd88d4f2d0b9ac3a5f745df67be831f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SupplierCriticalDecay/Variant11c2d0543148930743d7389fb6060e486bd88d4f2d0b9ac3a5f745df67be831f.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `602400a08e5b8a7792355c50773dc002a04f3355` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
