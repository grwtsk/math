# mapRange_finsetSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f08e2dca632d9f450abe593e0ad8fc6095c40ea5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/9572d17248d8f367b2b32193e470ad051de6b8860fe94809529483ee14387e32.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f52a94bc-720f-64c0-9160-a50b3cabbe81",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:89aaf6a7-e2f1-e53d-d7bc-7f583538031b",
  "kind": "theorem",
  "lexical_name": "mapRange_finsetSum",
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
  "slug": "maprange-finsetsum--fd088abf3910e4087cf60bd8",
  "source": {
    "blob": "f08e2dca632d9f450abe593e0ad8fc6095c40ea5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 125,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9572d17248d8f367b2b32193e470ad051de6b8860fe94809529483ee14387e32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd088abf3910e4087cf60bd8c56d3458920ac11c2a4249fbaa7db06420f53880",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant9572d17248d8f367b2b32193e470ad051de6b8860fe94809529483ee14387e32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89aaf6a7-e2f1-e53d-d7bc-7f583538031b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapRange_finsetSum (f : F) (s : Finset ι) (g : ι → α →₀ M) :
    mapRange f (map_zero f) (∑ x ∈ s, g x) = ∑ x ∈ s, mapRange f (map_zero f) (g x) :=
  map_sum (mapRange.addMonoidHom (f : M →+ N)) _ _

@[deprecated (since := "2026-04-08")] alias mapRange_finset_sum := mapRange_finsetSum

end Finsupp

end MapRange

/-! ### Declarations about `equivCongrLeft` -/


section EquivCongrLeft

variable [Zero M]

namespace Finsupp

/-- Given `f : α ≃ β`, we can map `l : α →₀ M` to `equivMapDomain f l : β →₀ M` (computably)
by mapping the support forwards and the function backwards. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant9572d17248d8f367b2b32193e470ad051de6b8860fe94809529483ee14387e32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9572d17248d8f367b2b32193e470ad051de6b8860fe94809529483ee14387e32.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f08e2dca632d9f450abe593e0ad8fc6095c40ea5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
