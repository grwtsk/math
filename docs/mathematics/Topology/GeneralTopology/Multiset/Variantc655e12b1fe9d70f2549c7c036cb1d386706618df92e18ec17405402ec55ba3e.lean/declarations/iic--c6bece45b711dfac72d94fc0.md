# Iic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67698c334b97643a104c70145b6ecee79c1c5a1f1a7537ff1f3ab054e531d2c1",
  "kind": "def",
  "lexical_name": "Iic",
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
  "slug": "iic--c6bece45b711dfac72d94fc0",
  "source": {
    "blob": "e07ed1034137dde2375be2ce46cb41aab3b473b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 96,
    "path": "GRWTSK/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6bece45b711dfac72d94fc0385bdc093ed4455df26d52bac71ec48e7ef355b5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67698c334b97643a104c70145b6ecee79c1c5a1f1a7537ff1f3ab054e531d2c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Iic (b : α) : Multiset α := (Finset.Iic b).val

/-- The multiset of elements `x` such that `x < b`. Basically `Set.Iio b` as a multiset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e07ed1034137dde2375be2ce46cb41aab3b473b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
