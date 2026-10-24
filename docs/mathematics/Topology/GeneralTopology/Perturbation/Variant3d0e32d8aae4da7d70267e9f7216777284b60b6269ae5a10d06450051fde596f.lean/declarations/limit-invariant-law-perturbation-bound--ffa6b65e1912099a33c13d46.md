# limit_invariant_law_perturbation_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4befcae1aaadb31e0455d5b6acf838cbbf3f1209",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d0e32d8aae4da7d70267e9f7216777284b60b6269ae5a10d06450051fde596f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db2bd143-41f8-3b63-77c0-9361a336f78f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:188acc5e-1075-af65-caaa-3901a89d6b06",
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
  "slug": "limit-invariant-law-perturbation-bound--ffa6b65e1912099a33c13d46",
  "source": {
    "blob": "4befcae1aaadb31e0455d5b6acf838cbbf3f1209",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 44,
    "path": "GRWTSK/Topology/GeneralTopology/Perturbation/Variant3d0e32d8aae4da7d70267e9f7216777284b60b6269ae5a10d06450051fde596f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffa6b65e1912099a33c13d4634d12aaca65d7ec34cbdd254da9f7d99a3bc0006",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Perturbation/Variant3d0e32d8aae4da7d70267e9f7216777284b60b6269ae5a10d06450051fde596f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:188acc5e-1075-af65-caaa-3901a89d6b06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–130.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Perturbation/Variant3d0e32d8aae4da7d70267e9f7216777284b60b6269ae5a10d06450051fde596f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Perturbation/Variant3d0e32d8aae4da7d70267e9f7216777284b60b6269ae5a10d06450051fde596f.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4befcae1aaadb31e0455d5b6acf838cbbf3f1209` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
