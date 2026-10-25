# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2a81a6acb5857c29deda5434f0e6fe9dc8906e6ef391a457d8e6c19400986bd",
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
  "slug": "example--e574bd12dd998bc3f0a96e9b",
  "source": {
    "blob": "2a94fa6211d5ced098df27487192a8a3dc6a711f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineContracts/Variante7f007a93e61d91a590b8c582021772bf27a2c6c47a54543ace4a4b7192c2187.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e574bd12dd998bc3f0a96e9b80b4aedc0f03d16ca388c2b7864ea3251a391c2c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineContracts/Variante7f007a93e61d91a590b8c582021772bf27a2c6c47a54543ace4a4b7192c2187.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2a81a6acb5857c29deda5434f0e6fe9dc8906e6ef391a457d8e6c19400986bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {I P V : Type} [DecidableEq P] [DecidableEq V]
    (n m : Nat) (outputs : List (OccurrencePlans.Output P V))
    (entries : List (OccurrencePlans.Occurrence I P V))
    (woven : OccurrencePlans.Woven I P V)
    (accepted : OccurrencePlans.weave n m outputs entries = some woven) :
    OccurrencePlans.decode woven.outputs woven.references = some entries :=
  OccurrencePlans.weave_preserves_every_occurrence accepted

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineContracts/Variante7f007a93e61d91a590b8c582021772bf27a2c6c47a54543ace4a4b7192c2187.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineContracts/Variante7f007a93e61d91a590b8c582021772bf27a2c6c47a54543ace4a4b7192c2187.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a94fa6211d5ced098df27487192a8a3dc6a711f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
