# regularized_initial_identity_of_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26d58d94-bfa5-d0af-d422-e13f635413b6",
  "kind": "theorem",
  "lexical_name": "regularized_initial_identity_of_inverse",
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
  "slug": "regularized-initial-identity-of-inverse--5c57a44e82ed198e774ef325",
  "source": {
    "blob": "0fcf951a309b6edf395116ea813083391ce846c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 63,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c57a44e82ed198e774ef3257dcb74ec5a7f5b6592b1801ffe1ee69db0501f7b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26d58d94-bfa5-d0af-d422-e13f635413b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularized_initial_identity_of_inverse (L : ℂ → ℂ)
    (hinit : ∀ z : ℂ, 1 / 2 < z.re →
      L z = 1 / (z * (z + 1 / 2) * riemannZeta (z + 1 / 2))) :
    ∀ z : ℂ, 1 / 2 < z.re →
      z * regularizedZeta (z + 1 / 2) * L z = z - 1 / 2 := by
  intro z hz
  have hz0 : z ≠ 0 := ne_zero_of_re_pos (by linarith)
  have hsre : 1 < (z + 1 / 2).re := by
    norm_num [Complex.add_re]
    linarith
  have hs0 : z + 1 / 2 ≠ 0 := ne_zero_of_re_pos (by linarith)
  have hs1 : z + 1 / 2 ≠ 1 := by
    intro h
    have := congrArg Complex.re h
    simp only [one_re] at this
    linarith
  have hsζ : riemannZeta (z + 1 / 2) ≠ 0 :=
    riemannZeta_ne_zero_of_one_le_re hsre.le
  rw [regularizedZeta_eq hs0 hs1, hinit z hz]
  have hden : z * (z + 1 / 2) * riemannZeta (z + 1 / 2) ≠ 0 :=
    mul_ne_zero (mul_ne_zero hz0 hs0) hsζ
  have hnum : z * ((z + 1 / 2) * (z + 1 / 2 - 1) * riemannZeta (z + 1 / 2)) =
      (z - 1 / 2) * (z * (z + 1 / 2) * riemannZeta (z + 1 / 2)) := by ring
  rw [hnum, mul_one_div]
  exact mul_div_cancel_right₀ _ hden

/-- Holomorphy and the initial product exclude every zero strictly to the right. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fcf951a309b6edf395116ea813083391ce846c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
