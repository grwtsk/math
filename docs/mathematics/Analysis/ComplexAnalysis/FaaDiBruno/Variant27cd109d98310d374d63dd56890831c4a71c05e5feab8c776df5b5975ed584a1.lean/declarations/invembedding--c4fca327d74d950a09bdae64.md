# invEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2bb4f8fe7bb7cd0f6cab2b32abe03d6a79c6121a5c7bee28e1e8e6f8cf272ef4",
  "kind": "def",
  "lexical_name": "invEmbedding",
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
  "slug": "invembedding--c4fca327d74d950a09bdae64",
  "source": {
    "blob": "f477fa6f2548668fcb691bac6d2cc395ee3964b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 200,
    "path": "GRWTSK/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4fca327d74d950a09bdae645ce4c95829958c46839a4554c480755169b94c02",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2bb4f8fe7bb7cd0f6cab2b32abe03d6a79c6121a5c7bee28e1e8e6f8cf272ef4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def invEmbedding (j : Fin n) :
    Fin (c.partSize (c.index j)) := (c.exists_inverse j).choose.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/FaaDiBruno/Variant27cd109d98310d374d63dd56890831c4a71c05e5feab8c776df5b5975ed584a1.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f477fa6f2548668fcb691bac6d2cc395ee3964b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
