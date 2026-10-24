# instDistribLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32dc3f1d2c07e751ea7f21fb950b4c926c69e9f84d355f1d11302266bb84d79f",
  "kind": "instance",
  "lexical_name": "instDistribLattice",
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
  "slug": "instdistriblattice--89c97c3246e8ceaa908865b1",
  "source": {
    "blob": "8632f955042743f60a840c9aef14a280faeee97f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 227,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89c97c3246e8ceaa908865b13c70b76ee8d6e4f1af24f7d0cd244d59a128df23",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32dc3f1d2c07e751ea7f21fb950b4c926c69e9f84d355f1d11302266bb84d79f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instDistribLattice : DistribLattice (Booleanisation α) where
  inf x y := x ⊓ y
  inf_le_left _ _ := inf_le_left
  inf_le_right _ _ := inf_le_right
  le_inf _ _ _ := le_inf
  le_sup_inf
    | lift _, lift _, lift _ => LE.lift le_sup_inf
    | lift a, lift b, comp c => LE.lift <| by simp [sup_left_comm, sup_comm, sup_assoc]
    | lift a, comp b, lift c => LE.lift <| by
      simp [sup_left_comm (a := b \ a), sup_comm (a := b \ a)]
    | lift a, comp b, comp c => LE.comp <| by rw [sup_sdiff]
    | comp a, lift b, lift c => LE.comp <| by rw [sdiff_inf]
    | comp a, lift b, comp c => LE.comp <| by rw [sdiff_sdiff_right']
    | comp a, comp b, lift c => LE.comp <| by rw [sdiff_sdiff_right', sup_comm]
    | comp _, comp _, comp _ => LE.comp (inf_sup_left _ _ _).le

-- The linter significantly hinders readability here.
set_option linter.unusedVariables false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8632f955042743f60a840c9aef14a280faeee97f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
