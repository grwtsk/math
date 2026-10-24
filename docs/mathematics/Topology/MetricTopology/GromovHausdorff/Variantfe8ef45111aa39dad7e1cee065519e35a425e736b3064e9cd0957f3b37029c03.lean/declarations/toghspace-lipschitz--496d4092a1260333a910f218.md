# toGHSpace_lipschitz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a323bb14830c522f7d8a6648634b1b5304b913ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 550,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe8ef45111aa39dad7e1cee065519e35a425e736b3064e9cd0957f3b37029c03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:222f3931-ff48-3348-561d-6c3e50763b53",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f0d0f9d2-4c14-ec71-705b-e157d3abec4a",
  "kind": "theorem",
  "lexical_name": "toGHSpace_lipschitz",
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
  "slug": "toghspace-lipschitz--496d4092a1260333a910f218",
  "source": {
    "blob": "a323bb14830c522f7d8a6648634b1b5304b913ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 550,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantfe8ef45111aa39dad7e1cee065519e35a425e736b3064e9cd0957f3b37029c03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:496d4092a1260333a910f2187603031a27b7b8d209acd63f243f5c866793c622",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorff/Variantfe8ef45111aa39dad7e1cee065519e35a425e736b3064e9cd0957f3b37029c03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0d0f9d2-4c14-ec71-705b-e157d3abec4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 550–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toGHSpace_lipschitz :
    LipschitzWith 1 (NonemptyCompacts.toGHSpace : NonemptyCompacts X → GHSpace) :=
  LipschitzWith.mk_one ghDist_le_nonemptyCompacts_dist
#align Gromov_Hausdorff.to_GH_space_lipschitz GromovHausdorff.toGHSpace_lipschitz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorff/Variantfe8ef45111aa39dad7e1cee065519e35a425e736b3064e9cd0957f3b37029c03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantfe8ef45111aa39dad7e1cee065519e35a425e736b3064e9cd0957f3b37029c03.lean#L550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a323bb14830c522f7d8a6648634b1b5304b913ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
