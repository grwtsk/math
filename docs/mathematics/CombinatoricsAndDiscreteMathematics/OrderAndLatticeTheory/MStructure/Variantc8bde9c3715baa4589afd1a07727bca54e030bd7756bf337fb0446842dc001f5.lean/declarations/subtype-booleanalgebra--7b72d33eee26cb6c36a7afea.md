# Subtype.BooleanAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b56b465db0fa394a5fbec57511a5e4bf66b7afc95e82ba5ca59860db62eb16b0",
  "kind": "instance",
  "lexical_name": "Subtype.BooleanAlgebra",
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
  "slug": "subtype-booleanalgebra--7b72d33eee26cb6c36a7afea",
  "source": {
    "blob": "2dfc3f920e06e2787afa6cf9b4d00209c4185ac2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 300,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b72d33eee26cb6c36a7afeae4527d415c28c62a2cf3222f517544ceca9f487f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b56b465db0fa394a5fbec57511a5e4bf66b7afc95e82ba5ca59860db62eb16b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Subtype.BooleanAlgebra [FaithfulSMul M X] :
    BooleanAlgebra { P : M // IsLprojection X P } :=
  { IsLprojection.Subtype.hasCompl,
    IsLprojection.Subtype.sdiff,
    IsLprojection.Subtype.boundedOrder with
    inf_compl_le_bot := fun P =>
      (Subtype.ext (by rw [coe_inf, coe_compl, coe_bot, ← coe_compl, mul_compl_self])).le
    top_le_sup_compl := fun P =>
      (Subtype.ext
        (by
          rw [coe_top, coe_sup, coe_compl, add_sub_cancel, ← coe_compl, mul_compl_self,
            sub_zero])).le
    sdiff_eq := fun P Q => Subtype.ext <| by rw [coe_sdiff, ← coe_compl, coe_inf] }

end IsLprojection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dfc3f920e06e2787afa6cf9b4d00209c4185ac2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
