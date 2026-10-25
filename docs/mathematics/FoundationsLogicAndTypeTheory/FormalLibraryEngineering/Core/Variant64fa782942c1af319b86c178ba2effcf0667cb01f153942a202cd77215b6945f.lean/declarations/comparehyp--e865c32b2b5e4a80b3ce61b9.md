# compareHyp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce1e828eca308b45d8674c1f534c60f4607f8f197de311399aedc54deb15f5ef",
  "kind": "def",
  "lexical_name": "compareHyp",
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
  "slug": "comparehyp--e865c32b2b5e4a80b3ce61b9",
  "source": {
    "blob": "c2c98a080ce0eb8a5bb5ec95ccfda0f08fe1d15d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 259,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e865c32b2b5e4a80b3ce61b95aa0ec475370a12d49fe3a4e40b4f4ca5f29d250",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce1e828eca308b45d8674c1f534c60f4607f8f197de311399aedc54deb15f5ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compareHyp (e : Q($α)) (ldecl : LocalDecl) : MetaM (Strictness zα pα e) := do
  have e' : Q(Prop) := ldecl.type
  let p : Q($e') := .fvar ldecl.fvarId
  match e' with
  | ~q(@LE.le.{u} $β $_le $lo $hi) =>
    let .defEq (_ : $α =Q $β) ← isDefEqQ α β | return .none
    let .defEq _ ← isDefEqQ e hi | return .none
    match lo with
    | ~q(0) =>
      assertInstancesCommute
      return .nonnegative q($p)
    | _ => compareHypLE zα pα lo e p
  | ~q(@LT.lt.{u} $β $_lt $lo $hi) =>
    let .defEq (_ : $α =Q $β) ← isDefEqQ α β | return .none
    let .defEq _ ← isDefEqQ e hi | return .none
    match lo with
    | ~q(0) =>
      assertInstancesCommute
      return .positive q($p)
    | _ => compareHypLT zα pα lo e p
  | ~q(@Eq.{u+1} $α' $lhs $rhs) =>
    let .defEq (_ : $α =Q $α') ← isDefEqQ α α' | pure .none
    match ← isDefEqQ e rhs with
    | .defEq _ =>
      match lhs with
      | ~q(0) => pure <| .nonnegative q(le_of_eq $p)
      | _ => compareHypEq zα pα e lhs q($p)
    | .notDefEq =>
      let .defEq _ ← isDefEqQ e lhs | pure .none
      match rhs with
      | ~q(0) => pure <| .nonnegative q(ge_of_eq $p)
      | _ => compareHypEq zα pα e rhs q(Eq.symm $p)
  | ~q(@Ne.{u + 1} $α' $lhs $rhs) =>
    let .defEq (_ : $α =Q $α') ← isDefEqQ α α' | pure .none
    match lhs, rhs with
    | ~q(0), _ =>
      let .defEq _ ← isDefEqQ e rhs | pure .none
      pure <| .nonzero q(Ne.symm $p)
    | _, ~q(0) =>
      let .defEq _ ← isDefEqQ e lhs | pure .none
      pure <| .nonzero q($p)
    | _, _ => pure .none
  | _ => pure .none

variable {zα pα} in
/-- The main combinator which combines multiple `positivity` results.
It assumes `t₁` has already been run for a result, and runs `t₂` and takes the best result.
It will skip `t₂` if `t₁` is already a proof of `.positive`, and can also combine
`.nonnegative` and `.nonzero` to produce a `.positive` result. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant64fa782942c1af319b86c178ba2effcf0667cb01f153942a202cd77215b6945f.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2c98a080ce0eb8a5bb5ec95ccfda0f08fe1d15d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
