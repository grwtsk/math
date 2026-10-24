# _root_.IsOpen.polishSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca42b0146bb4f3af57a30fe2cc0e9936ea87b96c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 351,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aeef3106-2e52-2717-2bf4-468384f1e4c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6599d19c-e99e-d6b5-295a-c2ecb75a4be0",
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
  "slug": "root-isopen-polishspace--7478624d2dee5e88b050020c",
  "source": {
    "blob": "ca42b0146bb4f3af57a30fe2cc0e9936ea87b96c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 351,
    "path": "GRWTSK/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7478624d2dee5e88b050020c0a4a05336beae99354934bbb5be0df800f37e437",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6599d19c-e99e-d6b5-295a-c2ecb75a4be0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.IsOpen.polishSpace {α : Type*} [TopologicalSpace α] [PolishSpace α] {s : Set α}
    (hs : IsOpen s) : PolishSpace s := by
  letI := upgradePolishSpace α
  lift s to Opens α using hs
  have : SecondCountableTopology s.CompleteCopy := inferInstanceAs (SecondCountableTopology s)
  exact inferInstanceAs (PolishSpace s.CompleteCopy)
#align is_open.polish_space IsOpen.polishSpace

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

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca42b0146bb4f3af57a30fe2cc0e9936ea87b96c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
