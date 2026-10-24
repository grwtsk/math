# mellin_log_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf9ec45d-4234-2f98-f354-ceab404749e7",
  "kind": "lemma",
  "lexical_name": "mellin_log_cutoff",
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
  "slug": "mellin-log-cutoff--deb1b4c49228bd7430db9479",
  "source": {
    "blob": "60a81adb71f26f27a942cca13e1a9b46226ecc37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 78,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:deb1b4c49228bd7430db9479af64d461acf23122aacad9268376a6d0da8e8a78",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf9ec45d-4234-2f98-f354-ceab404749e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mellin_log_cutoff (K : BoundedKernel) {T : ℝ} (hT : 1 ≤ T) (z : ℂ) :
    mellin (fun t : ℝ => Real.log t • K.cutoff T t) (1-z) = K.logTail z T := by
  have h0 : 0 ≤ T := zero_le_one.trans hT
  have he : (fun t : ℝ => (t : ℂ) ^ ((1-z)-1) • (Real.log t • K.cutoff T t)) =
      (Ioi T).indicator (K.logIntegrand z) := by
    funext t
    by_cases ht : T < t
    · simp only [cutoff, mem_Ioi, indicator_of_mem ht, smul_eq_mul,
        Complex.real_smul, logIntegrand, integrand]
      rw [show (1-z)-1 = -z by ring]
      ring
    · simp [cutoff, ht]
  unfold mellin
  rw [he, integral_indicator measurableSet_Ioi,
    Measure.restrict_restrict measurableSet_Ioi]
  simp only [Ioi_inter_Ioi, max_eq_left h0, logTail]

/-- The true tail is holomorphic, and its derivative is the negative log-weighted tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60a81adb71f26f27a942cca13e1a9b46226ecc37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
