# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ComponentCompl.Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.SimpleGraph.componentComplMk_mem_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c6ecefb-4430-7fa9-9594-c0076ae8e366",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ComponentCompl.Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.SimpleGraph.componentComplMk_mem_hom",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-graphtheory-componentcom--42c2c7569815bec08aedda70",
  "source": {
    "blob": "92f3d8e83b0f0e8dc0d4c39bd446f14d0b83f88d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 167,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42c2c7569815bec08aedda70bcd49da780242d16cb3034dbadc0db3c45cc6b8a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c6ecefb-4430-7fa9-9594-c0076ae8e366`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ComponentCompl.Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.SimpleGraph.componentComplMk_mem_hom
    (G : SimpleGraph V) {v : V} (vK : v ∉ K) (h : L ⊆ K) :
    v ∈ (G.componentComplMk vK).hom h :=
  subset_hom (G.componentComplMk vK) h (G.componentComplMk_mem vK)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92f3d8e83b0f0e8dc0d4c39bd446f14d0b83f88d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
