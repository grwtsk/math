# centeredGreenWeightedPrefixError_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:265a8b9f-35a8-21c1-ac85-5d468803855b",
  "kind": "theorem",
  "lexical_name": "centeredGreenWeightedPrefixError_abel",
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
  "slug": "centeredgreenweightedprefixerror-abel--acbf1443f4032e3e7eeda98e",
  "source": {
    "blob": "d1a41860d1f430240d6282428faaa2525fbe0042",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 27,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogWeightedPrefix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acbf1443f4032e3e7eeda98e8b87b2724f776fdcd145e9cf7d68a19ca43c6c75",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogWeightedPrefix.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:265a8b9f-35a8-21c1-ac85-5d468803855b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredGreenWeightedPrefixError_abel
    {X m : ℕ} (hX : 1 ≤ X) (hm : X ≤ m) :
    centeredGreenWeightedPrefixError X m =
      centeredGreenDyadicPrefixMangoldtError X m / (m : ℝ) +
      ∑ r ∈ Finset.Icc (X + 1) (m - 1),
        centeredGreenDyadicPrefixMangoldtError X r *
          (1 / (r : ℝ) - 1 / (r + 1 : ℝ)) := by
  unfold centeredGreenWeightedPrefixError centeredGreenWeightedPrefix
    centeredGreenBaselineWeightedPrefix
  have hrewrite :
      ∀ n ∈ Finset.Ioc X m,
        (ArithmeticFunction.vonMangoldt n : ℝ) / (n : ℝ) -
          1 / (n : ℝ) =
        (centeredGreenDyadicPrefixMangoldtError X n -
          centeredGreenDyadicPrefixMangoldtError X (n - 1)) / (n : ℝ) := by
    intro n hn
    rw [prefixMangoldtError_increment (Finset.mem_Ioc.mp hn).1]
    ring
  rw [← Finset.sum_sub_distrib]
  simp_rw [hrewrite]
  -- Standard finite Abel telescoping at arbitrary m.
  induction m using Nat.case_strong_induction_on with
  | hz => omega
  | hs m ih =>
      by_cases hXm : X = m + 1
      · subst X
        simp
      · simp only [Finset.sum_Ioc_eq_sub] at *
        ring_nf
        omega

/-- Uniform prefix error A gives weighted prefix error at most A/X. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogWeightedPrefix.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogWeightedPrefix.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1a41860d1f430240d6282428faaa2525fbe0042` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
