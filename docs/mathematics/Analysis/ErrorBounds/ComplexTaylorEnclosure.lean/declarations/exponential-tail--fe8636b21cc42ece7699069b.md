# exponential_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5625ee5b-6947-fa17-5ad5-6c35e8a614fa",
  "kind": "theorem",
  "lexical_name": "exponential_tail",
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
  "slug": "exponential-tail--fe8636b21cc42ece7699069b",
  "source": {
    "blob": "e7c7a410d9ed22cfc21b37faa2356a9de7b9341d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 48,
    "path": "GRWTSK/Analysis/ErrorBounds/ComplexTaylorEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe8636b21cc42ece7699069b1a25140ed68b29228ef5f1a6d9bd225314a1c22d",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/ComplexTaylorEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5625ee5b-6947-fa17-5ad5-6c35e8a614fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_tail {w : ℂ} {B : ℝ} (hw : ‖w‖ ≤ B) (M : ℕ)
    (hguard : B / (M + 1 : ℕ) ≤ (1 / 2 : ℝ)) :
    ‖Complex.exp w - taylorValue w M‖ ≤ taylorTail B M := by
  have hg : ‖w‖ / (M.succ : ℝ) ≤ (1 / 2 : ℝ) :=
    (div_le_div_of_nonneg_right hw (Nat.cast_nonneg _)).trans hguard
  have h := Complex.exp_bound' hg
  apply h.trans
  exact mul_le_mul_of_nonneg_right
    (div_le_div_of_nonneg_right
      (pow_le_pow_left₀ (norm_nonneg w) hw M) (Nat.cast_nonneg _)) (by norm_num)

/-- A division-free recurrence for perturbing powers; valid also at exponent zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/ComplexTaylorEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/ComplexTaylorEnclosure.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7c7a410d9ed22cfc21b37faa2356a9de7b9341d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
