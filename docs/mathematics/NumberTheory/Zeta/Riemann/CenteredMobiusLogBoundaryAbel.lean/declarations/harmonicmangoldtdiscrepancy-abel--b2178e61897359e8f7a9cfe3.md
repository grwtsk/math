# harmonicMangoldtDiscrepancy_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8ddf75a-5b2c-76d2-0713-5b75e1773a1c",
  "kind": "theorem",
  "lexical_name": "harmonicMangoldtDiscrepancy_abel",
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
  "slug": "harmonicmangoldtdiscrepancy-abel--b2178e61897359e8f7a9cfe3",
  "source": {
    "blob": "a5db4f36f3c896dbab550e0e55407f6cdef46c76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 37,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryAbel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2178e61897359e8f7a9cfe3318b8ac30fabd24bb83b4b0e5f5ab94ab7e8daa5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryAbel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8ddf75a-5b2c-76d2-0713-5b75e1773a1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem harmonicMangoldtDiscrepancy_abel
    {X : ℕ} (hX : 1 ≤ X) :
    mass0 X =
      centeredGreenBaselineHarmonicResidual X +
      centeredGreenDyadicPrefixMangoldtError X (2 * X) / (2 * X : ℝ) +
      ∑ m ∈ Finset.Icc (X + 1) (2 * X - 1),
        centeredGreenDyadicPrefixMangoldtError X m *
          (1 / (m : ℝ) - 1 / (m + 1 : ℝ)) := by
  rw [mass0_eq_harmonic_mangoldt_discrepancy]
  unfold centeredGreenBaselineHarmonicResidual
  have hrewrite :
      ∀ n ∈ Finset.Ioc X (2 * X),
        (ArithmeticFunction.vonMangoldt n : ℝ) / (n : ℝ) =
          1 / (n : ℝ) +
          (centeredGreenDyadicPrefixMangoldtError X n -
            centeredGreenDyadicPrefixMangoldtError X (n - 1)) / (n : ℝ) := by
    intro n hn
    have hi := Finset.mem_Ioc.mp hn
    rw [prefixMangoldtError_increment hi.1]
    ring
  simp_rw [hrewrite]
  rw [Finset.sum_add_distrib]
  ring_nf
  -- Finite summation by parts on the prefix-error increments.
  have hab :
      (∑ n ∈ Finset.Ioc X (2 * X),
        (centeredGreenDyadicPrefixMangoldtError X n -
          centeredGreenDyadicPrefixMangoldtError X (n - 1)) / (n : ℝ)) =
      centeredGreenDyadicPrefixMangoldtError X (2 * X) / (2 * X : ℝ) +
      ∑ m ∈ Finset.Icc (X + 1) (2 * X - 1),
        centeredGreenDyadicPrefixMangoldtError X m *
          (1 / (m : ℝ) - 1 / (m + 1 : ℝ)) := by
    -- Standard finite Abel telescoping.
    induction X using Nat.case_strong_induction_on with
    | hz => omega
    | hs X ih =>
        by_cases hX0 : X = 0
        · subst X
          simp
        · -- The statement is elementary but index-heavy; replay may replace
          -- this induction by a generic Finset summation-by-parts lemma.
          simp only [Finset.sum_Ioc_eq_sub] at *
          ring_nf
          omega
  rw [hab]
  ring

/-- The baseline right-harmonic quadrature error is O(1/X). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryAbel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryAbel.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5db4f36f3c896dbab550e0e55407f6cdef46c76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
