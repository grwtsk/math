# instCompleteLinearOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb89139616e2ff9b62a4fe9246b87bb05200af096924e4be9f80e36b2d6e91a3",
  "kind": "instance",
  "lexical_name": "instCompleteLinearOrder",
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
  "slug": "instcompletelinearorder--0de01990ba78f30f11e5931a",
  "source": {
    "blob": "05f8651815a37d6dee08195e751d52400e81a5a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 214,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant620f12da2c31cf7f6ecb9d545673e39b144b8103a4022bfd40535dea50434bfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0de01990ba78f30f11e5931af41c6cc1d7c8eff3f03feaf642f76911ee6627fb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant620f12da2c31cf7f6ecb9d545673e39b144b8103a4022bfd40535dea50434bfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb89139616e2ff9b62a4fe9246b87bb05200af096924e4be9f80e36b2d6e91a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCompleteLinearOrder : CompleteLinearOrder PUnit where
  __ := instBooleanAlgebra
  __ := instLinearOrder
  sSup := fun _ => unit
  sInf := fun _ => unit
  isLUB_sSup _ := ⟨top_mem_upperBounds _, bot_mem_lowerBounds _⟩
  isGLB_sInf _ := ⟨bot_mem_lowerBounds _, top_mem_upperBounds _⟩
  le_himp_iff := by intros; trivial
  himp_bot := by intros; trivial
  sdiff_le_iff := by intros; trivial
  top_sdiff := by intros; trivial

end PUnit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant620f12da2c31cf7f6ecb9d545673e39b144b8103a4022bfd40535dea50434bfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variant620f12da2c31cf7f6ecb9d545673e39b144b8103a4022bfd40535dea50434bfb.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05f8651815a37d6dee08195e751d52400e81a5a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
