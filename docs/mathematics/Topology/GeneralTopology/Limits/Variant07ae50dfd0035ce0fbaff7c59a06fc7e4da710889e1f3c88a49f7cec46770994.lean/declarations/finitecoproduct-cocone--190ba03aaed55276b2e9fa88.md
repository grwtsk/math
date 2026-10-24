# finiteCoproduct.cocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:767cf54de952e1ef8adec8befba0a2700929eb71cc7d28298732eb0f38d11ea4",
  "kind": "def",
  "lexical_name": "finiteCoproduct.cocone",
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
  "slug": "finitecoproduct-cocone--190ba03aaed55276b2e9fa88",
  "source": {
    "blob": "48fc458407b498216f6d3756d41c839aceabfff4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:190ba03aaed55276b2e9fa8843e60249d2d265c0bda7a7686b67ed31e30197b5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:767cf54de952e1ef8adec8befba0a2700929eb71cc7d28298732eb0f38d11ea4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteCoproduct.cocone (F : Discrete α ⥤ Stonean) :
    Cocone F where
  pt := finiteCoproduct F.obj
  ι := Discrete.natTrans fun a => finiteCoproduct.ι F.obj a

/-- The explicit finite coproduct cocone is a colimit cocone. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48fc458407b498216f6d3756d41c839aceabfff4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
