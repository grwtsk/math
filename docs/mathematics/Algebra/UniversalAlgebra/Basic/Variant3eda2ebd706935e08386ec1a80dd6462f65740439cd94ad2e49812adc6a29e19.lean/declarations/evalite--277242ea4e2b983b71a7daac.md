# evalIte

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b94fca9d13d281c01afe8c7204267e56e6be8e6ecc4f17a0e7e68c99703a2416",
  "kind": "def",
  "lexical_name": "evalIte",
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
  "slug": "evalite--277242ea4e2b983b71a7daac",
  "source": {
    "blob": "1fb2c9bb68bc26a05ab688ea9872511e9d3e8e08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 63,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:277242ea4e2b983b71a7daac87e0dd3b917db0e78b8bd095de4e36c4b6e365ed",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b94fca9d13d281c01afe8c7204267e56e6be8e6ecc4f17a0e7e68c99703a2416`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[positivity ite _ _ _] def evalIte : PositivityExt where eval {u α} zα pα e := do
  let .app (.app (.app (.app f (p : Q(Prop))) (_ : Q(Decidable $p))) (a : Q($α))) (b : Q($α))
    ← withReducible (whnf e) | throwError "not ite"
  haveI' : $e =Q ite $p $a $b := ⟨⟩
  let ra ← core zα pα a; let rb ← core zα pα b
  guard <|← withDefault <| withNewMCtxDepth <| isDefEq f q(ite (α := $α))
  match ra, rb with
  | .positive pa, .positive pb =>
    pure (.positive q(ite_pos $p $pa $pb))
  | .positive pa, .nonnegative pb =>
    let _b ← synthInstanceQ q(Preorder $α)
    assumeInstancesCommute
    pure (.nonnegative q(ite_nonneg_of_pos_of_nonneg $p $pa $pb))
  | .nonnegative pa, .positive pb =>
    let _b ← synthInstanceQ q(Preorder $α)
    assumeInstancesCommute
    pure (.nonnegative q(ite_nonneg_of_nonneg_of_pos $p $pa $pb))
  | .nonnegative pa, .nonnegative pb =>
    pure (.nonnegative q(ite_nonneg $p $pa $pb))
  | .positive pa, .nonzero pb =>
    let _b ← synthInstanceQ q(Preorder $α)
    assumeInstancesCommute
    pure (.nonzero q(ite_ne_zero_of_pos_of_ne_zero $p $pa $pb))
  | .nonzero pa, .positive pb =>
    let _b ← synthInstanceQ q(Preorder $α)
    assumeInstancesCommute
    pure (.nonzero q(ite_ne_zero_of_ne_zero_of_pos $p $pa $pb))
  | .nonzero pa, .nonzero pb =>
    pure (.nonzero q(ite_ne_zero $p $pa $pb))
  | _, _ => pure .none

section LinearOrder
variable {R : Type*} [LinearOrder R] {a b c : R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant3eda2ebd706935e08386ec1a80dd6462f65740439cd94ad2e49812adc6a29e19.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fb2c9bb68bc26a05ab688ea9872511e9d3e8e08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
