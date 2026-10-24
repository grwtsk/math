# det_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39b8f641-23a6-5d1b-1ebc-fe73baddb4e6",
  "kind": "theorem",
  "lexical_name": "det_sound",
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
  "slug": "det-sound--5c8e488ff4153a8d0ca733b6",
  "source": {
    "blob": "8c07f6e2b6a959430ada7aec7e43ead1e9a63c42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 101,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianted1530df9684b41676fa2403dbda7ad91eb6f83c17a2cc64550f5600552ada0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c8e488ff4153a8d0ca733b61ad0d84a3c58d86022f6310b39a08b211509952a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianted1530df9684b41676fa2403dbda7ad91eb6f83c17a2cc64550f5600552ada0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39b8f641-23a6-5d1b-1ebc-fe73baddb4e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_sound {n : ℕ} (a : Matrix (Fin n) (Fin n) I)
    (x : Matrix (Fin n) (Fin n) ℝ)
    (h : ∀ i j, Contains (a i j) (x i j)) : Contains (det a) (Matrix.det x) := by
  induction n with
  | zero => simpa [det, Matrix.det_fin_zero] using point_sound 1
  | succ n ih =>
      rw [Matrix.det_succ_row_zero]
      apply sum_sound
      intro j
      apply mul_sound
      · apply mul_sound
        · simpa using point_sound ((-1 : ℤ) ^ j.val)
        · exact h 0 j
      · exact ih _ _ (fun i k => h i.succ (j.succAbove k))

/-- The nine supplied derivative enclosures rescaled by 2,000,000.
The center is the sum and the radius is the difference of the endpoint
numerators after expressing both endpoints with denominator 10^6. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianted1530df9684b41676fa2403dbda7ad91eb6f83c17a2cc64550f5600552ada0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianted1530df9684b41676fa2403dbda7ad91eb6f83c17a2cc64550f5600552ada0f.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c07f6e2b6a959430ada7aec7e43ead1e9a63c42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
