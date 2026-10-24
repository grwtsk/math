# density_scaled_trace_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30766625-c759-6e12-90e1-61bd6f3b117b",
  "kind": "theorem",
  "lexical_name": "density_scaled_trace_error",
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
  "slug": "density-scaled-trace-error--62420401642ee7c9589e2669",
  "source": {
    "blob": "625d1683e862eabb9bc10ddea4eeabfef7e5fcbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 79,
    "path": "GRWTSK/Analysis/Complex/IntervalMellinScaledExponential.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62420401642ee7c9589e26695a33f8a6a05b11ac688d530b51ce7f0918623394",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IntervalMellinScaledExponential.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30766625-c759-6e12-90e1-61bd6f3b117b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_scaled_trace_error {z : ℂ} (hz : z.re ≤ 1) {t : ℝ} (ht : 1 ≤ t)
    (k L₂ Lr s M : ℕ) (hk : (2 : ℝ) ^ k ≤ t) (hL₂ : 0 < L₂) (hLr : 0 < Lr)
    (hguard : (reducedNodeBound z t k L₂ Lr / (2 ^ s : ℕ)) / (M + 1 : ℕ) ≤
      (1 / 2 : ℝ))
    (acc : ℕ → ℂ) (e_seed : ℝ) (r : ℕ → ℝ)
    (hseed : ‖taylorValue (((z - 1) * (reducedLogCenter t k L₂ Lr : ℂ)) /
      (2 ^ s : ℕ)) M - acc 0‖ ≤ e_seed)
    (hstep : ∀ j < s, ‖acc (j + 1) - acc j ^ 2‖ ≤ r j) :
    ‖density z t - acc s‖ ≤ componentBound (z - 1) * reducedLogRadius t k L₂ Lr +
      roundedRadius (taylorTail (reducedNodeBound z t k L₂ Lr / (2 ^ s : ℕ)) M +
        e_seed) r s := by
  have hi := density_to_reduced_exponential hz ht k L₂ Lr hk hL₂ hLr
  have he := scaled_exp_trace_error (reduced_argument_bound z t k L₂ Lr)
    (reduced_exponent_re_nonpos hz k L₂ Lr hk hL₂ hLr) s M hguard acc e_seed r hseed hstep
  calc
    _ = ‖(density z t - Complex.exp ((z - 1) * (reducedLogCenter t k L₂ Lr : ℂ))) +
        (Complex.exp ((z - 1) * (reducedLogCenter t k L₂ Lr : ℂ)) - acc s)‖ := by
      congr 1; abel
    _ ≤ _ := (norm_add_le _ _).trans (add_le_add hi he)

/-- Substitute the new samples into the existing exact covered partition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/IntervalMellinScaledExponential.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/IntervalMellinScaledExponential.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `625d1683e862eabb9bc10ddea4eeabfef7e5fcbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
