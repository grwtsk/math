# propagateEqUp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0545f29e0739a4220cfa254532110ee52f004c13ccc71f6e77a47375a696349e",
  "kind": "def",
  "lexical_name": "propagateEqUp",
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
  "slug": "propagateequp--36ae68adc12647af264bd4d9",
  "source": {
    "blob": "cab91cdf92ef91ceb61392d33d99236b369fae4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 860,
    "line": 820,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36ae68adc12647af264bd4d9ab57ecd85058096c82434dd3784b52f2275fb08a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0545f29e0739a4220cfa254532110ee52f004c13ccc71f6e77a47375a696349e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 820–860.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def propagateEqUp (e : Expr) : CCM Unit := do
  -- Remark: the positive case is implemented at `checkEqTrue` for any reflexive relation.
  let some (_, a, b) := e.eq? | failure
  let ra ← getRoot a
  let rb ← getRoot b
  if ra != rb then
    let mut raNeRb : Option Expr := none
    /-
    We disprove inequality for interpreted values here.
    The possible types of interpreted values are in `{String, Char, Int, Nat}`.
    1- `String`
      `ra` & `rb` are string literals, so if `ra != rb`, `ra.int?.isNone` is `true` and we can
      prove `$ra ≠ $rb`.
    2- `Char`
      `ra` & `rb` are the form of `Char.ofNat (nat_lit n)`, so if `ra != rb`, `ra.int?.isNone` is
      `true` and we can prove `$ra ≠ $rb` (assuming that `n` is not pathological value, i.e.
      `n.isValidChar`).
    3- `Int`, `Nat`
      `ra` & `rb` are the form of `@OfNat.ofNat ℤ (nat_lit n) i` or
      `@Neg.neg ℤ i' (@OfNat.ofNat ℤ (nat_lit n) i)`, so even if `ra != rb`, `$ra ≠ $rb` can be
      false when `i` or `i'` in `ra` & `rb` are not alpha-equivalent but def-eq.
      If `ra.int? != rb.int?`, we can prove `$ra ≠ $rb` (assuming that `i` & `i'` are not
      pathological instances).
    -/
    if ← isInterpretedValue ra <&&> isInterpretedValue rb <&&>
        pure (ra.int?.isNone || ra.int? != rb.int?) then
      raNeRb := some
        (Expr.app (.proj ``Iff 0 (← mkAppOptM ``bne_iff_ne #[none, none, none, ra, rb]))
          (← mkEqRefl (.const ``true [])))
    else
      if let some c₁ ← isConstructorApp? ra then
      if let some c₂ ← isConstructorApp? rb then
      if c₁.name != c₂.name then
        raNeRb ← withLocalDeclD `h (← mkEq ra rb) fun h => do
          mkLambdaFVars #[h] (← mkNoConfusion (.const ``False []) h)
    if let some raNeRb' := raNeRb then
    if let some aNeRb ← mkNeOfEqOfNe a ra raNeRb' then
    if let some aNeB ← mkNeOfNeOfEq aNeRb rb b then
      pushEq e (.const ``False []) (← mkEqFalse aNeB)

/-- Propagate equality from subexpressions of `e` to `e`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean#L820).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cab91cdf92ef91ceb61392d33d99236b369fae4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
