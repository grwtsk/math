# _root_.GRWTSK.Analysis.MeasureTheory.SimpleFunc.Variantce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.Measurable.simpleFunc_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:109ead81-4e3c-0c57-d8d7-b49b1e26e5eb",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.SimpleFunc.Variantce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.Measurable.simpleFunc_add",
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
  "slug": "root-grwtsk-analysis-measuretheory-simplefunc-variantce889e949e32218102c--dc42c749c29d09311a46f7f6",
  "source": {
    "blob": "66ebaf55a63f8a691411eebfd3dca650a66650bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1302,
    "line": 1263,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variantcdb3b492e45b87be7eac236925c3456a4967acdaceb3484aed2bb09e803a4318.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc42c749c29d09311a46f7f6025ed19b2e823a65e43ea92a7242c9b8e684937b",
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

Occurrence: `result:109ead81-4e3c-0c57-d8d7-b49b1e26e5eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1263–1302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.SimpleFunc.Variantce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.Measurable.simpleFunc_add
    {E : Type*} {_ : MeasurableSpace α} [MeasurableSpace E] [AddCancelMonoid E] [MeasurableAdd E]
    {g : α → E} (hg : Measurable g) (f : SimpleFunc α E) :
    Measurable ((f : α → E) + g) := by
  classical
  induction f using SimpleFunc.induction with
  | @const c s hs =>
    simp only [SimpleFunc.const_zero, SimpleFunc.coe_piecewise, SimpleFunc.coe_const,
      SimpleFunc.coe_zero]
    rw [← s.piecewise_same g, ← piecewise_add]
    exact Measurable.piecewise hs (hg.const_add _) (hg.const_add _)
  | @add f f' hff' hf hf' =>
    have : (↑(f + f') + g) = (Function.support f).piecewise ((f : α → E) + g) (f' + g) := by
      ext x
      by_cases hx : x ∈ Function.support f
      · simpa only [coe_add, Pi.add_apply, Function.mem_support, ne_eq, not_not,
          Set.piecewise_eq_of_mem _ _ _ hx, _root_.add_left_inj, add_eq_left]
          using Set.disjoint_left.1 hff' hx
      · simpa only [SimpleFunc.coe_add, Pi.add_apply, Function.mem_support, ne_eq, not_not,
          Set.piecewise_eq_of_notMem _ _ _ hx, _root_.add_left_inj, add_eq_right] using hx
    rw [this]
    exact Measurable.piecewise f.measurableSet_support hf hf'

end SimpleFunc

end MeasureTheory

open MeasureTheory MeasureTheory.SimpleFunc

variable {α : Type*} {mα : MeasurableSpace α} {μ : Measure α}

/-- To prove something for an arbitrary measurable function into `ℝ≥0∞`, it suffices to show
that the property holds for (multiples of) characteristic functions and is closed under addition
and supremum of increasing sequences of functions.

It is possible to make the hypotheses in the induction steps a bit stronger, and such conditions
can be added once we need them (for example in `h_add` it is only necessary to consider the sum of
a simple function with a multiple of a characteristic function and that the intersection
of their images is a subset of `{0}`. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFunc/Variantcdb3b492e45b87be7eac236925c3456a4967acdaceb3484aed2bb09e803a4318.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variantcdb3b492e45b87be7eac236925c3456a4967acdaceb3484aed2bb09e803a4318.lean#L1263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66ebaf55a63f8a691411eebfd3dca650a66650bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
