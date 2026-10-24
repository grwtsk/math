# localSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e385866617b8717813c049665bd9eb97d4c813c2d9756d663fcb35d7a261a05",
  "kind": "def",
  "lexical_name": "localSeq",
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
  "slug": "localseq--c5555d79817f35cce2c75bcf",
  "source": {
    "blob": "e8d10cf5e7f5c5c4996591869b3e1bcfa8740f86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 105,
    "path": "GRWTSK/Topology/GeneralTopology/LocalProperty/Variant7ee70c0ea678e4a4c9057ade30ec097aa220cd6171200057ee29dbf33420b03b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5555d79817f35cce2c75bcf4878e495096268e9be8107082b7dec8adcea4151",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalProperty/Variant7ee70c0ea678e4a4c9057ade30ec097aa220cd6171200057ee29dbf33420b03b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e385866617b8717813c049665bd9eb97d4c813c2d9756d663fcb35d7a261a05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def localSeq [Zero E] (hX : Locally p 𝓕 X P) :
    ℕ → Ω → WithTop ι :=
  hX.choose

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalProperty/Variant7ee70c0ea678e4a4c9057ade30ec097aa220cd6171200057ee29dbf33420b03b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalProperty/Variant7ee70c0ea678e4a4c9057ade30ec097aa220cd6171200057ee29dbf33420b03b.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8d10cf5e7f5c5c4996591869b3e1bcfa8740f86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
