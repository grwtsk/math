# evalArithmeticFunctionZeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6da117b182b8b9d71b2f4cc9b9eb1b092c10d161330aa65ba0b2a6ca2f671dd3",
  "kind": "def",
  "lexical_name": "evalArithmeticFunctionZeta",
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
  "slug": "evalarithmeticfunctionzeta--900efe4dbcfb4cc25570800b",
  "source": {
    "blob": "3fd911a3b6c04541755f2b96428fd49c4beb1a38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 236,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:900efe4dbcfb4cc25570800b6adcfb5ad7767f7d16f807dd046aeb9473df8ffd",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6da117b182b8b9d71b2f4cc9b9eb1b092c10d161330aa65ba0b2a6ca2f671dd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def evalArithmeticFunctionZeta : PositivityExt where eval {u α} z p? e :=
  match p? with | none => throwError "no PartialOrder instance" | some p => do
  match u, α, e with
  | 0, ~q(ℕ), ~q(ArithmeticFunction.zeta $n) =>
    assumeInstancesCommute
    let rn ← core z p n
    match rn with
    | .positive pn => return .positive q(Iff.mpr ArithmeticFunction.zeta_pos $pn)
    | _ => return .nonnegative q(Nat.zero_le _)
  | _, _, _ => throwError "not ArithmeticFunction.zeta"

end Mathlib.Meta.Positivity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Zeta/Variant2e323e33be5cc31afbdfcf05f36219a5740c6adc0bc1833aefcc1ac395bd2f3e.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fd911a3b6c04541755f2b96428fd49c4beb1a38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
