# MulAction.prodEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54dfbf8862c94231e8290cc698cab1d50ae6f7cf27dfc91f91eeef4ee026401c",
  "kind": "def",
  "lexical_name": "MulAction.prodEquiv",
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
  "slug": "mulaction-prodequiv--3666402672ad29d9ae5b6904",
  "source": {
    "blob": "9e9dcb721f1ee9b5b6668b61b1d7a83fe2a2c2fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 140,
    "path": "GRWTSK/Algebra/GroupTheory/Prod/Variant152f5209af32300f4d9078c74074b832f662021436ed58cf72a509fb08d4b59a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3666402672ad29d9ae5b690425e44b3e93e3266b8835ae40b9517857dd09857b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Prod/Variant152f5209af32300f4d9078c74074b832f662021436ed58cf72a509fb08d4b59a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54dfbf8862c94231e8290cc698cab1d50ae6f7cf27dfc91f91eeef4ee026401c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MulAction.prodEquiv :
    MulAction (M × N) α ≃ Σ' (_ : MulAction M α) (_ : MulAction N α), SMulCommClass M N α where
  toFun _ :=
    letI instM := MulAction.compHom α (.inl M N)
    letI instN := MulAction.compHom α (.inr M N)
    ⟨instM, instN,
    { smul_comm := fun m n a ↦ by
        change (m, (1 : N)) • ((1 : M), n) • a = ((1 : M), n) • (m, (1 : N)) • a
        simp_rw [smul_smul, Prod.mk_mul_mk, mul_one, one_mul] }⟩
  invFun _insts :=
    letI := _insts.1; letI := _insts.2.1; have := _insts.2.2
    MulAction.prodOfSMulCommClass M N α
  left_inv := by
    rintro ⟨_⟩; dsimp only; ext ⟨m, n⟩ a
    change (m, (1 : N)) • ((1 : M), n) • a = _
    rw [← mul_smul, Prod.mk_mul_mk, mul_one, one_mul]; rfl
  right_inv := by
    rintro ⟨hM, hN, -⟩
    dsimp only; congr 1
    · ext m a; (conv_rhs => rw [← hN.one_smul a]); rfl
    congr 1
    · funext; congr; ext m a; (conv_rhs => rw [← hN.one_smul a]); rfl
    · ext n a; (conv_rhs => rw [← hM.one_smul (SMul.smul n a)]); rfl
    · exact proof_irrel_heq ..

end Action_by_Prod
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Prod/Variant152f5209af32300f4d9078c74074b832f662021436ed58cf72a509fb08d4b59a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Prod/Variant152f5209af32300f4d9078c74074b832f662021436ed58cf72a509fb08d4b59a.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e9dcb721f1ee9b5b6668b61b1d7a83fe2a2c2fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
