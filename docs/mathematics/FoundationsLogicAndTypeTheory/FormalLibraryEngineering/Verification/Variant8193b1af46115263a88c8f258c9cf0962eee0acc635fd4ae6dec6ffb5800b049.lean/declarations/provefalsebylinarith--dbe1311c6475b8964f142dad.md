# proveFalseByLinarith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c6f9b6161da043c86004c6af31882561ab39c03a5fff6a13b38eb2da54d0a3e",
  "kind": "def",
  "lexical_name": "proveFalseByLinarith",
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
  "slug": "provefalsebylinarith--dbe1311c6475b8964f142dad",
  "source": {
    "blob": "08e45031d6c5f82a5f1fece752a0adc1ce918236",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 190,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant8193b1af46115263a88c8f258c9cf0962eee0acc635fd4ae6dec6ffb5800b049.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbe1311c6475b8964f142dadffd2a88d5c9e50338b321a30e6f2787f194e282a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant8193b1af46115263a88c8f258c9cf0962eee0acc635fd4ae6dec6ffb5800b049.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c6f9b6161da043c86004c6af31882561ab39c03a5fff6a13b38eb2da54d0a3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def proveFalseByLinarith (transparency : TransparencyMode) (oracle : CertificateOracle)
    (discharger : TacticM Unit) : MVarId → List Expr → MetaM Expr
  | _, [] => throwError "no args to linarith"
  | g, l@(h::_) => do
      Lean.Core.checkSystem decl_name%.toString
      -- for the elimination to work properly, we must add a proof of `-1 < 0` to the list,
      -- along with negated equality proofs.
      let l' ← detailTrace "addNegEqProofs" <| addNegEqProofs l
      let inputs ← detailTrace "mkNegOneLtZeroProof" <|
        return (← mkNegOneLtZeroProof (← typeOfIneqProof h))::l'.reverse
      trace[linarith.detail] "inputs:{indentD <| toMessageData (← inputs.mapM inferType)}"
      let (comps, max_var) ← detailTrace "linearFormsAndMaxVar" <|
        linearFormsAndMaxVar transparency inputs
      trace[linarith.detail] "comps:{indentD <| toMessageData comps}"
      -- perform the elimination and fail if no contradiction is found.
      let certificate : Std.HashMap Nat Nat ←
        withTraceNode `linarith (return m!"{exceptEmoji ·} Invoking oracle") do
          let certificate ←
            try
              oracle.produceCertificate comps max_var
            catch e =>
              trace[linarith] e.toMessageData
              throwError "linarith failed to find a contradiction"
          trace[linarith] "found a contradiction: {certificate.toList}"
          return certificate
      let (sm, zip) ←
        withTraceNode `linarith (return m!"{exceptEmoji ·} Building final expression") do
          let enum_inputs := inputs.zipIdx
          -- construct a list pairing nonzero coeffs with the proof of their corresponding
          -- comparison
          let zip := enum_inputs.filterMap fun ⟨e, n⟩ => (certificate[n]?).map (e, ·)
          let mls ← zip.mapM fun ⟨e, n⟩ => do mulExpr n (← leftOfIneqProof e)
          -- `sm` is the sum of input terms, scaled to cancel out all variables.
          let sm ← addExprs mls
          -- let sm ← instantiateMVars sm
          trace[linarith] "{indentD sm}\nshould be both 0 and negative"
          return (sm, zip)
      -- we prove that `sm = 0`, typically with `ring`.
      let sm_eq_zero ← detailTrace "proveEqZeroUsing" <| proveEqZeroUsing discharger sm
      -- we also prove that `sm < 0`
      let sm_lt_zero ← detailTrace "mkLTZeroProof" <| mkLTZeroProof zip
      detailTrace "Linarith.lt_irrefl" do
        -- this is a contradiction.
        let pftp ← inferType sm_lt_zero
        let ⟨_, nep, _⟩ ← g.rewrite pftp sm_eq_zero
        let pf' ← mkAppM ``Eq.mp #[nep, sm_lt_zero]
        mkAppM ``Linarith.lt_irrefl #[pf']
where
  /-- Log `f` under `linarith.detail`, with exception emojis and the provided name. -/
  detailTrace {α} (s : String) (f : MetaM α) : MetaM α :=
    withTraceNode `linarith.detail (return m!"{exceptEmoji ·} {s}") f

end Linarith
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant8193b1af46115263a88c8f258c9cf0962eee0acc635fd4ae6dec6ffb5800b049.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant8193b1af46115263a88c8f258c9cf0962eee0acc635fd4ae6dec6ffb5800b049.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08e45031d6c5f82a5f1fece752a0adc1ce918236` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
