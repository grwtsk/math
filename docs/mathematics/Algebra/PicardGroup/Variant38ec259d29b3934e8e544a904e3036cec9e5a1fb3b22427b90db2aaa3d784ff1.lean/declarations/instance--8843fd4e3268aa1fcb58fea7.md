# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f23d5454dbe796d13827969cb5377be825735e18369f9faf5c12cb04ec78ad19",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--8843fd4e3268aa1fcb58fea7",
  "source": {
    "blob": "cb1fde9f0a17d9f5a18ceb0cb3b0f2cae433357d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 799,
    "line": 794,
    "path": "GRWTSK/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8843fd4e3268aa1fcb58fea75e9b70d8f8e30d38e46f37c55fe0f9517c1bd753",
  "verification": {
    "reference": "docs/verification/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f23d5454dbe796d13827969cb5377be825735e18369f9faf5c12cb04ec78ad19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 794–799.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Module.Invertible R M] : Module.Invertible R (submoduleAlgebra e) :=
  .congr (submoduleAlgebraEquiv e).symm

set_option backward.defeqAttrib.useBackward true in
/-- When a flat `R`-module `M` is embedded as a submodule of a faithful `R`-algebra `A`,
the multiplication map induces an isomorphism `A ⊗[R] M ≃ₗ[A] A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean#L794).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb1fde9f0a17d9f5a18ceb0cb3b0f2cae433357d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
