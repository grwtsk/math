# instContinuousLinearMapClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d3db27fda4a6e095380791e2f6bd3a0661e48b98177cc079db1a2bc876ec8d9",
  "kind": "instance",
  "lexical_name": "instContinuousLinearMapClass",
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
  "slug": "instcontinuouslinearmapclass--6af6612b55b3376247be6697",
  "source": {
    "blob": "1af3568c1883797367e2a8729493c73980813959",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6af6612b55b3376247be6697809cfc3f0c31022496e907b39c30613fc3e75c18",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d3db27fda4a6e095380791e2f6bd3a0661e48b98177cc079db1a2bc876ec8d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instContinuousLinearMapClass : ContinuousLinearMapClass (characterSpace 𝕜 A) 𝕜 A 𝕜 where
  map_smulₛₗ φ := (φ : WeakDual 𝕜 A).map_smul
  map_add φ := (φ : WeakDual 𝕜 A).map_add
  map_continuous φ := (φ : WeakDual 𝕜 A).cont

-- Porting note: moved because Lean 4 doesn't see the `DFunLike` instance on `characterSpace 𝕜 A`
-- until the `ContinuousLinearMapClass` instance is declared
@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1af3568c1883797367e2a8729493c73980813959` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
