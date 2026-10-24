# induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6638a72f5aeebd139d011282b8a1d40108892cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 818,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37228bc604e8f4eaeace0a119a9ff7830fbcaa1de6f2dc1f19996ccda2c8b5bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd675ad0-1432-60fd-2212-5dc49f082873",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:710b437e-01d1-b2a0-b418-9d20e0b54889",
  "kind": "theorem",
  "lexical_name": "induction",
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
  "slug": "induction--938d8797851442c0ce9fbcaf",
  "source": {
    "blob": "b6638a72f5aeebd139d011282b8a1d40108892cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 843,
    "line": 818,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant37228bc604e8f4eaeace0a119a9ff7830fbcaa1de6f2dc1f19996ccda2c8b5bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:938d8797851442c0ce9fbcaf8000bd213bbf6b2e3b4007e5446dbc4763b30c0a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant37228bc604e8f4eaeace0a119a9ff7830fbcaa1de6f2dc1f19996ccda2c8b5bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:710b437e-01d1-b2a0-b418-9d20e0b54889`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 818–843.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction [MeasurableSpace α] [AddZeroClass β] [TopologicalSpace β]
    {P : (f : α → β) → StronglyMeasurable f → Prop}
    (ind : ∀ c ⦃s : Set α⦄ (hs : MeasurableSet s),
      P (s.indicator fun _ ↦ c) (stronglyMeasurable_const.indicator hs))
    (add : ∀ ⦃f g : α → β⦄ (hf : StronglyMeasurable f) (hg : StronglyMeasurable g)
      (hfg : StronglyMeasurable (f + g)), Disjoint f.support g.support →
      P f hf → P g hg → P (f + g) hfg)
    (lim : ∀ ⦃f : ℕ → α → β⦄ ⦃g : α → β⦄ (hf : ∀ n, StronglyMeasurable (f n))
      (hg : StronglyMeasurable g), (∀ n, P (f n) (hf n)) →
      (∀ x, Tendsto (f · x) atTop (𝓝 (g x))) → P g hg)
    (f : α → β) (hf : StronglyMeasurable f) : P f hf := by
  let s := hf.approx
  refine lim (fun n ↦ (s n).stronglyMeasurable) hf (fun n ↦ ?_) hf.tendsto_approx
  change P (s n) (s n).stronglyMeasurable
  induction s n using SimpleFunc.induction with
  | const c hs => exact ind c hs
  | @add f g h_supp hf hg =>
    exact add f.stronglyMeasurable g.stronglyMeasurable (f + g).stronglyMeasurable h_supp hf hg

open scoped Classical in
/-- To prove that a property holds for any strongly measurable function, it is enough to show
that it holds for constant functions and that it is closed under piecewise combination of functions
and pointwise limits.

To use in an induction proof, the syntax is
`induction f, hf using StronglyMeasurable.induction' with`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant37228bc604e8f4eaeace0a119a9ff7830fbcaa1de6f2dc1f19996ccda2c8b5bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant37228bc604e8f4eaeace0a119a9ff7830fbcaa1de6f2dc1f19996ccda2c8b5bb.lean#L818).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6638a72f5aeebd139d011282b8a1d40108892cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
