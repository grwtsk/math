# prefixValueQ_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eefc6d21-d62f-351c-5df4-183cd17fbf5a",
  "kind": "theorem",
  "lexical_name": "prefixValueQ_exact",
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
  "slug": "prefixvalueq-exact--42db71c400c1a10bf1dc1c31",
  "source": {
    "blob": "410b2a3dc873896136a17bdb5985d2b8d1d33ff1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 248,
    "path": "GRWTSK/Analysis/Real/RationalTentCorrectionPrefixExact.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42db71c400c1a10bf1dc1c31db343b34e524440a9d16c1f8637342b0c1319d66",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eefc6d21-d62f-351c-5df4-183cd17fbf5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prefixValueQ_exact
    (N : ℕ) (x h : ℚ) (hh : 0 < h) (ha : 1 < x - h) :
    (prefixValueQ N x h : ℝ) =
      correctionPrefix N (x : ℝ) (h : ℝ) := by
  induction N with
  | zero =>
      simp [prefixValueQ, correctionPrefix, densityPrefix]
  | succ N ih =>
      have hhR : (0 : ℝ) < (h : ℝ) := by exact_mod_cast hh
      have haR : (1 : ℝ) < (x : ℝ) - (h : ℝ) := by exact_mod_cast ha
      have hp : IntervalIntegrable
          (fun t => tent (x : ℝ) (h : ℝ) t * densityPrefix N t)
          volume ((x : ℝ) - (h : ℝ)) ((x : ℝ) + (h : ℝ)) := by
        apply ContinuousOn.intervalIntegrable_of_Icc (by linarith)
        exact (continuous_tent (x : ℝ) (h : ℝ)).continuousOn.mul
          (densityPrefix_continuousOn N haR)
      have ht : IntervalIntegrable
          (fun t => tent (x : ℝ) (h : ℝ) t * densityTerm N t)
          volume ((x : ℝ) - (h : ℝ)) ((x : ℝ) + (h : ℝ)) := by
        apply ContinuousOn.intervalIntegrable_of_Icc (by linarith)
        exact (continuous_tent (x : ℝ) (h : ℝ)).continuousOn.mul
          (densityTerm_continuousOn N (by linarith))
      rw [prefixValueQ, Rat.cast_sub, ih]
      unfold correctionPrefix
      rw [densityPrefix_succ]
      change -(∫ t in ((x : ℝ) - (h : ℝ))..((x : ℝ) + (h : ℝ)),
        tent (x : ℝ) (h : ℝ) t *
          (densityPrefix N t + densityTerm N t)) =
        -∫ t in ((x : ℝ) - (h : ℝ))..((x : ℝ) + (h : ℝ)),
          tent (x : ℝ) (h : ℝ) t * densityPrefix N t -
            (termQ N x h : ℝ)
      simp only [mul_add]
      rw [intervalIntegral.integral_add hp ht,
        integral_tent_densityTerm N x h hh ha]
      ring

/-- Exact rational finite-prefix evaluation supplies the prior semantic
`PrefixEnclosure` with zero evaluation error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/RationalTentCorrectionPrefixExact.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/RationalTentCorrectionPrefixExact.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `410b2a3dc873896136a17bdb5985d2b8d1d33ff1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
