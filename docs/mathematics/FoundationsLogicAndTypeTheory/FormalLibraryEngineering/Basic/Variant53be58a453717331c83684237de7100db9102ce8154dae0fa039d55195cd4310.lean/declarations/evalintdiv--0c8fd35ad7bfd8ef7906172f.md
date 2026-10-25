# evalIntDiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2199ad4bde0bb8b823819cd13dd243534679c96f9b795eb108f7b463d72d470d",
  "kind": "def",
  "lexical_name": "evalIntDiv",
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
  "slug": "evalintdiv--0c8fd35ad7bfd8ef7906172f",
  "source": {
    "blob": "f94971ac9cc69bf8e5a6525248acaf7f52bf05c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 240,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c8fd35ad7bfd8ef7906172f35b1cfe12ef6fdabec5e159800c871dae1e59b77",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2199ad4bde0bb8b823819cd13dd243534679c96f9b795eb108f7b463d72d470d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[positivity (_ : ℤ) / (_ : ℤ)] def evalIntDiv : PositivityExt where eval {_u _α} zα pα e := do
  let .app (.app f (a : Q(ℤ))) (b : Q(ℤ)) ← withReducible (whnf e) | throwError "not /"
  let ra ← core zα pα a; let rb ← core zα pα b
  guard <|← withDefault <| withNewMCtxDepth <| isDefEq f q(HDiv.hDiv (α := ℤ) (β := ℤ))
  match ra, rb with
  | .positive pa, .positive pb =>
    have pa' : Q(0 < $a) := pa
    have pb' : Q(0 < $b) := pb
    if pa == pb then  -- Only attempts to prove `0 < a / a`, otherwise falls back to `0 ≤ a / b`
      pure (.positive (q(int_div_self_pos $pa') : Expr))
    else
      pure (.nonnegative (q(int_div_nonneg_of_pos_of_pos $pa' $pb') : Expr))
  | .positive pa, .nonnegative pb =>
    have pa' : Q(0 < $a) := pa
    have pb' : Q(0 ≤ $b) := pb
    pure (.nonnegative (q(int_div_nonneg_of_pos_of_nonneg $pa' $pb') : Expr))
  | .nonnegative pa, .positive pb =>
    have pa' : Q(0 ≤ $a) := pa
    have pb' : Q(0 < $b) := pb
    pure (.nonnegative (q(int_div_nonneg_of_nonneg_of_pos $pa' $pb') : Expr))
  | .nonnegative pa, .nonnegative pb =>
    have pa' : Q(0 ≤ $a) := pa
    have pb' : Q(0 ≤ $b) := pb
    pure (.nonnegative (q(Int.ediv_nonneg $pa' $pb') : Expr))
  | _, _ => pure .none

section LinearOrderedSemifield
variable [LinearOrderedSemifield R] {a b : R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f94971ac9cc69bf8e5a6525248acaf7f52bf05c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
