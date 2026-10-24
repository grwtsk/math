# trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4bed93cb043a85f12b399504f7c3e8edeea33b9943fb8f3524c77fd4886d08e8",
  "kind": "def",
  "lexical_name": "trans",
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
  "slug": "trans--ad75f79e14cbe4616bca55c5",
  "source": {
    "blob": "dec482cfb7251f204a211d2f99c67a3aeb822478",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 115,
    "path": "GRWTSK/Topology/MetricTopology/DilationEquiv/Variant98b48aa699a9e81bcc25e3626e991aef4db77e158793e4c7ef4834a636df2f01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad75f79e14cbe4616bca55c57af03ad2b377b89493bd4481ade737049e20d9cb",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/DilationEquiv/Variant98b48aa699a9e81bcc25e3626e991aef4db77e158793e4c7ef4834a636df2f01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4bed93cb043a85f12b399504f7c3e8edeea33b9943fb8f3524c77fd4886d08e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def trans (e₁ : X ≃ᵈ Y) (e₂ : Y ≃ᵈ Z) : X ≃ᵈ Z where
  toEquiv := e₁.1.trans e₂.1
  __ := e₂.toDilation.comp e₁.toDilation

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/DilationEquiv/Variant98b48aa699a9e81bcc25e3626e991aef4db77e158793e4c7ef4834a636df2f01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/DilationEquiv/Variant98b48aa699a9e81bcc25e3626e991aef4db77e158793e4c7ef4834a636df2f01.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dec482cfb7251f204a211d2f99c67a3aeb822478` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
