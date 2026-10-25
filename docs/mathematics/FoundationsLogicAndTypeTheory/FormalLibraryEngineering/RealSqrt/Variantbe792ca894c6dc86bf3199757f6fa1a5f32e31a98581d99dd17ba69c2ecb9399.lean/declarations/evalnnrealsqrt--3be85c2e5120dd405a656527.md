# evalNNRealSqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1cf428f28f229299169bc55d1b6914dd173f960db36d7d24843d9d401b109597",
  "kind": "def",
  "lexical_name": "evalNNRealSqrt",
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
  "slug": "evalnnrealsqrt--3be85c2e5120dd405a656527",
  "source": {
    "blob": "5968b4578dc7656e01b2f1133d4d2aa406b3d571",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Variantbe792ca894c6dc86bf3199757f6fa1a5f32e31a98581d99dd17ba69c2ecb9399.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3be85c2e5120dd405a656527c87e40728dca873041a0de498e593b2b62dc0692",
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

Occurrence: `declaration:1cf428f28f229299169bc55d1b6914dd173f960db36d7d24843d9d401b109597`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalNNRealSqrt : NormNumExt where eval {u α} e := do
  match u, α, e with
  | 0, ~q(NNReal), ~q(NNReal.sqrt $x) =>
    match ← derive x with
    | .isBool _ _ => failure
    | .isNat sℝ ex pf =>
        let x := ex.natLit!
        let y := Nat.sqrt x
        unless y * y = x do failure
        have ey : Q(ℕ) := mkRawNatLit y
        have pf₁ : Q($ey * $ey = $ex) := (q(Eq.refl $ex) : Expr)
        assumeInstancesCommute
        return .isNat sℝ ey q(isNat_nnrealSqrt $pf $pf₁)
    | .isNegNat _ ex pf => failure
    | .isRat sℝ eq en ed pf =>
        -- `IsRat` only works on types with a `Ring` instance, so it can't work on `ℝ≥0`.
        failure
  | _ => failure

end Tactic.NormNum
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Variantbe792ca894c6dc86bf3199757f6fa1a5f32e31a98581d99dd17ba69c2ecb9399.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Variantbe792ca894c6dc86bf3199757f6fa1a5f32e31a98581d99dd17ba69c2ecb9399.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5968b4578dc7656e01b2f1133d4d2aa406b3d571` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
