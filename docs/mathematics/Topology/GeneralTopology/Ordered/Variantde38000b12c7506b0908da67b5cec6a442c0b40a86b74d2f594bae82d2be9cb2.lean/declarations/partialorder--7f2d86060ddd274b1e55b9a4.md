# partialOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd5a126ec5c5005c1df8be48ad8149596fcafc0c85df43d60c74021763ee2df8",
  "kind": "instance",
  "lexical_name": "partialOrder",
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
  "slug": "partialorder--7f2d86060ddd274b1e55b9a4",
  "source": {
    "blob": "04d703d0c699554f695a27adaf22a3feeaab935d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 59,
    "path": "GRWTSK/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f2d86060ddd274b1e55b9a411a1914a547120fbb5c0e6138ebdd76cf2f68a9e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd5a126ec5c5005c1df8be48ad8149596fcafc0c85df43d60c74021763ee2df8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance partialOrder [PartialOrder β] : PartialOrder C(α, β) :=
  PartialOrder.lift (fun f => f.toFun) (fun f g _ => by cases f; cases g; congr)
  -- porting note: was `by tidy`, and `by aesop` alone didn't work
#align continuous_map.partial_order ContinuousMap.partialOrder

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ordered/Variantde38000b12c7506b0908da67b5cec6a442c0b40a86b74d2f594bae82d2be9cb2.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04d703d0c699554f695a27adaf22a3feeaab935d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
