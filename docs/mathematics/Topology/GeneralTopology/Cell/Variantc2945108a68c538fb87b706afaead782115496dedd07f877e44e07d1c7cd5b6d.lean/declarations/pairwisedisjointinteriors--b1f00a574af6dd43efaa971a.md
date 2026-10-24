# PairwiseDisjointInteriors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41dc2abf5271b0f2c79f5ff09716e615e6bd206c231aac92724431667236eeb2",
  "kind": "def",
  "lexical_name": "PairwiseDisjointInteriors",
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
  "slug": "pairwisedisjointinteriors--b1f00a574af6dd43efaa971a",
  "source": {
    "blob": "415789dbb5b6cbe45e489ee421226d853c235ea9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 40,
    "path": "GRWTSK/Topology/GeneralTopology/Cell/Variantc2945108a68c538fb87b706afaead782115496dedd07f877e44e07d1c7cd5b6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1f00a574af6dd43efaa971afb9c8895fc0bcf3c5a6368f07c0cbe4a87155a55",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Cell/Variantc2945108a68c538fb87b706afaead782115496dedd07f877e44e07d1c7cd5b6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41dc2abf5271b0f2c79f5ff09716e615e6bd206c231aac92724431667236eeb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PairwiseDisjointInteriors
    {ι : Type*}
    (cell : ι → AnalyticCell) : Prop :=
  ∀ ⦃left right : ι⦄,
    left ≠ right →
    Disjoint (cell left).interior
      (cell right).interior

end Mathematics.RHIsolation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Cell/Variantc2945108a68c538fb87b706afaead782115496dedd07f877e44e07d1c7cd5b6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Cell/Variantc2945108a68c538fb87b706afaead782115496dedd07f877e44e07d1c7cd5b6d.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `415789dbb5b6cbe45e489ee421226d853c235ea9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
