# phiV_quartic_sq_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d56815ae-3014-e42c-2370-d79f9752855f",
  "kind": "lemma",
  "lexical_name": "phiV_quartic_sq_ge",
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
  "slug": "phiv-quartic-sq-ge--405e4a4b90fc6c96bff603a1",
  "source": {
    "blob": "7a93fad2b51e67328575b14eecd00ee46eb7f55b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 144,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Variantf5bdb8a0973da6ed36c21e22e3e7d5e550f7fd7ace5c982753b4446eef583c53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:405e4a4b90fc6c96bff603a19ea38a74596c5a2922d005a5a3a3042c82e090eb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Variantf5bdb8a0973da6ed36c21e22e3e7d5e550f7fd7ace5c982753b4446eef583c53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d56815ae-3014-e42c-2370-d79f9752855f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma phiV_quartic_sq_ge (hP : P.Valid) {T : ℝ} (h8 : 8 * P.w ≤ P.L T) (u : ℝ) :
    27 / 40 * P.phi T u ^ 2 ≤ P.phiV vQuartic T u ^ 2 := by
  have hw0 : 0 < P.w := by linarith [hP.one_le_w]
  have hL : 0 < P.L T := by linarith [hP.one_le_w]
  rw [Params.phiV_eq, mul_pow, ← Params.phi_eq]
  rcases le_or_gt (P.L T / 2) |u| with hu | hu
  · rw [Params.phi_eq_zero hP hu]; simp
  · have hmem := core_mem hL hu.le
    have hv := vQuartic_ge hmem
    rw [Real.sq_sqrt (le_max_left _ _), max_eq_right (by linarith)]
    exact mul_le_mul_of_nonneg_right hv (sq_nonneg _)

set_option maxHeartbeats 1600000 in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Variantf5bdb8a0973da6ed36c21e22e3e7d5e550f7fd7ace5c982753b4446eef583c53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Variantf5bdb8a0973da6ed36c21e22e3e7d5e550f7fd7ace5c982753b4446eef583c53.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a93fad2b51e67328575b14eecd00ee46eb7f55b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
