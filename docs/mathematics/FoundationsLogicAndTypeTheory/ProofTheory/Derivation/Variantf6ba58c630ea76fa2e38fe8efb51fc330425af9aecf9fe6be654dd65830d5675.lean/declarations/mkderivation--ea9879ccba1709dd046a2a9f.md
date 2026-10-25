# mkDerivation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca02e9d002a52b26ed36e470a49126c48f3dd79d9023a5bbab8564ac93eade7e",
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
  "slug": "mkderivation--ea9879ccba1709dd046a2a9f",
  "source": {
    "blob": "dec68ddfe9083720b4c5d565c87d7a2dadbf05d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantf6ba58c630ea76fa2e38fe8efb51fc330425af9aecf9fe6be654dd65830d5675.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea9879ccba1709dd046a2a9ff040206ae4c716eb911f53b6fb44cb2fa0a54838",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantf6ba58c630ea76fa2e38fe8efb51fc330425af9aecf9fe6be654dd65830d5675.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca02e9d002a52b26ed36e470a49126c48f3dd79d9023a5bbab8564ac93eade7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkDerivation (f : σ → A) : Derivation R (MvPolynomial σ R) A where
  toLinearMap := mkDerivationₗ R f
  map_one_eq_zero' := mkDerivationₗ_C _ 1
  leibniz' :=
    (leibniz_iff_X (mkDerivationₗ R f) (mkDerivationₗ_C _ 1)).2 fun s i => by
      simp only [mkDerivationₗ_monomial, X, monomial_mul_monomial, one_smul, one_mul]
      rw [Finsupp.sum_add_index'] <;>
        [skip; simp; (intros; simp only [Nat.cast_add, (monomial _).map_add, add_smul])]
      rw [Finsupp.sum_single_index, Finsupp.sum_single_index] <;> [skip; simp; simp]
      rw [tsub_self, add_tsub_cancel_right, Nat.cast_one, ← C_apply, C_1, one_smul, add_comm,
        Finsupp.smul_sum]
      refine congr_arg₂ (· + ·) rfl (Finset.sum_congr rfl fun j hj => ?_); dsimp only
      rw [smul_smul, monomial_mul_monomial, one_mul, add_comm s, add_tsub_assoc_of_le]
      rwa [Finsupp.single_le_iff, Nat.succ_le_iff, pos_iff_ne_zero, ← Finsupp.mem_support_iff]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantf6ba58c630ea76fa2e38fe8efb51fc330425af9aecf9fe6be654dd65830d5675.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantf6ba58c630ea76fa2e38fe8efb51fc330425af9aecf9fe6be654dd65830d5675.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dec68ddfe9083720b4c5d565c87d7a2dadbf05d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
