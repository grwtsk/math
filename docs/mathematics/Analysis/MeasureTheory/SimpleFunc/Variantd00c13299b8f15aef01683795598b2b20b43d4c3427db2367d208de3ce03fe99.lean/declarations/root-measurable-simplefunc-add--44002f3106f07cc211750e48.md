# _root_.Measurable.simpleFunc_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "030b849f5ae8fa0fd97e7c394d025a995dfbfbce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1348,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d00c13299b8f15aef01683795598b2b20b43d4c3427db2367d208de3ce03fe99.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7abed610-9b29-0863-e661-8276917422fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62f85013-e304-87a4-5f53-ce4ca52880e5",
  "kind": "theorem",
  "lexical_name": "_root_.Measurable.simpleFunc_add",
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
  "slug": "root-measurable-simplefunc-add--44002f3106f07cc211750e48",
  "source": {
    "blob": "030b849f5ae8fa0fd97e7c394d025a995dfbfbce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1369,
    "line": 1348,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variantd00c13299b8f15aef01683795598b2b20b43d4c3427db2367d208de3ce03fe99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44002f3106f07cc211750e48936b2f73857009bfdc5147b1b0cdd1e7055e7666",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFunc/Variantd00c13299b8f15aef01683795598b2b20b43d4c3427db2367d208de3ce03fe99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62f85013-e304-87a4-5f53-ce4ca52880e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1348–1369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Measurable.simpleFunc_add
    {E : Type*} {_ : MeasurableSpace α} [MeasurableSpace E] [AddCancelMonoid E] [MeasurableAdd E]
    {g : α → E} (hg : Measurable g) (f : SimpleFunc α E) : Measurable ((f : α → E) + g) :=
  f.measurable_bind (fun b a ↦ b + g a) fun b ↦ hg.const_add b

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
of their images is a subset of `{0}`). -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFunc/Variantd00c13299b8f15aef01683795598b2b20b43d4c3427db2367d208de3ce03fe99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variantd00c13299b8f15aef01683795598b2b20b43d4c3427db2367d208de3ce03fe99.lean#L1348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `030b849f5ae8fa0fd97e7c394d025a995dfbfbce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
