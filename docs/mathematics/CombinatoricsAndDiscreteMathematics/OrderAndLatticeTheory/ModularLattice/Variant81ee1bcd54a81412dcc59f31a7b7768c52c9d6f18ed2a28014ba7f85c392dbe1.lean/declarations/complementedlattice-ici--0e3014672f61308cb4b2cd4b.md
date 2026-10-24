# complementedLattice_Ici

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9cff504f2620a4291b34afa5d5658ac0d357947bea3e78b447a6ae019f2cb5d",
  "kind": "instance",
  "lexical_name": "complementedLattice_Ici",
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
  "slug": "complementedlattice-ici--0e3014672f61308cb4b2cd4b",
  "source": {
    "blob": "e6d3c4b0a5956c9c372ff35d1a5d3ac1e5269e79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 448,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModularLattice/Variant81ee1bcd54a81412dcc59f31a7b7768c52c9d6f18ed2a28014ba7f85c392dbe1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e3014672f61308cb4b2cd4b7b5c4d9a2ac3f5f95a103c7534a0c3eaf175dc76",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModularLattice/Variant81ee1bcd54a81412dcc59f31a7b7768c52c9d6f18ed2a28014ba7f85c392dbe1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9cff504f2620a4291b34afa5d5658ac0d357947bea3e78b447a6ae019f2cb5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance complementedLattice_Ici : ComplementedLattice (Set.Ici a) :=
  ⟨fun ⟨x, hx⟩ =>
    let ⟨y, hy⟩ := exists_isCompl x
    ⟨⟨y ⊔ a, Set.mem_Ici.2 le_sup_right⟩, by
      constructor
      · rw [disjoint_iff_inf_le]
        change x ⊓ (y ⊔ a) ≤ a
        -- improve lattice subtype API
        rw [← inf_sup_assoc_of_le _ (Set.mem_Ici.1 hx), hy.1.eq_bot, bot_sup_eq]
      · rw [codisjoint_iff_le_sup]
        change ⊤ ≤ x ⊔ (y ⊔ a)
        -- improve lattice subtype API
        rw [← sup_assoc]
        exact le_trans hy.2.top_le le_sup_left⟩⟩
#align is_modular_lattice.complemented_lattice_Ici IsModularLattice.complementedLattice_Ici

end ComplementedLattice

end IsModularLattice
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModularLattice/Variant81ee1bcd54a81412dcc59f31a7b7768c52c9d6f18ed2a28014ba7f85c392dbe1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModularLattice/Variant81ee1bcd54a81412dcc59f31a7b7768c52c9d6f18ed2a28014ba7f85c392dbe1.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6d3c4b0a5956c9c372ff35d1a5d3ac1e5269e79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
