# pinnedPrimeWeightIntegerPsiCapacity_to_twoRecurrences

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:407e2fdb-cb08-98a8-e507-ef4ce9e0b8e0",
  "kind": "theorem",
  "lexical_name": "pinnedPrimeWeightIntegerPsiCapacity_to_twoRecurrences",
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
  "slug": "pinnedprimeweightintegerpsicapacity-to-tworecurrences--a8d613c1ecf5d57e52a0a835",
  "source": {
    "blob": "8b38b9d6436983921e3687a4d154a8b90c700bec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 344,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightIntegerizedPsiSourceRule.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8d613c1ecf5d57e52a0a8356e5a679b5403300c9f94690edc4d5d3aa55ad329",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:407e2fdb-cb08-98a8-e507-ef4ce9e0b8e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pinnedPrimeWeightIntegerPsiCapacity_to_twoRecurrences
    (hcapacity : PinnedPrimeWeightIntegerPsiQuadraticResponseCapacity) :
    QuadraticThetaSourceRecurrenceAt ((7 : ℝ) / 8) ∧
      QuadraticThetaSourceRecurrenceAt ((3 : ℝ) / 4) := by
  obtain ⟨C, hC⟩ := hcapacity
  exact ⟨
    pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_recurrence
      (C := C) (ρ := (7 : ℝ) / 8) (by norm_num) hC,
    pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_recurrence
      (C := C) (ρ := (3 : ℝ) / 4) (by norm_num) hC⟩

/-!
Additional source statements retained from issue #842, branch
`research/842-pinned-prime-psi-grid-v01`, head
`5b8c3527a68ee53eb748eb4622159afbb9c49d5b`, alongside the PR #851
integerized source rule above. The historical branch cited parent PR #832
head `b216617f655b33636bfc73a927c36e4f03642578` and mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
PARENT_SAWTOOTH_FLOOR_OBSTRUCTION_DEFINED /
INTEGER_PSI_CAPACITY_TO_RECURRENCE_DEFINED /
INTEGER_PSI_QUADRATIC_CAPACITY_OPEN / NO_RH_CLAIM.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightIntegerizedPsiSourceRule.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b38b9d6436983921e3687a4d154a8b90c700bec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
