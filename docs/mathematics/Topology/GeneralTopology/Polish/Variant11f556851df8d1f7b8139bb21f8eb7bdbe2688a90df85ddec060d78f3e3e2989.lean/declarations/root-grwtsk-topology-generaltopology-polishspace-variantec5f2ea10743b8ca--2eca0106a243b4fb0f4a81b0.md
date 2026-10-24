# _root_.GRWTSK.Topology.GeneralTopology.PolishSpace.Variantec5f2ea10743b8ca761d2f26478bbef1c95b3c233dc01205089a7dbb7719b613.IsOpen.polishSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7bf3c21-0177-7851-583b-511fba60b819",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.PolishSpace.Variantec5f2ea10743b8ca761d2f26478bbef1c95b3c233dc01205089a7dbb7719b613.IsOpen.polishSpace",
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
  "slug": "root-grwtsk-topology-generaltopology-polishspace-variantec5f2ea10743b8ca--2eca0106a243b4fb0f4a81b0",
  "source": {
    "blob": "4c64f6a336b6863be575f3d9eacbd6e4aa76f6eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 261,
    "path": "GRWTSK/Topology/GeneralTopology/Polish/Variant11f556851df8d1f7b8139bb21f8eb7bdbe2688a90df85ddec060d78f3e3e2989.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2eca0106a243b4fb0f4a81b05727b8b85314ea873c52eaedbe70b6086d6f368c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Polish/Variant11f556851df8d1f7b8139bb21f8eb7bdbe2688a90df85ddec060d78f3e3e2989.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7bf3c21-0177-7851-583b-511fba60b819`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.PolishSpace.Variantec5f2ea10743b8ca761d2f26478bbef1c95b3c233dc01205089a7dbb7719b613.IsOpen.polishSpace {α : Type*} [TopologicalSpace α] [PolishSpace α] {s : Set α}
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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Polish/Variant11f556851df8d1f7b8139bb21f8eb7bdbe2688a90df85ddec060d78f3e3e2989.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Polish/Variant11f556851df8d1f7b8139bb21f8eb7bdbe2688a90df85ddec060d78f3e3e2989.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c64f6a336b6863be575f3d9eacbd6e4aa76f6eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
