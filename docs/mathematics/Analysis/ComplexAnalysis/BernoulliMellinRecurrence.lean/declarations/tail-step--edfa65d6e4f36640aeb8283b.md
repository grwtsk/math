# tail_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1820e706-a84b-0ce4-17e8-990b7ace0dde",
  "kind": "theorem",
  "lexical_name": "tail_step",
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
  "slug": "tail-step--edfa65d6e4f36640aeb8283b",
  "source": {
    "blob": "6036c71a64effca36022444f769c4289b646a1ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 171,
    "path": "GRWTSK/Analysis/Complex/BernoulliMellinRecurrence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edfa65d6e4f36640aeb8283b963f5952a36f13b5977bbf0df3417e455b6424ff",
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

Occurrence: `result:1820e706-a84b-0ce4-17e8-990b7ace0dde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tail_step {m N : ℕ} (hm : 1 ≤ m) (hN : 1 ≤ N) {s : ℂ} (hs : 0 < s.re) :
    ((m + 1 : ℕ) : ℂ) * tail m (N : ℝ) s - (s + m) * tail (m + 1) (N : ℝ) s =
      -(_root_.bernoulli (m + 1) : ℂ) * (N : ℂ) ^ (-s - (m : ℂ)) := by
  have hNr : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have ht : Tendsto (fun K : ℕ => ((N + K : ℕ) : ℝ)) atTop atTop := by
    simpa only [Nat.cast_add, add_comm] using
      tendsto_atTop_add_const_right atTop (N : ℝ) tendsto_natCast_atTop_atTop
  have hi (j : ℕ) (hj : 1 ≤ j) :
      Tendsto (fun K : ℕ => block j N K s) atTop (𝓝 (tail j (N : ℝ) s)) := by
    have hexp : 1 < s.re + j := by
      have hjr : (1 : ℝ) ≤ j := by exact_mod_cast hj
      linarith
    have h := intervalIntegral_tendsto_integral_Ioi (N : ℝ)
      (integrable_tail j hNr hexp le_rfl) ht
    convert h using 1
    ext K
    exact (block_integral j hN K s).2
  have hleft := ((hi m hm).const_mul (((m + 1 : ℕ) : ℂ))).sub
    ((hi (m + 1) (by omega)).const_mul (s + (m : ℂ)))
  have hp := boundary_tendsto_zero m hN (by
    have hmr : (1 : ℝ) ≤ m := by exact_mod_cast hm
    linarith)
  have hright := (hp.sub_const ((N : ℂ) ^ (-s - (m : ℂ)))).const_mul
    (_root_.bernoulli (m + 1) : ℂ)
  have hlim := hright.congr (fun K => (block_step hm hN K s).symm)
  simpa only [zero_sub, mul_neg, neg_mul] using tendsto_nhds_unique hleft hlim

end
end GRWTSK.Analysis.Complex.BernoulliMellinRecurrence
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/BernoulliMellinRecurrence.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6036c71a64effca36022444f769c4289b646a1ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
