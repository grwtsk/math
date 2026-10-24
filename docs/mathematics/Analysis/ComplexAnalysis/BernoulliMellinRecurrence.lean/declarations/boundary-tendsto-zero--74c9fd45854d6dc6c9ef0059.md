# boundary_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a4fcbce-48f7-2787-ec02-495dd163f904",
  "kind": "theorem",
  "lexical_name": "boundary_tendsto_zero",
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
  "slug": "boundary-tendsto-zero--74c9fd45854d6dc6c9ef0059",
  "source": {
    "blob": "6036c71a64effca36022444f769c4289b646a1ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 155,
    "path": "GRWTSK/Analysis/Complex/BernoulliMellinRecurrence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74c9fd45854d6dc6c9ef0059857dd4982cc9585c5f01122f041fdbd8b29a3f41",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a4fcbce-48f7-2787-ec02-495dd163f904`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_tendsto_zero (m : ℕ) {N : ℕ} (hN : 1 ≤ N) {s : ℂ}
    (hs : 0 < s.re + m) :
    Tendsto (fun K : ℕ => ((N + K : ℕ) : ℂ) ^ (-s - (m : ℂ))) atTop (𝓝 0) := by
  have ht : Tendsto (fun K : ℕ => ((N + K : ℕ) : ℝ)) atTop atTop := by
    simpa only [Nat.cast_add, add_comm] using
      tendsto_atTop_add_const_right atTop (N : ℝ) tendsto_natCast_atTop_atTop
  have hlim := (tendsto_rpow_neg_atTop hs).comp ht
  apply squeeze_zero_norm (fun K => ?_) hlim
  have hk : (0 : ℝ) < (N + K : ℕ) := by exact_mod_cast (show 0 < N + K by omega)
  rw [show ((N + K : ℕ) : ℂ) = (((N + K : ℕ) : ℝ) : ℂ) by simp,
    Complex.norm_cpow_eq_rpow_re_of_pos hk]
  simp only [Complex.sub_re, Complex.neg_re, Complex.natCast_re]
  exact le_of_eq (by congr 1; ring)

/-- Infinite integration by parts, now justified by absolute integrability and the
finite covered-block identity. No zeta statement has yet been used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/BernoulliMellinRecurrence.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6036c71a64effca36022444f769c4289b646a1ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
