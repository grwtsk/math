# sq_norm_greenCenteringResidual_le_residue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6884f44d-3a89-d393-1e9f-754ef919cdea",
  "kind": "theorem",
  "lexical_name": "sq_norm_greenCenteringResidual_le_residue",
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
  "slug": "sq-norm-greencenteringresidual-le-residue--f1a03b87bbad41ca2bb3c230",
  "source": {
    "blob": "ed12daac7e86e83783d641c3755a882db6a9bc1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 32,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidualSquareBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1a03b87bbad41ca2bb3c2302295063a76c242ecfe76da23ad146d583220f854",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidualSquareBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6884f44d-3a89-d393-1e9f-754ef919cdea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sq_norm_greenCenteringResidual_le_residue
    {X : ℕ} (hX : 1 ≤ X)
    {k : ℤ} (hk : k ≠ 0)
    (R : GreenCenteredResidue X k) (hr : R.r ≠ 0) :
    ‖greenCenteringResidual X k‖^2 ≤
      3 * (greenResidualA k ^ 2 +
        greenResidualB k R.r ^ 2 +
        greenResidualC X k ^ 2) := by
  have h := norm_greenCenteringResidual_le_residue hX hk R hr
  have hrewrite :
      (1 / (2 * Real.pi * |(k : ℝ)|)) *
        (3 / (2 * Real.pi * |(k : ℝ)|) +
          1 / (2 * |(R.r : ℝ)|) +
          1 / (2 * (X : ℝ))) =
      greenResidualA k + greenResidualB k R.r + greenResidualC X k := by
    unfold greenResidualA greenResidualB greenResidualC
    ring
  rw [hrewrite] at h
  have hnonneg :
      0 ≤ greenResidualA k + greenResidualB k R.r + greenResidualC X k := by
    unfold greenResidualA greenResidualB greenResidualC
    positivity
  calc
    ‖greenCenteringResidual X k‖^2 ≤
        (greenResidualA k + greenResidualB k R.r +
          greenResidualC X k)^2 := by nlinarith [norm_nonneg (greenCenteringResidual X k)]
    _ ≤ 3 * (greenResidualA k ^ 2 +
        greenResidualB k R.r ^ 2 +
        greenResidualC X k ^ 2) := sq_add_three_le_three_sq_sum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidualSquareBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidualSquareBounds.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed12daac7e86e83783d641c3755a882db6a9bc1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
