# biUnionPrepartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54fb5a043518ed14dc9085b0af42aab754a5e78c61c97e4fe420a705d1c337b8",
  "kind": "def",
  "lexical_name": "biUnionPrepartition",
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
  "slug": "biunionprepartition--9b496141dff1ecba36189c1d",
  "source": {
    "blob": "1bbcace960582ec52e7a6c6ca542a72867708958",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 182,
    "path": "GRWTSK/Topology/GeneralTopology/Tagged/Variantdf9c65e5f07de224afc864a174c7e81be86a6c300a08b8399ae86308f849b4ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b496141dff1ecba36189c1da550e065a154edb3f4450ed89257db8dcefb4f32",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Tagged/Variantdf9c65e5f07de224afc864a174c7e81be86a6c300a08b8399ae86308f849b4ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54fb5a043518ed14dc9085b0af42aab754a5e78c61c97e4fe420a705d1c337b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def biUnionPrepartition (π : TaggedPrepartition I) (πi : ∀ J : Box ι, Prepartition J) :
    TaggedPrepartition I where
  toPrepartition := π.toPrepartition.biUnion πi
  tag J := π.tag (π.toPrepartition.biUnionIndex πi J)
  tag_mem_Icc _ := π.tag_mem_Icc _
#align box_integral.tagged_prepartition.bUnion_prepartition BoxIntegral.TaggedPrepartition.biUnionPrepartition

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Tagged/Variantdf9c65e5f07de224afc864a174c7e81be86a6c300a08b8399ae86308f849b4ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Tagged/Variantdf9c65e5f07de224afc864a174c7e81be86a6c300a08b8399ae86308f849b4ab.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bbcace960582ec52e7a6c6ca542a72867708958` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
