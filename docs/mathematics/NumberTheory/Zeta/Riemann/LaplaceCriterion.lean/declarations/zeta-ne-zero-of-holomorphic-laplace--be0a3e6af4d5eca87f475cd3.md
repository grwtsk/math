# zeta_ne_zero_of_holomorphic_laplace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49956458-d419-837d-0edb-85b85bba0d7f",
  "kind": "theorem",
  "lexical_name": "zeta_ne_zero_of_holomorphic_laplace",
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
  "slug": "zeta-ne-zero-of-holomorphic-laplace--be0a3e6af4d5eca87f475cd3",
  "source": {
    "blob": "0fcf951a309b6edf395116ea813083391ce846c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 90,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be0a3e6af4d5eca87f475cd34445b46ca21e00afbe1591d32f331349b8ce0dc3",
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

Occurrence: `result:49956458-d419-837d-0edb-85b85bba0d7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_ne_zero_of_holomorphic_laplace (L : ℂ → ℂ)
    (hhol : DifferentiableOn ℂ L pickupLaplaceDomain)
    (hinit : ∀ z : ℂ, 1 / 2 < z.re →
      z * regularizedZeta (z + 1 / 2) * L z = z - 1 / 2)
    (s : ℂ) (hs : 1 / 2 < s.re) (hs1 : s ≠ 1) :
    riemannZeta s ≠ 0 := by
  intro hsζ
  have hs0 : s ≠ 0 := ne_zero_of_re_pos (by linarith)
  have hzr : 0 < (s - 1 / 2).re := by
    norm_num [Complex.sub_re]
    linarith
  have h := regularized_laplace_identity L hhol hinit (s - 1 / 2) hzr
  have hadd : s - 1 / 2 + 1 / 2 = s := by ring
  rw [hadd, regularizedZeta_eq hs0 hs1, hsζ] at h
  simp only [mul_zero, zero_mul] at h
  apply hs1
  linear_combination -h

/-- Exact functional-equation transport returns to Mathlib's literal RH target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fcf951a309b6edf395116ea813083391ce846c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
