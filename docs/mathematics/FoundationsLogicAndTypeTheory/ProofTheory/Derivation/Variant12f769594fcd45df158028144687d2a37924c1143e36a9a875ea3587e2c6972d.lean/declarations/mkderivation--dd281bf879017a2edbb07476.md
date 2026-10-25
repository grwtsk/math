# mkDerivation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e10daba653a6205c0fde0d50d14454b1e135cdf3f96857107251d1991a01f323",
  "kind": "def",
  "lexical_name": "mkDerivation",
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
  "slug": "mkderivation--dd281bf879017a2edbb07476",
  "source": {
    "blob": "51e9cd9a85fd97ce53d3698149d95a5bd09caf63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd281bf879017a2edbb07476dfcc9485eeea6cbba1eff5549b007e121181c4cb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e10daba653a6205c0fde0d50d14454b1e135cdf3f96857107251d1991a01f323`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkDerivation (f : σ → A) : Derivation R (MvPolynomial σ R) A where
  toLinearMap := mkDerivationₗ R f
  map_one_eq_zero' := mkDerivationₗ_C _ 1
  leibniz' :=
    (leibniz_iff_X (mkDerivationₗ R f) (mkDerivationₗ_C _ 1)).2 fun s i => by
      simp only [mkDerivationₗ_monomial, X, monomial_mul, one_smul, one_mul]
      rw [Finsupp.sum_add_index'] <;>
        [skip; simp; (intros; simp only [Nat.cast_add, (monomial _).map_add, add_smul])]
      rw [Finsupp.sum_single_index, Finsupp.sum_single_index] <;> [skip; simp; simp]
      rw [tsub_self, add_tsub_cancel_right, Nat.cast_one, ← C_apply, C_1, one_smul, add_comm,
        Finsupp.smul_sum]
      refine congr_arg₂ (· + ·) rfl (Finset.sum_congr rfl fun j hj => ?_); dsimp only
      rw [smul_smul, monomial_mul, one_mul, add_comm s, add_tsub_assoc_of_le]
      rwa [Finsupp.single_le_iff, Nat.succ_le_iff, pos_iff_ne_zero, ← Finsupp.mem_support_iff]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant12f769594fcd45df158028144687d2a37924c1143e36a9a875ea3587e2c6972d.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51e9cd9a85fd97ce53d3698149d95a5bd09caf63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
