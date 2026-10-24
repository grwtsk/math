# centeredDivisibilityTail_eq_incidenceSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d10f633-c470-e0ec-8c1c-7cdff9614fc9",
  "kind": "theorem",
  "lexical_name": "centeredDivisibilityTail_eq_incidenceSum",
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
  "slug": "centereddivisibilitytail-eq-incidencesum--46de3e026c48fa7c1169a936",
  "source": {
    "blob": "8f3e367620acc5d59fdcd2bde9b8b02f4fa878f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 52,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46de3e026c48fa7c1169a9365582df35144385d96870136c9623c05cbd0a3cdf",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d10f633-c470-e0ec-8c1c-7cdff9614fc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredDivisibilityTail_eq_incidenceSum
    {X r : ℕ}
    (hr : 1 < r)
    (w : ℕ → ℝ) :
    centeredDivisibilityTail X w r =
      ∑ p ∈ centeredTailIncidenceSet X r,
        w p.1 * mobiusLogTerm p.1 p.2 := by
  classical
  unfold centeredDivisibilityTail
  calc
    (∑ d ∈ modulusIndexSet X,
      if r ∣ d then centeredModulusCoefficient X w d else 0) =
      ∑ d ∈ modulusIndexSet X,
        if r ∣ d then genuineModulusCoefficient X w d else 0 := by
      apply Finset.sum_congr rfl
      intro d hd
      by_cases hrd : r ∣ d
      · have hd1 : d ≠ 1 := by
          intro h
          subst d
          have hrle : r ≤ 1 := Nat.le_of_dvd Nat.one_pos hrd
          omega
        simp [hrd, centeredModulusCoefficient, hd1]
      · simp [hrd]
    _ =
      ∑ n ∈ octaveIndexSet X,
        ∑ d ∈ modulusIndexSet X,
          if r ∣ d ∧ d ∣ n then
            w n * mobiusLogTerm n d
          else 0 := by
      unfold genuineModulusCoefficient
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro n hn
      apply Finset.sum_congr rfl
      intro d hd
      by_cases hrd : r ∣ d <;>
        by_cases hdn : d ∣ n <;>
          simp [hrd, hdn]
    _ =
      ∑ p ∈ (octaveIndexSet X).product (modulusIndexSet X),
        if r ∣ p.2 ∧ p.2 ∣ p.1 then
          w p.1 * mobiusLogTerm p.1 p.2
        else 0 := by
      rw [Finset.sum_product]
    _ =
      ∑ p ∈ centeredTailIncidenceSet X r,
        w p.1 * mobiusLogTerm p.1 p.2 := by
      rw [← Finset.sum_filter]
      rfl

/-- Quotient incidence attached to an exact tail incidence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f3e367620acc5d59fdcd2bde9b8b02f4fa878f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
