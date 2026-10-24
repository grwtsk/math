# tail_eq_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d848c9e-3fcb-dcd9-bc58-5c1371bf8ea4",
  "kind": "theorem",
  "lexical_name": "tail_eq_sub",
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
  "slug": "tail-eq-sub--bf89428132e5f0ad5865da69",
  "source": {
    "blob": "fc8f4cb42347fc8074e92dd2f9c0dc752fb0ed77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 105,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf89428132e5f0ad5865da69ae64cde6a8c07cca0f883c89d4bba3bfeef2b8db",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d848c9e-3fcb-dcd9-bc58-5c1371bf8ea4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tail_eq_sub {T : ℝ} {s : ℂ} (hT : 1 ≤ T) (hs : 0 < s.re) :
    tail T s = fractionalMellinTail T s - (T : ℂ) ^ (-s) / (2 * s) := by
  have hp := power_integrable hT hs
  have hi := fractionalMellinTail_integrable hT hs
  have heq : tail T s = ∫ t : ℝ in Ioi T,
      (fractionalIntegrand s t - (1 / 2 : ℂ) * (t : ℂ) ^ (-(s + 1))) := by
    apply setIntegral_congr_fun measurableSet_Ioi
    intro t ht
    exact integrand_eq_sub (hT.trans_lt ht)
  rw [heq, integral_sub hi (hp.const_mul (1 / 2 : ℂ)), integral_const_mul]
  have hexp : (-(s + 1)).re < -1 := by
    simp only [Complex.neg_re, Complex.add_re, Complex.one_re]
    linarith
  rw [integral_Ioi_cpow_of_lt hexp (zero_lt_one.trans_le hT),
    show -(s + 1) + 1 = -s by ring, neg_div_neg_eq]
  change fractionalMellinTail T s - (1 / 2 : ℂ) * ((T : ℂ) ^ (-s) / s) = _
  ring

/-- Exact full source identity. The apparent singularity is never used at s=0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc8f4cb42347fc8074e92dd2f9c0dc752fb0ed77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
