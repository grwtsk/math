# hasFiniteCoproducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:def3c6d6597bf9fdb45493b64f52f84269d6187b6cf07e5735fcfa5e70cedd30",
  "kind": "instance",
  "lexical_name": "hasFiniteCoproducts",
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
  "slug": "hasfinitecoproducts--dca47429683bf049b2c82a39",
  "source": {
    "blob": "48fc458407b498216f6d3756d41c839aceabfff4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 103,
    "path": "GRWTSK/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dca47429683bf049b2c82a39f6b58a8d16d13c57ea5c0db67f60cbed8a3d28e2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:def3c6d6597bf9fdb45493b64f52f84269d6187b6cf07e5735fcfa5e70cedd30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hasFiniteCoproducts : HasFiniteCoproducts Stonean.{u} where
  out _ := {
    has_colimit := fun F => {
      exists_colimit := ⟨{
        cocone := finiteCoproduct.cocone F
        isColimit := finiteCoproduct.isColimit F }⟩ } }

/--
A coproduct cocone associated to the explicit finite coproduct with cone point `finiteCoproduct X`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48fc458407b498216f6d3756d41c839aceabfff4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
