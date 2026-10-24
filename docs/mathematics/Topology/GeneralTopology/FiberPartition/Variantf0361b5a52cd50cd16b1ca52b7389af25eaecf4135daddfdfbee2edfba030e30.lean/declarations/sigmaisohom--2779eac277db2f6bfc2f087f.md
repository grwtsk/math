# sigmaIsoHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02bb7306a5123c1e06de80223928307019a5b55986807dea0fd954881732c630",
  "kind": "def",
  "lexical_name": "sigmaIsoHom",
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
  "slug": "sigmaisohom--2779eac277db2f6bfc2f087f",
  "source": {
    "blob": "fd02a78681ad0bfc925bb770f7e5dca5b4b66d87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 36,
    "path": "GRWTSK/Topology/GeneralTopology/FiberPartition/Variantf0361b5a52cd50cd16b1ca52b7389af25eaecf4135daddfdfbee2edfba030e30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2779eac277db2f6bfc2f087fb15d237ce93dcd7bfc6e13abb9dafd078e00a6c9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiberPartition/Variantf0361b5a52cd50cd16b1ca52b7389af25eaecf4135daddfdfbee2edfba030e30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02bb7306a5123c1e06de80223928307019a5b55986807dea0fd954881732c630`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmaIsoHom : C((x : Fiber f) × x.val, S) where
  toFun | ⟨a, x⟩ => x.val
  continuous_toFun := continuous_sigma (by fun_prop)

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiberPartition/Variantf0361b5a52cd50cd16b1ca52b7389af25eaecf4135daddfdfbee2edfba030e30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiberPartition/Variantf0361b5a52cd50cd16b1ca52b7389af25eaecf4135daddfdfbee2edfba030e30.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd02a78681ad0bfc925bb770f7e5dca5b4b66d87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
