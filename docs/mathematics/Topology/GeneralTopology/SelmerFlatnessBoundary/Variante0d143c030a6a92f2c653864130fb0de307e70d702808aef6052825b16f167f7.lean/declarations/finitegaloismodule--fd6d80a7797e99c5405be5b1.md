# FiniteGaloisModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16fbe7c03b6de7f58b133fffa47d3847d41f69b98f17eb57052c026b3a94ea5f",
  "kind": "structure",
  "lexical_name": "FiniteGaloisModule",
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
  "slug": "finitegaloismodule--fd6d80a7797e99c5405be5b1",
  "source": {
    "blob": "457890dbd6e6d9c34f36d77e91fb2a4286de837e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/SelmerFlatnessBoundary/Variante0d143c030a6a92f2c653864130fb0de307e70d702808aef6052825b16f167f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd6d80a7797e99c5405be5b10c96cecce93cc090f2e5fa71172de84ad499e364",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SelmerFlatnessBoundary/Variante0d143c030a6a92f2c653864130fb0de307e70d702808aef6052825b16f167f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16fbe7c03b6de7f58b133fffa47d3847d41f69b98f17eb57052c026b3a94ea5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteGaloisModule where
  label : String
  moduleHash : Nat
  coefficientModulus : Nat
  finiteModule : Prop
  galoisActionSound : Prop

/--
A finite cohomology class label.

The value is an opaque hash/identifier of a class in a certified finite
cohomology group, for example a class in `H¹(K, E[n])`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SelmerFlatnessBoundary/Variante0d143c030a6a92f2c653864130fb0de307e70d702808aef6052825b16f167f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SelmerFlatnessBoundary/Variante0d143c030a6a92f2c653864130fb0de307e70d702808aef6052825b16f167f7.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `457890dbd6e6d9c34f36d77e91fb2a4286de837e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
