# continuous_iff_from_discrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c98464f3146096cd3f74246727d43ec2e08b20cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 384,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94ca5accdd8acbcbc21aa024323adb8f93098430bc1dfc70559014d21e1747a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7575e986-0f22-f879-4acd-543df5f88d3a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8df51455-9cac-c341-ee94-adc60e83fecb",
  "kind": "lemma",
  "lexical_name": "continuous_iff_from_discrete",
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
  "slug": "continuous-iff-from-discrete--b499ff8de0a803ce63195be0",
  "source": {
    "blob": "c98464f3146096cd3f74246727d43ec2e08b20cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 384,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant94ca5accdd8acbcbc21aa024323adb8f93098430bc1dfc70559014d21e1747a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b499ff8de0a803ce63195be0e61c38f5350dcd9852883e39ee6cba790be3f77b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant94ca5accdd8acbcbc21aa024323adb8f93098430bc1dfc70559014d21e1747a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8df51455-9cac-c341-ee94-adc60e83fecb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuous_iff_from_discrete {Y : Type*} [TopologicalSpace Y]
    [DiscreteTopology X] (f : OnePoint X → Y) :
    Continuous f ↔ Tendsto (fun x : X ↦ f x) cofinite (𝓝 (f ∞)) := by
  simp [continuous_iff, cocompact_eq_cofinite, continuous_of_discreteTopology]

/--
A constructor for continuous maps out of a one point compactification of a discrete space, given a
map from the underlying space and a limit value at infinity.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant94ca5accdd8acbcbc21aa024323adb8f93098430bc1dfc70559014d21e1747a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant94ca5accdd8acbcbc21aa024323adb8f93098430bc1dfc70559014d21e1747a0.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c98464f3146096cd3f74246727d43ec2e08b20cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
