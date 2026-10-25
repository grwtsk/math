# evalGround

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b7f4aa5e412b341285911c1f57317e4266567006fc05f0aa2bbbb09ec5209c45",
  "kind": "def",
  "lexical_name": "evalGround",
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
  "slug": "evalground--6bfbfcfebf7662bc03a89994",
  "source": {
    "blob": "3e96c22f2c82685468e8cf8bbc0aedc67f0a2ebb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 666,
    "line": 621,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variant10fee3bc54ea9f7d8f244d25d9385a8d6d7d1cd47ee3686476610893419f154f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6bfbfcfebf7662bc03a89994a8ee02c665db4da128ce16dadb2f8d11178b1c74",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variant10fee3bc54ea9f7d8f244d25d9385a8d6d7d1cd47ee3686476610893419f154f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b7f4aa5e412b341285911c1f57317e4266567006fc05f0aa2bbbb09ec5209c45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–666.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def evalGround (config : EvalStepConfig := {}) : Simproc := fun e =>
  match_expr e with
  | HAdd.hAdd α _ _ _ a b => evalAdd α a b
  | HSub.hSub α _ _ _ a b => evalSub α a b
  | HMul.hMul α _ _ _ a b => evalMul α a b
  | HDiv.hDiv α _ _ _ a b => evalDiv e α a b
  | HMod.hMod α _ _ _ a b => evalMod α a b
  | HPow.hPow α β _ _ a b => evalPow config.maxExponent α β a b
  | HAnd.hAnd α _ _ _ a b => evalAnd α a b
  | HXor.hXor α _ _ _ a b => evalXOr α a b
  | HOr.hOr α _ _ _ a b => evalOr α a b
  | HShiftLeft.hShiftLeft α β _ _ a b => evalShift (left := true) α β a b
  | HShiftRight.hShiftRight α β _ _ a b => evalShift (left := false) α β a b
  | Inv.inv α _ a => evalInv α a
  | Neg.neg α _ a => return skipIfUnchanged e (← evalNeg α a)
  | Complement.complement α _ a => evalComplement α a
  | Nat.gcd a b => evalBinNat Nat.gcd a b
  | Nat.succ a => evalUnaryNat (· + 1) a
  | Int.gcd a b => evalIntGcd a b
  | Int.tdiv a b => evalBinInt Int.tdiv a b
  | Int.fdiv a b => evalBinInt Int.fdiv a b
  | Int.bdiv a b => evalIntBDiv a b
  | Int.tmod a b => evalBinInt Int.tmod a b
  | Int.fmod a b => evalBinInt Int.fmod a b
  | Int.bmod a b => evalIntBMod a b
  | LE.le α _ a b => evalLE α a b
  | LT.lt α _ a b => evalLT α a b
  | Dvd.dvd α _ a b => evalDvd α a b
  | Eq α a b => evalEq α a b
  | BEq.beq α _ a b => evalBEq α a b
  | bne α _ a b => evalBNe α a b
  | Not a => evalNot a
  | BitVec.setWidth _ v x => evalSetWidth v x
  | BitVec.toNat _ a => evalBitVecToNat a
  | BitVec.ofNat n a => evalBitVecOfNat n a
  | Int8.toBitVec a => evalInt8ToBitVec a
  | Int16.toBitVec a => evalInt16ToBitVec a
  | Int32.toBitVec a => evalInt32ToBitVec a
  | Int64.toBitVec a => evalInt64ToBitVec a
  | UInt8.toBitVec a => evalUInt8ToBitVec a
  | UInt16.toBitVec a => evalUInt16ToBitVec a
  | UInt32.toBitVec a => evalUInt32ToBitVec a
  | UInt64.toBitVec a => evalUInt64ToBitVec a
  | _  => return .rfl

end Lean.Meta.Sym.Simp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variant10fee3bc54ea9f7d8f244d25d9385a8d6d7d1cd47ee3686476610893419f154f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variant10fee3bc54ea9f7d8f244d25d9385a8d6d7d1cd47ee3686476610893419f154f.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e96c22f2c82685468e8cf8bbc0aedc67f0a2ebb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
