# checkGuessName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:305f164c8ed3ae79df48472267ee24e915a42a261bfce54075e21a352f502848",
  "kind": "def",
  "lexical_name": "checkGuessName",
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
  "slug": "checkguessname--50b5d3365989cc6bcd10fde0",
  "source": {
    "blob": "2fabdae49e9abb464a9e9c1eaeff99852aad0cdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 347,
    "path": "GRWTSK/Algebra/GroupTheory/ToAdditive/Variant7fcbe4316fac04da3f349894ae4676b425f64cf49ec04e0efd18f1680ad4c2c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50b5d3365989cc6bcd10fde088facbb9385eb50a2455b7b74748ac60fcbb0839",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ToAdditive/Variant7fcbe4316fac04da3f349894ae4676b425f64cf49ec04e0efd18f1680ad4c2c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:305f164c8ed3ae79df48472267ee24e915a42a261bfce54075e21a352f502848`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkGuessName (s t : String) : Elab.Command.CommandElabM Unit :=
  unless guessName s == t do throwError "failed: {guessName s} != {t}"

run_cmd
  checkGuessName "HMul_Eq_LEOne_Conj₂MulLT'" "HAdd_Eq_Nonpos_Conj₂AddLT'"
  checkGuessName "OneMulSMulInvDivPow"       "ZeroAddVAddNegSubNSMul"
  checkGuessName "ProdFinprodNPowZPow"       "SumFinsumNSMulZSMul"

  -- The current design swaps all instances of `Comm`+`Add` in order to have
  -- `AddCommMonoid` instead of `CommAddMonoid`.
  checkGuessName "comm_mul_CommMul_commMul" "comm_add_AddComm_addComm"
  checkGuessName "mul_comm_MulComm_mulComm" "add_comm_AddComm_addComm"
  checkGuessName "mul_single_eq_same" "single_eq_same"
  checkGuessName "mul_support" "support"
  checkGuessName "mul_tsupport" "tsupport"
  checkGuessName "mul_indicator" "indicator"

  checkGuessName "CommMonoid" "AddCommMonoid"
  checkGuessName "commMonoid" "addCommMonoid"

  checkGuessName "CancelCommMonoid" "AddCancelCommMonoid"
  checkGuessName "cancelCommMonoid" "addCancelCommMonoid"
  checkGuessName "CancelMonoid" "AddCancelMonoid"
  checkGuessName "cancelMonoid" "addCancelMonoid"
  checkGuessName "RightCancelMonoid" "AddRightCancelMonoid"
  checkGuessName "rightCancelMonoid" "addRightCancelMonoid"
  checkGuessName "LeftCancelMonoid" "AddLeftCancelMonoid"
  checkGuessName "leftCancelMonoid" "addLeftCancelMonoid"

  checkGuessName "IsLeftRegular" "IsAddLeftRegular"
  checkGuessName "isRightRegular" "isAddRightRegular"
  checkGuessName "IsRegular" "IsAddRegular"

  checkGuessName "LTOne_LEOne_OneLE_OneLT" "Neg_Nonpos_Nonneg_Pos"
  checkGuessName "LTHMulHPowLEHDiv" "LTHAddHSMulLEHSub"
  checkGuessName "OneLEHMul" "NonnegHAdd"
  checkGuessName "OneLTHPow" "PosHSMul"
  checkGuessName "OneLTPow" "PosNSMul"
  checkGuessName "instCoeTCOneHom" "instCoeTCZeroHom"
  checkGuessName "instCoeTOneHom" "instCoeTZeroHom"
  checkGuessName "instCoeOneHom" "instCoeZeroHom"
  checkGuessName "invFun_eq_symm" "invFun_eq_symm"
  checkGuessName "MulEquiv.symmInvFun" "AddEquiv.symmInvFun"

end guessName

end Test

run_cmd Elab.Command.liftCoreM <| ToAdditive.insertTranslation `localize `add_localize

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ToAdditive/Variant7fcbe4316fac04da3f349894ae4676b425f64cf49ec04e0efd18f1680ad4c2c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ToAdditive/Variant7fcbe4316fac04da3f349894ae4676b425f64cf49ec04e0efd18f1680ad4c2c3.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fabdae49e9abb464a9e9c1eaeff99852aad0cdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
