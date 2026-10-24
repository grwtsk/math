# moduleOfAlgebraModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58181918512bed8cf5dc43d4fb28b11e6e9b0d21bbc7bf3aa5af6808157b78a4",
  "kind": "def",
  "lexical_name": "moduleOfAlgebraModule",
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
  "slug": "moduleofalgebramodule--09260978a77eaba377d113d6",
  "source": {
    "blob": "d138237ea1a4849b59f26d72a6697234587eb2ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 47,
    "path": "GRWTSK/Algebra/LinearAlgebra/Algebra/Variant1329fb98e52916cf98af1f9ff696d6db7e994c1738c3bf4415cd9df872bef3fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09260978a77eaba377d113d6dd64a5631f77f77dc078617ce2e97bfe1d7ded79",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Algebra/Variant1329fb98e52916cf98af1f9ff696d6db7e994c1738c3bf4415cd9df872bef3fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58181918512bed8cf5dc43d4fb28b11e6e9b0d21bbc7bf3aa5af6808157b78a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def moduleOfAlgebraModule (M : ModuleCat.{v} A) : Module k M :=
  RestrictScalars.module k A M
#align Module.module_of_algebra_Module ModuleCat.moduleOfAlgebraModule

attribute [scoped instance] ModuleCat.moduleOfAlgebraModule

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Algebra/Variant1329fb98e52916cf98af1f9ff696d6db7e994c1738c3bf4415cd9df872bef3fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Algebra/Variant1329fb98e52916cf98af1f9ff696d6db7e994c1738c3bf4415cd9df872bef3fb.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d138237ea1a4849b59f26d72a6697234587eb2ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
