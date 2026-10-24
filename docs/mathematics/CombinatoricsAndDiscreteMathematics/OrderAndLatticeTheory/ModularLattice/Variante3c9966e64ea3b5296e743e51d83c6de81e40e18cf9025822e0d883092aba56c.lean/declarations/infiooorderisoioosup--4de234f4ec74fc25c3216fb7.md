# infIooOrderIsoIooSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb69ac9fa941020cf73ccb0cdb8e5c47bfe6ece971ba0ec8539348f282c49adb",
  "kind": "def",
  "lexical_name": "infIooOrderIsoIooSup",
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
  "slug": "infiooorderisoioosup--4de234f4ec74fc25c3216fb7",
  "source": {
    "blob": "3a2baebfcf0f74b5647e8e0cbc02624756f5fd53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 261,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModularLattice/Variante3c9966e64ea3b5296e743e51d83c6de81e40e18cf9025822e0d883092aba56c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4de234f4ec74fc25c3216fb795897bd8b10b3b38fc8ee3f96998eff1a510f41e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModularLattice/Variante3c9966e64ea3b5296e743e51d83c6de81e40e18cf9025822e0d883092aba56c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb69ac9fa941020cf73ccb0cdb8e5c47bfe6ece971ba0ec8539348f282c49adb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def infIooOrderIsoIooSup (a b : α) : Ioo (a ⊓ b) a ≃o Ioo b (a ⊔ b) where
  toFun c :=
    ⟨c ⊔ b,
      le_sup_right.trans_lt <|
        sup_strictMonoOn_Icc_inf (left_mem_Icc.2 inf_le_left) (Ioo_subset_Icc_self c.2) c.2.1,
      sup_strictMonoOn_Icc_inf (Ioo_subset_Icc_self c.2) (right_mem_Icc.2 inf_le_left) c.2.2⟩
  invFun c :=
    ⟨a ⊓ c,
      inf_strictMonoOn_Icc_sup (left_mem_Icc.2 le_sup_right) (Ioo_subset_Icc_self c.2) c.2.1,
      inf_le_left.trans_lt' <|
        inf_strictMonoOn_Icc_sup (Ioo_subset_Icc_self c.2) (right_mem_Icc.2 le_sup_right) c.2.2⟩
  left_inv c :=
    Subtype.ext <| by
      dsimp
      rw [sup_comm, ← inf_sup_assoc_of_le _ c.prop.2.le, sup_eq_right.2 c.prop.1.le]
  right_inv c :=
    Subtype.ext <| by
      dsimp
      rw [inf_comm, inf_sup_assoc_of_le _ c.prop.1.le, inf_eq_left.2 c.prop.2.le]
  map_rel_iff' := @fun c d =>
    @OrderIso.le_iff_le _ _ _ _ (infIccOrderIsoIccSup _ _) ⟨c.1, Ioo_subset_Icc_self c.2⟩
      ⟨d.1, Ioo_subset_Icc_self d.2⟩

/-- The diamond isomorphism between the open intervals `(a ⊓ b, b)` and `(a, a ⊔ b)`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModularLattice/Variante3c9966e64ea3b5296e743e51d83c6de81e40e18cf9025822e0d883092aba56c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModularLattice/Variante3c9966e64ea3b5296e743e51d83c6de81e40e18cf9025822e0d883092aba56c.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a2baebfcf0f74b5647e8e0cbc02624756f5fd53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
