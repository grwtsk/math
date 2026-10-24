# _root_.IsOpen.polishSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5cacd501a6364845afe21e6ef015eb4bc3e9c46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec5f2ea10743b8ca761d2f26478bbef1c95b3c233dc01205089a7dbb7719b613.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c6f1f18-8211-83d8-e72e-354103e5ee32",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd38a427-b810-e1d8-5272-033ce380ad1d",
  "kind": "theorem",
  "lexical_name": "_root_.IsOpen.polishSpace",
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
  "slug": "root-isopen-polishspace--8f066686729862e8e50147fe",
  "source": {
    "blob": "d5cacd501a6364845afe21e6ef015eb4bc3e9c46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 253,
    "path": "GRWTSK/Topology/GeneralTopology/Polish/Variantec5f2ea10743b8ca761d2f26478bbef1c95b3c233dc01205089a7dbb7719b613.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f066686729862e8e50147fed8e11288068c4aa58a03591088df22f6e4da9330",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Polish/Variantec5f2ea10743b8ca761d2f26478bbef1c95b3c233dc01205089a7dbb7719b613.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd38a427-b810-e1d8-5272-033ce380ad1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.IsOpen.polishSpace {α : Type*} [TopologicalSpace α] [PolishSpace α] {s : Set α}
    (hs : IsOpen s) : PolishSpace s := by
  letI := upgradeIsCompletelyMetrizable α
  lift s to Opens α using hs
  exact inferInstanceAs (PolishSpace s.CompleteCopy)

end CompleteCopy

end TopologicalSpace.Opens

namespace PolishSpace

/-! ### Clopenable sets in Polish spaces -/

/-- A set in a topological space is clopenable if there exists a finer Polish topology for which
this set is open and closed. It turns out that this notion is equivalent to being Borel-measurable,
but this is nontrivial (see `isClopenable_iff_measurableSet`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Polish/Variantec5f2ea10743b8ca761d2f26478bbef1c95b3c233dc01205089a7dbb7719b613.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Polish/Variantec5f2ea10743b8ca761d2f26478bbef1c95b3c233dc01205089a7dbb7719b613.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5cacd501a6364845afe21e6ef015eb4bc3e9c46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
