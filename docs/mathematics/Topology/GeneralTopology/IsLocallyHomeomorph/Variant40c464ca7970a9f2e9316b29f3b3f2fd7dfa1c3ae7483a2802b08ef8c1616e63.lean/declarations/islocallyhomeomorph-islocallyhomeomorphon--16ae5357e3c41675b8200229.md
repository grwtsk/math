# IsLocallyHomeomorph.isLocallyHomeomorphOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ed70db8f88eb6fa9ba62b29606c6876ebb5abeb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1cb48a96-97ba-d4aa-16b1-1d89dbf6df55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:315feedd-7e2d-8fe1-f8f6-c452f2aa3658",
  "kind": "theorem",
  "lexical_name": "IsLocallyHomeomorph.isLocallyHomeomorphOn",
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
  "slug": "islocallyhomeomorph-islocallyhomeomorphon--16ae5357e3c41675b8200229",
  "source": {
    "blob": "8ed70db8f88eb6fa9ba62b29606c6876ebb5abeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 95,
    "path": "GRWTSK/Topology/GeneralTopology/IsLocallyHomeomorph/Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16ae5357e3c41675b820022979f6ace229e7b142c4f084979c71f8224198abed",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsLocallyHomeomorph/Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:315feedd-7e2d-8fe1-f8f6-c452f2aa3658`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem IsLocallyHomeomorph.isLocallyHomeomorphOn (hf : IsLocallyHomeomorph f) :
    IsLocallyHomeomorphOn f Set.univ :=
  isLocallyHomeomorph_iff_isLocallyHomeomorphOn_univ.mp hf
#align is_locally_homeomorph.is_locally_homeomorph_on IsLocallyHomeomorph.isLocallyHomeomorphOn

variable (f)

namespace IsLocallyHomeomorph

/-- Proves that `f` satisfies `IsLocallyHomeomorph f`. The condition `h` is weaker than the
definition of `IsLocallyHomeomorph f`, since it only requires `e : LocalHomeomorph X Y` to
agree with `f` on its source `e.source`, as opposed to on the whole space `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsLocallyHomeomorph/Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsLocallyHomeomorph/Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ed70db8f88eb6fa9ba62b29606c6876ebb5abeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
