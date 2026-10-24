# _root_.Measurable.add_simpleFunc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "adbdc460fc9bf1402a274d5a9c34c19a93ecf6f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1230,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc978bc2-cbfc-078d-e8fb-02df84679664",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35d96b07-f197-eed3-fc44-a06e1789c9b1",
  "kind": "theorem",
  "lexical_name": "_root_.Measurable.add_simpleFunc",
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
  "slug": "root-measurable-add-simplefunc--8db53a38de69a2ea76d55ab7",
  "source": {
    "blob": "adbdc460fc9bf1402a274d5a9c34c19a93ecf6f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1254,
    "line": 1230,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variantce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8db53a38de69a2ea76d55ab7fcce6567d84645b5972fb01a426acf62d700f5e6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFunc/Variantce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35d96b07-f197-eed3-fc44-a06e1789c9b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1230–1254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Measurable.add_simpleFunc
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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFunc/Variantce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variantce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.lean#L1230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adbdc460fc9bf1402a274d5a9c34c19a93ecf6f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
