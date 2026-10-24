# homeoOfIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f9f2cc1bc32cb59ebd6e31e9e18c53c5918eafb3d33f1f9140e5ebe14b1b97a",
  "kind": "def",
  "lexical_name": "homeoOfIso",
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
  "slug": "homeoofiso--38e0f4226ed51a814532a4fa",
  "source": {
    "blob": "9f172439ec221ae22c14a126b162a9c095adc4a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 103,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlyGenerated/Variantf2eb9185e90d95c529917725be22cee6643e3d2dec8f4712d5b8fc53d9c39f3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38e0f4226ed51a814532a4fadf7c19bb7729eff37f1a480d68430eb45718c782",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactlyGenerated/Variantf2eb9185e90d95c529917725be22cee6643e3d2dec8f4712d5b8fc53d9c39f3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f9f2cc1bc32cb59ebd6e31e9e18c53c5918eafb3d33f1f9140e5ebe14b1b97a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homeoOfIso {X Y : CompactlyGenerated.{u, w}} (f : X ≅ Y) : X ≃ₜ Y where
  toFun := f.hom
  invFun := f.inv
  left_inv := f.hom_inv_id_apply
  right_inv := f.inv_hom_id_apply
  continuous_toFun := f.hom.hom.hom.continuous
  continuous_invFun := f.inv.hom.hom.continuous

/-- The equivalence between isomorphisms in `CompactlyGenerated` and homeomorphisms
of topological spaces. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlyGenerated/Variantf2eb9185e90d95c529917725be22cee6643e3d2dec8f4712d5b8fc53d9c39f3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlyGenerated/Variantf2eb9185e90d95c529917725be22cee6643e3d2dec8f4712d5b8fc53d9c39f3d.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f172439ec221ae22c14a126b162a9c095adc4a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
