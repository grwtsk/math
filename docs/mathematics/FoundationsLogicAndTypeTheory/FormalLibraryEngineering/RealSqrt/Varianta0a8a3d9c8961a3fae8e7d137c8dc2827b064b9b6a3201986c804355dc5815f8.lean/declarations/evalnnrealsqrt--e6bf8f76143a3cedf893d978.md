# evalNNRealSqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90aba79c3c1ffd1486b27ff81aa515bf1151c9a9ec8f99a60fb397eb0cd9cad0",
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
  "slug": "evalnnrealsqrt--e6bf8f76143a3cedf893d978",
  "source": {
    "blob": "4c547180fd43a1ff55d7022dff099929d8f9cf8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6bf8f76143a3cedf893d97818e370ea8415b7c4c3bdc7d032c1a47656e13f06",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90aba79c3c1ffd1486b27ff81aa515bf1151c9a9ec8f99a60fb397eb0cd9cad0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–110.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c547180fd43a1ff55d7022dff099929d8f9cf8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
