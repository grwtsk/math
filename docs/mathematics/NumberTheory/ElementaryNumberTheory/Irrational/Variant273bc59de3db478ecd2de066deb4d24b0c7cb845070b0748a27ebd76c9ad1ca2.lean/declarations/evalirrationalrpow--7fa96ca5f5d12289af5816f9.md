# evalIrrationalRpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ae3b52176050f76ccf09a158f1e834f7635cd2b6d0797527e475a8680f1a05e",
  "kind": "def",
  "lexical_name": "evalIrrationalRpow",
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
  "slug": "evalirrationalrpow--7fa96ca5f5d12289af5816f9",
  "source": {
    "blob": "103159d7045d05f2907435acfc8c22bbd9b4c425",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 294,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fa96ca5f5d12289af5816f97701ad53b90b7203e86ed15d5e1fc147e6855bf0",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ae3b52176050f76ccf09a158f1e834f7635cd2b6d0797527e475a8680f1a05e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalIrrationalRpow : NormNumExt where eval {u α} e := do
  let 0 := u | failure
  let ~q(Prop) := α | failure
  let ~q(Irrational (($x : ℝ) ^ ($y : ℝ))) := e | failure
  let .isRat sℝ _ y_num y_den y_isRat ← derive y | failure
  let ~q(Int.ofNat $y_num') := y_num | failure
  let ⟨gy, hy_coprime⟩ := proveNatGCD y_num' y_den
  if gy.natLit! != 1 then failure
  let _ : $gy =Q 1 := ⟨⟩
  match ← derive x with
  | .isNat sℝ ex x_isNat =>
    let cert ← findNotPowerCertificate q($ex) y_den
    assumeInstancesCommute
    return .isTrue q(irrational_rpow_nat_rat $x_isNat $y_isRat $hy_coprime
      $cert.pf_left $cert.pf_right)
  | .isRat sℝ _ x_num x_den x_isRat =>
    let ~q(Int.ofNat $x_num') := x_num | failure
    let ⟨gx, hx_coprime⟩ := proveNatGCD x_num' x_den
    if gx.natLit! != 1 then failure
    let _ : $gx =Q 1 := ⟨⟩
    let hx_isRat' : Q(IsRat $x (Int.ofNat $x_num') $x_den) := x_isRat
    let hy_isRat' : Q(IsRat $y (Int.ofNat $y_num') $y_den) := y_isRat
    try
      let numCert ← findNotPowerCertificate q($x_num') y_den
      assumeInstancesCommute
      return .isTrue q(irrational_rpow_rat_rat_of_num $hx_isRat' $hy_isRat'
        $hx_coprime $hy_coprime $numCert.pf_left $numCert.pf_right)
    catch _ =>
      let denCert ← findNotPowerCertificate q($x_den) y_den
      assumeInstancesCommute
      return .isTrue q(irrational_rpow_rat_rat_of_den $hx_isRat' $hy_isRat'
        $hx_coprime $hy_coprime $denCert.pf_left $denCert.pf_right)
  | _ => failure

/-- `norm_num` extension that proves `Irrational √x` for rational `x`. -/
@[norm_num Irrational (Real.sqrt _)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `103159d7045d05f2907435acfc8c22bbd9b4c425` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
