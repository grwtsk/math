# _root_.GRWTSK.Algebra.SimpResult.Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.Lean.Grind.CommRing.Poly.simpM?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b34c5b24610874b39704a2000a48cb83103b60e543f79a9a32a33aa9cd605afd",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.SimpResult.Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.Lean.Grind.CommRing.Poly.simpM?",
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
  "slug": "root-grwtsk-algebra-simpresult-variant0bacb3263503365ec3b86ca1e41e6864d5--a67d8afbf9db17a50e2433ce",
  "source": {
    "blob": "1a54bb16a5618a26f1fc0cab87c961d30aa7cc4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 173,
    "path": "GRWTSK/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a67d8afbf9db17a50e2433ce0bb603a08e8c5187c80d0f88becf9e09b99e51c8",
  "verification": {
    "reference": "docs/verification/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b34c5b24610874b39704a2000a48cb83103b60e543f79a9a32a33aa9cd605afd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.SimpResult.Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.Lean.Grind.CommRing.Poly.simpM? (p₁ p₂ : Poly) : RingM (Option SimpResult) := do
  match p₂ with
  | .add k₂' m₂ p₂ =>
    let checkCoeff := (← checkCoeffDvd) && !(← noZeroDivisors)
    let rec go? (p₁ : Poly) : RingM (Option SimpResult) := do
      match p₁ with
      | .add k₁' m₁ p₁ =>
        if m₂.divides m₁ && (!checkCoeff || k₂' ∣ k₁') then
          let m₂ := m₁.div m₂
          let g  := Nat.gcd k₁'.natAbs k₂'.natAbs
          let k₁ := k₂'/g
          let k₂ := -k₁'/g
          let p  ← (← p₂.mulMonM k₂ m₂).combineM (← p₁.mulConstM k₁)
          return some { p, k₁, k₂, m₂ }
        else if let some r ← go? p₁ then
          if let some char ← nonzeroChar? then
            let k := (k₁'*r.k₁) % char
            if k == 0 then
              return some r
            else
              return some { r with p := .add k m₁ r.p }
          else
            return some { r with p := .add (k₁'*r.k₁) m₁ r.p }
        else
          return none
      | .num _ => return none
    go? p₁
  | _ => return none

end Lean.Meta.Grind.Arith.CommRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a54bb16a5618a26f1fc0cab87c961d30aa7cc4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
