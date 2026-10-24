# limit_invariant_law_perturbation_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e6edf94-0032-50b5-ad0a-31ce95d090d0",
  "kind": "theorem",
  "lexical_name": "limit_invariant_law_perturbation_bound",
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
  "slug": "limit-invariant-law-perturbation-bound--87e92ff3e1f3b4e9b4d609dc",
  "source": {
    "blob": "91fb5eab5ac244f46edcad8ca60b50a6d874d07a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 52,
    "path": "GRWTSK/Topology/GeneralTopology/Perturbation/Variant3fcfa9fd649296ea74f3aadf12ac34866cb5c8369893dad8f7c15c57a8362660.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87e92ff3e1f3b4e9b4d609dc341e6f87f701bcfd85d6bad0b308c02079bd574d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Perturbation/Variant3fcfa9fd649296ea74f3aadf12ac34866cb5c8369893dad8f7c15c57a8362660.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e6edf94-0032-50b5-ad0a-31ce95d090d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem limit_invariant_law_perturbation_bound
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {reference :
      ProjectiveLimitKernel
        (uLimitLaw := uLimitLaw) system}
    (perturbation :
      LimitInvariantLawPerturbation reference) :
    (reference.wasserstein
        perturbation.perturbedInvariant
        reference.invariantLaw : ℝ) ≤
      (perturbation.localDefect : ℝ) /
        (1 -
          (system.uniformContraction : ℝ)) := by
  let schedule :=
    system.defaultLimitSchedule
  have recurrence :
      reference.wasserstein
          perturbation.perturbedInvariant
          reference.invariantLaw ≤
        perturbation.localDefect +
          system.uniformContraction *
            reference.wasserstein
              perturbation.perturbedInvariant
              reference.invariantLaw := by
    calc
      reference.wasserstein
          perturbation.perturbedInvariant
          reference.invariantLaw =
        reference.wasserstein
          (perturbation.perturbedPush
            schedule perturbation.perturbedInvariant)
          (reference.push
            schedule reference.invariantLaw) := by
              rw [perturbation.perturbedCommonInvariant,
                reference.commonInvariant]
      _ ≤
        reference.wasserstein
            (perturbation.perturbedPush
              schedule perturbation.perturbedInvariant)
            (reference.push
              schedule perturbation.perturbedInvariant) +
          reference.wasserstein
            (reference.push
              schedule perturbation.perturbedInvariant)
            (reference.push
              schedule reference.invariantLaw) :=
        reference.wassersteinTriangle _ _ _
      _ ≤
        perturbation.localDefect +
          system.uniformContraction *
            reference.wasserstein
              perturbation.perturbedInvariant
              reference.invariantLaw :=
        add_le_add
          (perturbation.localDefectBound
            schedule perturbation.perturbedInvariant)
          (reference.uniformlyContractive
            schedule
            perturbation.perturbedInvariant
            reference.invariantLaw)
  have recurrenceReal :
      (reference.wasserstein
        perturbation.perturbedInvariant
        reference.invariantLaw : ℝ) ≤
      (perturbation.localDefect : ℝ) +
        (system.uniformContraction : ℝ) *
          (reference.wasserstein
            perturbation.perturbedInvariant
            reference.invariantLaw : ℝ) := by
    exact_mod_cast recurrence
  have denominatorPositive :
      0 <
        1 -
          (system.uniformContraction : ℝ) := by
    exact sub_pos.mpr
      (by
        exact_mod_cast
          system.uniformContraction_lt_one)
  apply (le_div_iff₀ denominatorPositive).2
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Perturbation/Variant3fcfa9fd649296ea74f3aadf12ac34866cb5c8369893dad8f7c15c57a8362660.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Perturbation/Variant3fcfa9fd649296ea74f3aadf12ac34866cb5c8369893dad8f7c15c57a8362660.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91fb5eab5ac244f46edcad8ca60b50a6d874d07a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
