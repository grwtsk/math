# _root_.GRWTSK.Topology.GeneralTopology.IsEmbeddingCoe.Variantcd94ae135aa10f15d2861ddbdeb2d09bac0ed61835e80eb65623b2771ae43e4f.ContinuousWithinAt.ereal_toENNReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6773d1c-6a4b-a347-776b-d4034866fcef",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.IsEmbeddingCoe.Variantcd94ae135aa10f15d2861ddbdeb2d09bac0ed61835e80eb65623b2771ae43e4f.ContinuousWithinAt.ereal_toENNReal",
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
  "slug": "root-grwtsk-topology-generaltopology-isembeddingcoe-variantcd94ae135aa10--384a5b75540e0910ea8386b2",
  "source": {
    "blob": "c00484f3925be25ea323aa0909f4bbacfa75b383",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 221,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant3ae2146295a5172eee6f274116a02dc846ca7d63e656fa5e517c7391a4a41ab7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:384a5b75540e0910ea8386b29605de28479e33c105bff07e5b5cd738081c87c0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant3ae2146295a5172eee6f274116a02dc846ca7d63e656fa5e517c7391a4a41ab7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6773d1c-6a4b-a347-776b-d4034866fcef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.GeneralTopology.IsEmbeddingCoe.Variantcd94ae135aa10f15d2861ddbdeb2d09bac0ed61835e80eb65623b2771ae43e4f.ContinuousWithinAt.ereal_toENNReal {α : Type*} [TopologicalSpace α] {f : α → EReal}
    {s : Set α} {x : α} (hf : ContinuousWithinAt f s x) :
    ContinuousWithinAt (fun x => (f x).toENNReal) s x :=
  continuous_toENNReal.continuousAt.comp_continuousWithinAt hf

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant3ae2146295a5172eee6f274116a02dc846ca7d63e656fa5e517c7391a4a41ab7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant3ae2146295a5172eee6f274116a02dc846ca7d63e656fa5e517c7391a4a41ab7.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c00484f3925be25ea323aa0909f4bbacfa75b383` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
