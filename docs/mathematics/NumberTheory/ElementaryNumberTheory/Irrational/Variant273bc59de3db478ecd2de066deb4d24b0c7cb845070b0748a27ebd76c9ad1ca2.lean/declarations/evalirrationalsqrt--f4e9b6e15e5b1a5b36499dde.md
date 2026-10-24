# evalIrrationalSqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48d339de01c0b341a5e3a1a9244935f8fea85a8a511057c4c51ead3018e8a78a",
  "kind": "def",
  "lexical_name": "evalIrrationalSqrt",
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
  "slug": "evalirrationalsqrt--f4e9b6e15e5b1a5b36499dde",
  "source": {
    "blob": "103159d7045d05f2907435acfc8c22bbd9b4c425",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 330,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4e9b6e15e5b1a5b36499ddeec111ac5aab1556f6f47f7112a88aaa834dc7e22",
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

Occurrence: `declaration:48d339de01c0b341a5e3a1a9244935f8fea85a8a511057c4c51ead3018e8a78a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalIrrationalSqrt : NormNumExt where eval {u α} e := do
  let 0 := u | failure
  let ~q(Prop) := α | failure
  let ~q(Irrational (√$x)) := e | failure
  match ← derive x with
  | .isNat sℝ ex pf =>
    let cert ← findNotPowerCertificate ex q(nat_lit 2)
    assumeInstancesCommute
    return .isTrue q(irrational_sqrt_nat $pf $cert.pf_left $cert.pf_right)
  | .isRat sℝ eq en ed pf =>
    let ~q(Int.ofNat $n') := en | failure
    let ⟨g, pf_coprime⟩ := proveNatGCD n' ed
    if g.natLit! != 1 then failure
    let _ : $g =Q 1 := ⟨⟩
    try
      let numCert ← findNotPowerCertificate n' q(nat_lit 2)
      assumeInstancesCommute
      return .isTrue q(irrational_sqrt_rat_of_num $pf $pf_coprime $numCert.pf_left
        $numCert.pf_right)
    catch _ =>
      let denCert ← findNotPowerCertificate ed q(nat_lit 2)
      assumeInstancesCommute
      return .isTrue q(irrational_sqrt_rat_of_den $pf $pf_coprime $denCert.pf_left
        $denCert.pf_right)
  | _ => failure

end NormNum

end Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `103159d7045d05f2907435acfc8c22bbd9b4c425` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
