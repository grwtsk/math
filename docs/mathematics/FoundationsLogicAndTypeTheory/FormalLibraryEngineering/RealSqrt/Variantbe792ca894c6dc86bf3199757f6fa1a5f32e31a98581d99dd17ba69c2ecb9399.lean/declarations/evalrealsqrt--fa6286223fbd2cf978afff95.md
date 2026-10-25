# evalRealSqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe32adb15779374cd883f14dbf01408bfdfc58217ab2e952dc7bbcdb1926a3e8",
  "kind": "def",
  "lexical_name": "evalRealSqrt",
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
  "slug": "evalrealsqrt--fa6286223fbd2cf978afff95",
  "source": {
    "blob": "5968b4578dc7656e01b2f1133d4d2aa406b3d571",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Variantbe792ca894c6dc86bf3199757f6fa1a5f32e31a98581d99dd17ba69c2ecb9399.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa6286223fbd2cf978afff954018d5dccb72caf7a2148e1807893ff4a9aeee8d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Variantbe792ca894c6dc86bf3199757f6fa1a5f32e31a98581d99dd17ba69c2ecb9399.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe32adb15779374cd883f14dbf01408bfdfc58217ab2e952dc7bbcdb1926a3e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalRealSqrt : NormNumExt where eval {u α} e := do
  match u, α, e with
  | 0, ~q(ℝ), ~q(√$x) =>
    match ← derive x with
    | .isBool _ _ => failure
    | .isNat sℝ ex pf =>
        let x := ex.natLit!
        let y := Nat.sqrt x
        unless y * y = x do failure
        have ey : Q(ℕ) := mkRawNatLit y
        have pf₁ : Q($ey * $ey = $ex) := (q(Eq.refl $ex) : Expr)
        assumeInstancesCommute
        return .isNat q($sℝ) q($ey) q(isNat_realSqrt $pf $pf₁)
    | .isNegNat _ ex pf =>
        -- Recall that `Real.sqrt` returns 0 for negative inputs
        assumeInstancesCommute
        return .isNat q(inferInstance) q(nat_lit 0) q(isNat_realSqrt_neg $pf)
    | .isRat sℝ eq en ed pf =>
        match en with
        | .app (.const ``Int.negOfNat []) (n : Q(ℕ)) =>
          assumeInstancesCommute
          return .isNat q(inferInstance) q(nat_lit 0) q(isNat_realSqrt_of_isRat_negOfNat $pf)
        | .app (.const ``Int.ofNat []) (n' : Q(ℕ)) =>
          let n : ℕ := n'.natLit!
          let d : ℕ := ed.natLit!
          let sn := Nat.sqrt n
          let sd := Nat.sqrt d
          unless sn * sn = n ∧ sd * sd = d do failure
          have esn : Q(ℕ) := mkRawNatLit sn
          have esd : Q(ℕ) := mkRawNatLit sd
          have hn : Q($esn * $esn = $n') := (q(Eq.refl $n') : Expr)
          have hd : Q($esd * $esd = $ed) := (q(Eq.refl $ed) : Expr)
          assumeInstancesCommute
          return .isRat q($sℝ) (sn / sd) _ q($esd) q(isRat_realSqrt_of_isRat_ofNat $hn $hd $pf)
        | _ => failure
  | _ => failure

/-- `norm_num` extension that evaluates the function `NNReal.sqrt`. -/
@[norm_num NNReal.sqrt _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Variantbe792ca894c6dc86bf3199757f6fa1a5f32e31a98581d99dd17ba69c2ecb9399.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Variantbe792ca894c6dc86bf3199757f6fa1a5f32e31a98581d99dd17ba69c2ecb9399.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5968b4578dc7656e01b2f1133d4d2aa406b3d571` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
