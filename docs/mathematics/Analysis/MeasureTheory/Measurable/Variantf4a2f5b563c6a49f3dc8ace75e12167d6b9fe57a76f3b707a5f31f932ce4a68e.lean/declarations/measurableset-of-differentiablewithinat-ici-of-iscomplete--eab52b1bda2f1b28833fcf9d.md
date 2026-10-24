# measurableSet_of_differentiableWithinAt_Ici_of_isComplete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2fc0019-f782-52fc-3439-9a8562a2bbcb",
  "kind": "theorem",
  "lexical_name": "measurableSet_of_differentiableWithinAt_Ici_of_isComplete",
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
  "slug": "measurableset-of-differentiablewithinat-ici-of-iscomplete--eab52b1bda2f1b28833fcf9d",
  "source": {
    "blob": "97d862382122315b30b02a8eecb3d5131c94041c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 770,
    "line": 753,
    "path": "GRWTSK/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eab52b1bda2f1b28833fcf9dfb56b1bfd06fb5154fab9e6aad319ebdf6855070",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2fc0019-f782-52fc-3439-9a8562a2bbcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 753–770.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurableSet_of_differentiableWithinAt_Ici_of_isComplete {K : Set F} (hK : IsComplete K) :
    MeasurableSet { x | DifferentiableWithinAt ℝ f (Ici x) x ∧ derivWithin f (Ici x) x ∈ K } := by
  -- simp [differentiable_set_eq_d K hK, D, measurableSet_b, MeasurableSet.iInter,
  --   MeasurableSet.iUnion]
  simp only [differentiable_set_eq_d K hK, D]
  refine MeasurableSet.iInter fun _ => ?_
  refine MeasurableSet.iUnion fun _ => ?_
  refine MeasurableSet.iInter fun _ => ?_
  refine MeasurableSet.iInter fun _ => ?_
  refine MeasurableSet.iInter fun _ => ?_
  refine MeasurableSet.iInter fun _ => ?_
  exact measurableSet_b
#align measurable_set_of_differentiable_within_at_Ici_of_is_complete measurableSet_of_differentiableWithinAt_Ici_of_isComplete

variable [CompleteSpace F]

/-- The set of right differentiability points of a function taking values in a complete space is
Borel-measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean#L753).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97d862382122315b30b02a8eecb3d5131c94041c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
