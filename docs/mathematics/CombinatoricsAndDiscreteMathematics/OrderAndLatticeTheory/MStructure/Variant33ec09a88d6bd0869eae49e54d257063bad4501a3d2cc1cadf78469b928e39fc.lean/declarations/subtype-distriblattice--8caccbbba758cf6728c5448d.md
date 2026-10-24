# Subtype.distribLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f64433af390dca7c0a6420c8998097691ff3d0ef1981dc2113172f670677de8",
  "kind": "instance",
  "lexical_name": "Subtype.distribLattice",
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
  "slug": "subtype-distriblattice--8caccbbba758cf6728c5448d",
  "source": {
    "blob": "14216b7458bc00395640c05f458955cda19a98c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 283,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant33ec09a88d6bd0869eae49e54d257063bad4501a3d2cc1cadf78469b928e39fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8caccbbba758cf6728c5448da5b8738b80219664bc783024c4ea308d5e8eca5a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant33ec09a88d6bd0869eae49e54d257063bad4501a3d2cc1cadf78469b928e39fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f64433af390dca7c0a6420c8998097691ff3d0ef1981dc2113172f670677de8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Subtype.distribLattice [FaithfulSMul M X] :
    DistribLattice { P : M // IsLprojection X P } where
  le_sup_inf P Q R := by
    have e₁ : ↑((P ⊔ Q) ⊓ (P ⊔ R)) = ↑P + ↑Q * (R : M) * ↑Pᶜ := by
      rw [coe_inf, coe_sup, coe_sup, ← add_sub, ← add_sub, ← compl_mul, ← compl_mul, add_mul,
        mul_add, (Pᶜ.prop.commute Q.prop).eq, mul_add, ← mul_assoc, mul_assoc (Q : M),
        (Pᶜ.prop.commute P.prop).eq, mul_compl_self, zero_mul, mul_zero,
        zero_add, add_zero, ← mul_assoc, mul_assoc (Q : M), P.prop.proj.eq, Pᶜ.prop.proj.eq,
        mul_assoc, (Pᶜ.prop.commute R.prop).eq, ← mul_assoc]
    have e₂ : ↑((P ⊔ Q) ⊓ (P ⊔ R)) * ↑(P ⊔ Q ⊓ R) = (P : M) + ↑Q * ↑R * ↑Pᶜ := by
      rw [coe_inf, coe_sup, coe_sup, coe_sup, ← add_sub, ← add_sub, ← add_sub, ← compl_mul, ←
        compl_mul, ← compl_mul, (Pᶜ.prop.commute (Q ⊓ R).prop).eq, coe_inf, mul_assoc,
        distrib_lattice_lemma, (Q.prop.commute R.prop).eq, distrib_lattice_lemma]
    rw [le_def, e₁, coe_inf, e₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant33ec09a88d6bd0869eae49e54d257063bad4501a3d2cc1cadf78469b928e39fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant33ec09a88d6bd0869eae49e54d257063bad4501a3d2cc1cadf78469b928e39fc.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14216b7458bc00395640c05f458955cda19a98c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
