# arbitrary_schedule_sequence_contraction_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fb9beb924e43ef641dcf736da38293cb3050d88",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:784d73db-a273-de14-52d9-c259162e9264",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b20e1a6-006a-af1f-7bff-efb43ce831ca",
  "kind": "theorem",
  "lexical_name": "arbitrary_schedule_sequence_contraction_bound",
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
  "slug": "arbitrary-schedule-sequence-contraction-bound--0ede4c3e0bf3912922b934a1",
  "source": {
    "blob": "4fb9beb924e43ef641dcf736da38293cb3050d88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 143,
    "path": "GRWTSK/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ede4c3e0bf3912922b934a1fa6e9cf2f9fb83e8abd69e83a129c296af178086",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b20e1a6-006a-af1f-7bff-efb43ce831ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arbitrary_schedule_sequence_contraction_bound
    {Schedule X : Type}
    [Fintype X]
    (metric : LawMetric X)
    (admissible : X → Prop)
    (margin : UniformContractionMargin)
    (family :
      ScheduleKernelFamily
        Schedule X metric admissible margin)
    (scheduleSequence : Nat → Schedule)
    (initial : FiniteLaw X) :
    ∀ step,
      metric.distance
          (family.iterate scheduleSequence initial step)
          family.commonInvariantLaw ≤
        margin.factor ^ step *
          metric.distance
            initial family.commonInvariantLaw := by
  intro step
  induction step with
  | zero => simp
  | succ step inductionHypothesis =>
      have oneStep :=
        (family.contractionForEverySchedule
          (scheduleSequence step)).contracts
          (family.iterate scheduleSequence initial step)
          family.commonInvariantLaw
      rw [
        family.invariantForEverySchedule
          (scheduleSequence step)
      ] at oneStep
      rw [
        family.usesCommonMargin (scheduleSequence step)
      ] at oneStep
      rw [family.iterate_succ]
      calc
        metric.distance
            ((family.kernel (scheduleSequence step)).push
              (family.iterate scheduleSequence initial step))
            family.commonInvariantLaw ≤
          margin.factor *
            metric.distance
              (family.iterate scheduleSequence initial step)
              family.commonInvariantLaw := oneStep
        _ ≤
          margin.factor *
            (margin.factor ^ step *
              metric.distance
                initial family.commonInvariantLaw) :=
          mul_le_mul_of_nonneg_left
            inductionHypothesis margin.factorNonnegative
        _ =
          margin.factor ^ (step + 1) *
            metric.distance
              initial family.commonInvariantLaw := by
          rw [pow_succ]
          ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fb9beb924e43ef641dcf736da38293cb3050d88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
