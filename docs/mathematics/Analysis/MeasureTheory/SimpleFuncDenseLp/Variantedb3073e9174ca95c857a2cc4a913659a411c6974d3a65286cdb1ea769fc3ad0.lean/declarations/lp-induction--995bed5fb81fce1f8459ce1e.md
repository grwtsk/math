# Lp.induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33d4039326eb4d1a24548a24292c2beeb8da639d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 814,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/edb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:abf26753-d159-7ef6-bd38-c2c6977397f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e71b7391-fce5-f462-e7c3-c00f70a83099",
  "kind": "theorem",
  "lexical_name": "Lp.induction",
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
  "slug": "lp-induction--995bed5fb81fce1f8459ce1e",
  "source": {
    "blob": "33d4039326eb4d1a24548a24292c2beeb8da639d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 838,
    "line": 814,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantedb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:995bed5fb81fce1f8459ce1e4b21ededb252ae2d2a4497dd11541c49235ea51e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantedb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e71b7391-fce5-f462-e7c3-c00f70a83099`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 814–838.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Lp.induction [_i : Fact (1 ≤ p)] (hp_ne_top : p ≠ ∞) (motive : Lp E p μ → Prop)
    (indicatorConst : ∀ (c : E) {s : Set α} (hs : MeasurableSet s) (hμs : μ s < ∞),
      motive (Lp.simpleFunc.indicatorConst p hs hμs.ne c))
    (add : ∀ ⦃f g⦄, ∀ hf : MemLp f p μ, ∀ hg : MemLp g p μ, Disjoint (support f) (support g) →
      motive (hf.toLp f) → motive (hg.toLp g) → motive (hf.toLp f + hg.toLp g))
    (isClosed : IsClosed { f : Lp E p μ | motive f }) : ∀ f : Lp E p μ, motive f := by
  refine fun f => (Lp.simpleFunc.denseRange hp_ne_top).induction_on f isClosed ?_
  refine Lp.simpleFunc.induction (α := α) (E := E) (lt_of_lt_of_le zero_lt_one _i.elim).ne'
    hp_ne_top ?_ ?_
  · exact fun c s => indicatorConst c
  · exact fun f g hf hg => add hf hg

/-- To prove something for an arbitrary `MemLp` function in a second countable
Borel normed group, it suffices to show that
* the property holds for (multiples of) characteristic functions;
* is closed under addition;
* the set of functions in the `Lᵖ` space for which the property holds is closed.
* the property is closed under the almost-everywhere equal relation.

It is possible to make the hypotheses in the induction steps a bit stronger, and such conditions
can be added once we need them (for example in `h_add` it is only necessary to consider the sum of
a simple function with a multiple of a characteristic function and that the intersection
of their images is a subset of `{0}`).
-/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantedb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantedb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean#L814).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33d4039326eb4d1a24548a24292c2beeb8da639d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
