# instDivisionMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b17d5b02257750914c9a80de3993ce72dfd9f7559fdc2a325746a3c30710699",
  "kind": "instance",
  "lexical_name": "instDivisionMonoid",
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
  "slug": "instdivisionmonoid--7135f485525c2ef1861c2ceb",
  "source": {
    "blob": "115de22680d360ac3c5da8c3ef221ae7a9d326a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 505,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant552ff6f039f7f2c8f08f29fd2979d97ffc4beebd8b0a891df04f9ed6f72995b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7135f485525c2ef1861c2ceb96326dca0903837095e455ba4a6acedc4cbc8752",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant552ff6f039f7f2c8f08f29fd2979d97ffc4beebd8b0a891df04f9ed6f72995b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b17d5b02257750914c9a80de3993ce72dfd9f7559fdc2a325746a3c30710699`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instDivisionMonoid [DivisionMonoid G] : DivisionMonoid (Germ l G) where
  inv_inv := inv_inv
  mul_inv_rev x y := inductionOn₂ x y fun _ _ ↦ congr_arg ofFun <| mul_inv_rev _ _
  inv_eq_of_mul x y := inductionOn₂ x y fun _ _ h ↦ coe_eq.2 <| (coe_eq.1 h).mono fun _ ↦
    DivisionMonoid.inv_eq_of_mul _ _

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant552ff6f039f7f2c8f08f29fd2979d97ffc4beebd8b0a891df04f9ed6f72995b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant552ff6f039f7f2c8f08f29fd2979d97ffc4beebd8b0a891df04f9ed6f72995b6.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `115de22680d360ac3c5da8c3ef221ae7a9d326a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
