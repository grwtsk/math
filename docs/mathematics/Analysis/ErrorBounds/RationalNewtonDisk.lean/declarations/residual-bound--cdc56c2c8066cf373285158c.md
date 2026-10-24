# residual_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1969a5fb-d598-7f76-e1f7-6b4574622017",
  "kind": "theorem",
  "lexical_name": "residual_bound",
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
  "slug": "residual-bound--cdc56c2c8066cf373285158c",
  "source": {
    "blob": "321418f59e2f15f55b09b7377513426b4f1eb407",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 79,
    "path": "GRWTSK/Analysis/ErrorBounds/RationalNewtonDisk.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdc56c2c8066cf373285158ca2a2a851eeeebf9293ac6fbd40de236e0e8c0de6",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/RationalNewtonDisk.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1969a5fb-d598-7f76-e1f7-6b4574622017`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_bound {f : ℂ → ℂ} {c : Coordinates} {R : ℚ} {p : Data}
    (he : Estimates f c R p) :
    ‖toComplex p.inverse * f (toComplex c)‖ ≤ (residual p : ℝ) := by
  let A := toComplex p.inverse
  have hE : (0 : ℝ) ≤ p.valueError := (norm_nonneg _).trans he.1
  calc
    _ = ‖A * toComplex p.value + A * (f (toComplex c) - toComplex p.value)‖ := by
      congr 1; dsimp [A]; ring
    _ ≤ ‖A * toComplex p.value‖ + ‖A * (f (toComplex c) - toComplex p.value)‖ := norm_add_le _ _
    _ ≤ (magnitude (mul p.inverse p.value) : ℝ) +
        (magnitude p.inverse : ℝ) * (p.valueError : ℝ) := by
      apply add_le_add
      · simpa only [A, toComplex_mul] using norm_le_magnitude (mul p.inverse p.value)
      · rw [norm_mul]
        exact mul_le_mul (norm_le_magnitude _) he.1 (norm_nonneg _) (by exact_mod_cast magnitude_nonneg p.inverse)
    _ = _ := by simp only [residual, Rat.cast_add, Rat.cast_mul]

/-- Center derivative uncertainty and disk-wide derivative variation are both paid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/RationalNewtonDisk.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/RationalNewtonDisk.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `321418f59e2f15f55b09b7377513426b4f1eb407` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
