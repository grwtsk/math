# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:acac74cc7fa849f8e80e4f25ba3a1c48b9cb3d2a11540e99a0500752dbd7864e",
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
  "slug": "instance--4b79a1aa13deeff5c147bd96",
  "source": {
    "blob": "61258d1cf3163882137c4b64371e5b87a861a1e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 224,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b79a1aa13deeff5c147bd9627953948e5e29b83abe01423d5c6460dd63c60c5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:acac74cc7fa849f8e80e4f25ba3a1c48b9cb3d2a11540e99a0500752dbd7864e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : BooleanAlgebra (Regular α) :=
  { Regular.lattice, Regular.boundedOrder, Regular.himp,
    Regular.hasCompl with
    le_sup_inf := fun a b c =>
      coe_le_coe.1 <| by
        dsimp
        rw [sup_inf_left, compl_compl_inf_distrib]
    inf_compl_le_bot := fun a => coe_le_coe.1 <| disjoint_iff_inf_le.1 disjoint_compl_right
    top_le_sup_compl := fun a =>
      coe_le_coe.1 <| by
        dsimp
        rw [compl_sup, inf_compl_eq_bot, compl_bot]
    himp_eq := fun a b =>
      coe_injective
        (by
          dsimp
          rw [compl_sup, a.prop.eq]
          refine' eq_of_forall_le_iff fun c => le_himp_iff.trans _
          rw [le_compl_iff_disjoint_right, disjoint_left_comm]
          rw [b.prop.disjoint_compl_left_iff]) }

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61258d1cf3163882137c4b64371e5b87a861a1e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
