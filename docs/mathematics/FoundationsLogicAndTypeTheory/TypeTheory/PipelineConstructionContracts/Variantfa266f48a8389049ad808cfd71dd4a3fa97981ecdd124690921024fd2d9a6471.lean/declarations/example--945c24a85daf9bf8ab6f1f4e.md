# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc2b3933ba757fb4bc08f7582fc09b3b1ef8489f9a1e2e09e2be1e63bf110bc4",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--945c24a85daf9bf8ab6f1f4e",
  "source": {
    "blob": "af387a70441dd06da98b61da72d861179d487979",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineConstructionContracts/Variantfa266f48a8389049ad808cfd71dd4a3fa97981ecdd124690921024fd2d9a6471.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:945c24a85daf9bf8ab6f1f4ed1ea7ff61008eb373ba4d94e1a64f58137dab7b8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineConstructionContracts/Variantfa266f48a8389049ad808cfd71dd4a3fa97981ecdd124690921024fd2d9a6471.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc2b3933ba757fb4bc08f7582fc09b3b1ef8489f9a1e2e09e2be1e63bf110bc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (host : FilesystemRefinement.Host)
    (source target : FilesystemRefinement.Name) (inode : FilesystemRefinement.Inode)
    (different : source ≠ target) :
    (FilesystemRefinement.crash (FilesystemRefinement.syncDirectory
      {host with live := FilesystemRefinement.renamed host.live source target inode}
      target.parent)).live.names target = some inode :=
  FilesystemRefinement.target_first_sync_retains_exact_inode host source target inode different

end RefinementConsumer

/- Independent consumers state the captured-input and IO premises explicitly.
These signatures do not assume authenticity from a digest, a path, or a parser's
success exit status. Native IO observations remain a separate boundary. -/
namespace PipelineProducerConsumer
open GRWTSK SourceRefinement

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineConstructionContracts/Variantfa266f48a8389049ad808cfd71dd4a3fa97981ecdd124690921024fd2d9a6471.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineConstructionContracts/Variantfa266f48a8389049ad808cfd71dd4a3fa97981ecdd124690921024fd2d9a6471.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af387a70441dd06da98b61da72d861179d487979` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
