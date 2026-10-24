# measurableSet_region_between_co

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2a3dbf4238ab555b4413644e3f3fbde8043082a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 502,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:544905fd-b076-b9ae-7611-2770e1c40291",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8297dc2a-b366-7bae-f3aa-82cf9d3a4850",
  "kind": "theorem",
  "lexical_name": "measurableSet_region_between_co",
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
  "slug": "measurableset-region-between-co--b23cde911b91ea14113174e5",
  "source": {
    "blob": "c2a3dbf4238ab555b4413644e3f3fbde8043082a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 502,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b23cde911b91ea14113174e56bdee0ffb63fb51257852c06ab2d30836ec12a11",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8297dc2a-b366-7bae-f3aa-82cf9d3a4850`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurableSet_region_between_co (hf : Measurable f) (hg : Measurable g)
    (hs : MeasurableSet s) :
    MeasurableSet { p : α × ℝ | p.fst ∈ s ∧ p.snd ∈ Ico (f p.fst) (g p.fst) } := by
  dsimp only [regionBetween, Ico, mem_setOf_eq, setOf_and]
  refine'
    MeasurableSet.inter _
      ((measurableSet_le (hf.comp measurable_fst) measurable_snd).inter
        (measurableSet_lt measurable_snd (hg.comp measurable_fst)))
  exact measurable_fst hs
#align measurable_set_region_between_co measurableSet_region_between_co

/-- The region between two measurable functions on a measurable set is measurable;
a version for the region together with the graphs of both functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2a3dbf4238ab555b4413644e3f3fbde8043082a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
