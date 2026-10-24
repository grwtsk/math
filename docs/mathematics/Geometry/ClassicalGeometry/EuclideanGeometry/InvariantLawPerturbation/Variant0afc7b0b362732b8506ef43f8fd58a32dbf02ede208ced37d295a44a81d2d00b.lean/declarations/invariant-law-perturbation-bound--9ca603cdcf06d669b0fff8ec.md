# invariant_law_perturbation_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f335f78e-e700-13ad-bcd1-cc2da97f2057",
  "kind": "theorem",
  "lexical_name": "invariant_law_perturbation_bound",
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
  "slug": "invariant-law-perturbation-bound--9ca603cdcf06d669b0fff8ec",
  "source": {
    "blob": "57e91cb27a7c1171806a06bb29c65ea888c0b9cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 127,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/InvariantLawPerturbation/Variant0afc7b0b362732b8506ef43f8fd58a32dbf02ede208ced37d295a44a81d2d00b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ca603cdcf06d669b0fff8eca4a314f29eddd2907ffbb76a1eadca3fbe1ce1bb",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/InvariantLawPerturbation/Variant0afc7b0b362732b8506ef43f8fd58a32dbf02ede208ced37d295a44a81d2d00b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f335f78e-e700-13ad-bcd1-cc2da97f2057`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem invariant_law_perturbation_bound
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    {reference :
      ScheduleKernelFamily system carrier Schedule}
    (perturbation :
      InvariantLawPerturbation reference) :
    (carrier.wasserstein
        perturbation.perturbedInvariant
        reference.invariantLaw : ℝ) ≤
      (perturbation.localDefect : ℝ) /
        (1 - (reference.contraction : ℝ)) := by
  have recurrenceReal :
      (carrier.wasserstein
        perturbation.perturbedInvariant
        reference.invariantLaw : ℝ) ≤
      (perturbation.localDefect : ℝ) +
        (reference.contraction : ℝ) *
          (carrier.wasserstein
            perturbation.perturbedInvariant
            reference.invariantLaw : ℝ) := by
    exact_mod_cast perturbation.displacement_recurrence
  have contractionReal :
      (reference.contraction : ℝ) < 1 := by
    exact_mod_cast reference.contraction_lt_one
  have denominatorPositive :
      0 < 1 - (reference.contraction : ℝ) :=
    sub_pos.mpr contractionReal
  apply (le_div_iff₀ denominatorPositive).2
  nlinarith

end InvariantLawPerturbation

end Mathematics.ConnesBitfield
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/InvariantLawPerturbation/Variant0afc7b0b362732b8506ef43f8fd58a32dbf02ede208ced37d295a44a81d2d00b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/InvariantLawPerturbation/Variant0afc7b0b362732b8506ef43f8fd58a32dbf02ede208ced37d295a44a81d2d00b.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57e91cb27a7c1171806a06bb29c65ea888c0b9cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
