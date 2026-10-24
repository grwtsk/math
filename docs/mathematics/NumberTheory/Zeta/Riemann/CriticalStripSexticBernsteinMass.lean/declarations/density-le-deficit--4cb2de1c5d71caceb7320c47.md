# density_le_deficit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcb01655-64ae-ed48-79d6-101fd06e33f2",
  "kind": "lemma",
  "lexical_name": "density_le_deficit",
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
  "slug": "density-le-deficit--4cb2de1c5d71caceb7320c47",
  "source": {
    "blob": "3c01746f4eb4fca2341f3f7c5996bf7371e606d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 116,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cb2de1c5d71caceb7320c47aa53b3b3bd24d991b1a489f1e43a1492978f83de",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcb01655-64ae-ed48-79d6-101fd06e33f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma density_le_deficit (i : Fin 16) {v : ℝ} (hv : 0 ≤ v) (hv1 : v ≤ 1) :
    density i v ≤ 1 - |normalized (((i.val : ℝ) + v) / 16)| := by
  have hb (j : Fin 7) : 0 ≤ basis j v :=
    mul_nonneg (pow_nonneg hv _) (pow_nonneg (sub_nonneg.mpr hv1) _)
  have h := norm_sum_le (Finset.univ : Finset (Fin 7))
    (fun j => (coefficients i j : ℝ) * basis j v)
  have heq : (∑ j : Fin 7, ‖(coefficients i j : ℝ) * basis j v‖) =
      ∑ j : Fin 7, |(coefficients i j : ℝ)| * basis j v := by
    apply Finset.sum_congr rfl
    intro j _
    rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (hb j)]
  rw [heq, Real.norm_eq_abs, polynomial_identity, abs_mul] at h
  norm_num at h
  rw [density_eq]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c01746f4eb4fca2341f3f7c5996bf7371e606d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
