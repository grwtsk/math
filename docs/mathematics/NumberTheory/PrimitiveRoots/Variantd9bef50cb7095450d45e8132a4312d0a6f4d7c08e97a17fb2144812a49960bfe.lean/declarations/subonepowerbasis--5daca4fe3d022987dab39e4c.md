# subOnePowerBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf6fb05192ab1add91f967c5024d48da24f83b158f5c06465c8a7b0a6db2e7e1",
  "kind": "def",
  "lexical_name": "subOnePowerBasis",
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
  "slug": "subonepowerbasis--5daca4fe3d022987dab39e4c",
  "source": {
    "blob": "f513f38acffe05d4a4cc5e0cd36ea6aac6e290c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 128,
    "path": "GRWTSK/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5daca4fe3d022987dab39e4cc35912d0f9d81b2802216a4f9e4a8399af89f0a5",
  "verification": {
    "reference": "docs/verification/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf6fb05192ab1add91f967c5024d48da24f83b158f5c06465c8a7b0a6db2e7e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def subOnePowerBasis : PowerBasis K L :=
  (hζ.powerBasis K).ofGenMemAdjoin
    (((integral {n} K L).isIntegral ζ).sub isIntegral_one)
    (hζ.powerBasis_gen_mem_adjoin_zeta_sub_one _)

variable {K} (C)

-- We are not using @[simps] to avoid a timeout.
/-- The equivalence between `L →ₐ[K] C` and `primitiveRoots n C` given by a primitive root `ζ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f513f38acffe05d4a4cc5e0cd36ea6aac6e290c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
