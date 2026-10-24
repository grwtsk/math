# reducedLogCenter_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b97ce7e2-2740-9db9-3ee7-1e10879dcd9d",
  "kind": "theorem",
  "lexical_name": "reducedLogCenter_error",
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
  "slug": "reducedlogcenter-error--6819b02d1ba10eb371d668f5",
  "source": {
    "blob": "141ad980037bae767a4a1e0ab0885d4f3e376aec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 85,
    "path": "GRWTSK/Analysis/ErrorBounds/DyadicLogEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6819b02d1ba10eb371d668f5a0b64621c0313a821391970e282d14cabf0d7fee",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/DyadicLogEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b97ce7e2-2740-9db9-3ee7-1e10879dcd9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reducedLogCenter_error {t : ℝ} (ht : 1 ≤ t) (k L₂ Lr : ℕ)
    (hk : (2 : ℝ) ^ k ≤ t) (hL₂ : 0 < L₂) (hLr : 0 < Lr) :
    |Real.log t - reducedLogCenter t k L₂ Lr| ≤ reducedLogRadius t k L₂ Lr := by
  have htwo := logCenter_error (show (1 : ℝ) ≤ 2 by norm_num) L₂ hL₂
  have hr := logCenter_error (dyadicMantissa_ge_one hk) Lr hLr
  calc
    _ = |(k : ℝ) * (Real.log 2 - logCenter 2 L₂) +
        (Real.log (dyadicMantissa t k) - logCenter (dyadicMantissa t k) Lr)| := by
      rw [log_dyadic_reconstruct (zero_lt_one.trans_le ht) k]
      unfold reducedLogCenter
      congr 1
      ring
    _ ≤ |(k : ℝ) * (Real.log 2 - logCenter 2 L₂)| +
        |Real.log (dyadicMantissa t k) - logCenter (dyadicMantissa t k) Lr| := abs_add_le _ _
    _ = (k : ℝ) * |Real.log 2 - logCenter 2 L₂| +
        |Real.log (dyadicMantissa t k) - logCenter (dyadicMantissa t k) Lr| := by
      rw [abs_mul, abs_of_nonneg (Nat.cast_nonneg k)]
    _ ≤ _ := add_le_add (mul_le_mul_of_nonneg_left htwo (Nat.cast_nonneg k)) hr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/DyadicLogEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/DyadicLogEnclosure.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `141ad980037bae767a4a1e0ab0885d4f3e376aec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
