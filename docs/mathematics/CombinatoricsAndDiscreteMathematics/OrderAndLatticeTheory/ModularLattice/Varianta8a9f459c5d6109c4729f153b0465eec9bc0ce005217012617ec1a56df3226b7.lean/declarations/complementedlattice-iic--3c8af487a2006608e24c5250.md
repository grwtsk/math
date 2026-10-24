# complementedLattice_Iic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dacab8a125cebd4bfcc7d227fb6d88d9c7ad2864f57e8835266127998fa099c4",
  "kind": "instance",
  "lexical_name": "complementedLattice_Iic",
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
  "slug": "complementedlattice-iic--3c8af487a2006608e24c5250",
  "source": {
    "blob": "932a3e672f9103387ef015400b5f7b6ddebc70e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 395,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModularLattice/Varianta8a9f459c5d6109c4729f153b0465eec9bc0ce005217012617ec1a56df3226b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c8af487a2006608e24c525012acfa8e45aa115303a371a86c2ceaa26fc75d5f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModularLattice/Varianta8a9f459c5d6109c4729f153b0465eec9bc0ce005217012617ec1a56df3226b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dacab8a125cebd4bfcc7d227fb6d88d9c7ad2864f57e8835266127998fa099c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance complementedLattice_Iic : ComplementedLattice (Set.Iic a) :=
  ⟨fun ⟨x, hx⟩ =>
    let ⟨y, hy⟩ := exists_isCompl x
    ⟨⟨y ⊓ a, Set.mem_Iic.2 inf_le_right⟩, by
      constructor
      · rw [disjoint_iff_inf_le]
        change x ⊓ (y ⊓ a) ≤ ⊥
        -- improve lattice subtype API
        rw [← inf_assoc]
        exact le_trans inf_le_left hy.1.le_bot
      · rw [codisjoint_iff_le_sup]
        change a ≤ x ⊔ y ⊓ a
        -- improve lattice subtype API
        rw [← sup_inf_assoc_of_le _ (Set.mem_Iic.1 hx), hy.2.eq_top, top_inf_eq]⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModularLattice/Varianta8a9f459c5d6109c4729f153b0465eec9bc0ce005217012617ec1a56df3226b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModularLattice/Varianta8a9f459c5d6109c4729f153b0465eec9bc0ce005217012617ec1a56df3226b7.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `932a3e672f9103387ef015400b5f7b6ddebc70e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
