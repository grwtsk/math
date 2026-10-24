# finite_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5889a495-082e-6d75-e659-db8a92fbffdd",
  "kind": "lemma",
  "lexical_name": "finite_identity",
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
  "slug": "finite-identity--b29f99800eb031f2cdd5d35c",
  "source": {
    "blob": "de72f7f4170050e3954062180617a677a7cd7f1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 138,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b29f99800eb031f2cdd5d35c7b59dc9badfba717518abe89fbea664a345bc741",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5889a495-082e-6d75-e659-db8a92fbffdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_identity (S : CellPrimitive f g) {N : ℕ} {z : ℂ}
    (hN : 1 ≤ N) (hz : 1 < z.re) :
    (∫ t : ℝ in (1 : ℝ)..(N : ℝ), f.integrand z t) =
      z * ∫ t : ℝ in (1 : ℝ)..(N : ℝ), g.integrand (z + 1) t := by
  have hf := f.integrand_integrable (T := 1) le_rfl hz
  have hg := g.integrand_integrable (T := 1) le_rfl
    (by simp only [Complex.add_re, Complex.one_re]; linarith)
  induction N, hN using Nat.le_induction with
  | base => simp
  | succ N hN ih =>
    have hNR : (1 : ℝ) ≤ N := by exact_mod_cast hN
    have hNN : (N : ℝ) ≤ ((N + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ N
    rw [← intervalIntegral.integral_add_adjacent_intervals
      (CenteredMellin.QuadraticPrimitive.intervalIntegrable_of_tail hf le_rfl hNR)
      (CenteredMellin.QuadraticPrimitive.intervalIntegrable_of_tail hf hNR hNN)]
    rw [ih, S.cell_identity hN hz, ← mul_add,
      intervalIntegral.integral_add_adjacent_intervals
      (CenteredMellin.QuadraticPrimitive.intervalIntegrable_of_tail hg le_rfl hNR)
      (CenteredMellin.QuadraticPrimitive.intervalIntegrable_of_tail hg hNR hNN)]

/-- The full identity follows from TWO convergent tails and the finite telescope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de72f7f4170050e3954062180617a677a7cd7f1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
