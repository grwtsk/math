# rounding_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:492c5ac0-82ad-f7d3-6b4f-a3d3dbbb5ad7",
  "kind": "lemma",
  "lexical_name": "rounding_error",
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
  "slug": "rounding-error--ff1c2508ec327fd39823003c",
  "source": {
    "blob": "58b659fdd4811b8e9d0ac115dd75ca486fc3191b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 355,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff1c2508ec327fd39823003c281f34bee2bc4eb5bba7dada2d3f2b1e2b724da7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:492c5ac0-82ad-f7d3-6b4f-a3d3dbbb5ad7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rounding_error {s : ℂ} (hs : Region s) : ‖rawModel s-model s‖ ≤ (1/1024 : ℝ) := by
  rw [raw_identity, model_lifted, ← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ j : Fin 18, ‖rawCoefficient j*(s-center)^j.val-liftedCoefficient j*(s-center)^j.val‖ :=
      norm_sum_le _ _
    _ ≤ ∑ j : Fin 18,
      (|(rawCoefficient j-liftedCoefficient j).re|+|(rawCoefficient j-liftedCoefficient j).im|)*
        (3/4 : ℝ)^j.val := by
      apply Finset.sum_le_sum
      intro j _
      rw [← sub_mul, norm_mul, norm_pow]
      exact mul_le_mul (Complex.norm_le_abs_re_add_abs_im _)
        (pow_le_pow_left₀ (norm_nonneg _) (region_distance hs) _)
        (by positivity) (by positivity)
    _ ≤ 1/1024 := rounding_budget

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58b659fdd4811b8e9d0ac115dd75ca486fc3191b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
