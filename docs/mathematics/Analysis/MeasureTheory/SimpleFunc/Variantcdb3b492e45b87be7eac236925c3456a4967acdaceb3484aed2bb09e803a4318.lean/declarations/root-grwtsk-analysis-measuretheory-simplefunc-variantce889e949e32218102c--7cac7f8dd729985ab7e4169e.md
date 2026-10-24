# _root_.GRWTSK.Analysis.MeasureTheory.SimpleFunc.Variantce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.Measurable.add_simpleFunc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a33585e7-1bd0-c8ed-3977-9ea19bd0b930",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.SimpleFunc.Variantce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.Measurable.add_simpleFunc",
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
  "slug": "root-grwtsk-analysis-measuretheory-simplefunc-variantce889e949e32218102c--7cac7f8dd729985ab7e4169e",
  "source": {
    "blob": "66ebaf55a63f8a691411eebfd3dca650a66650bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1262,
    "line": 1238,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variantcdb3b492e45b87be7eac236925c3456a4967acdaceb3484aed2bb09e803a4318.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cac7f8dd729985ab7e4169ed4f8a03b9d3286c5a4bcb768684bdcf3ddf327aa",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFunc/Variantcdb3b492e45b87be7eac236925c3456a4967acdaceb3484aed2bb09e803a4318.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a33585e7-1bd0-c8ed-3977-9ea19bd0b930`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1238–1262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.SimpleFunc.Variantce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.Measurable.add_simpleFunc
    {E : Type*} {_ : MeasurableSpace α} [MeasurableSpace E] [AddCancelMonoid E] [MeasurableAdd E]
    {g : α → E} (hg : Measurable g) (f : SimpleFunc α E) :
    Measurable (g + (f : α → E)) := by
  classical
  induction f using SimpleFunc.induction with
  | @const c s hs =>
    simp only [SimpleFunc.const_zero, SimpleFunc.coe_piecewise, SimpleFunc.coe_const,
      SimpleFunc.coe_zero]
    rw [← s.piecewise_same g, ← piecewise_add]
    exact Measurable.piecewise hs (hg.add_const _) (hg.add_const _)
  | @add f f' hff' hf hf' =>
    have : (g + ↑(f + f')) = (Function.support f).piecewise (g + (f : α → E)) (g + f') := by
      ext x
      by_cases hx : x ∈ Function.support f
      · simpa only [SimpleFunc.coe_add, Pi.add_apply, Function.mem_support, ne_eq, not_not,
          Set.piecewise_eq_of_mem _ _ _ hx, _root_.add_right_inj, add_eq_left]
          using Set.disjoint_left.1 hff' hx
      · simpa only [SimpleFunc.coe_add, Pi.add_apply, Function.mem_support, ne_eq, not_not,
          Set.piecewise_eq_of_notMem _ _ _ hx, _root_.add_right_inj, add_eq_right] using hx
    rw [this]
    exact Measurable.piecewise f.measurableSet_support hf hf'

/-- In a topological vector space, the addition of a simple function and a measurable function is
measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFunc/Variantcdb3b492e45b87be7eac236925c3456a4967acdaceb3484aed2bb09e803a4318.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variantcdb3b492e45b87be7eac236925c3456a4967acdaceb3484aed2bb09e803a4318.lean#L1238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66ebaf55a63f8a691411eebfd3dca650a66650bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
