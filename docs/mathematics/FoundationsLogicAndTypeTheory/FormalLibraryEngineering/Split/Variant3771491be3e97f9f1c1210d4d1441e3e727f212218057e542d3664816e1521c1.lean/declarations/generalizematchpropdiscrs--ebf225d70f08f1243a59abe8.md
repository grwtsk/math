# generalizeMatchPropDiscrs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5dbe16bf77410c1b7dcb219f8c7b5f8f9813a3b480866e000d91ecfa5525e9ce",
  "kind": "def",
  "lexical_name": "generalizeMatchPropDiscrs",
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
  "slug": "generalizematchpropdiscrs--ebf225d70f08f1243a59abe8",
  "source": {
    "blob": "58a23e2bf9d941430528ccb8251751f3f5565078",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 115,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebf225d70f08f1243a59abe80b772f540d9989516c776b43f5081609495257ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5dbe16bf77410c1b7dcb219f8c7b5f8f9813a3b480866e000d91ecfa5525e9ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private partial def generalizeMatchPropDiscrs (mvarId : MVarId) (discrs : Array Expr) : MetaM (Array Expr × MVarId) := mvarId.withContext do
  let mut mvarId := mvarId
  let mut discrs' := #[]
  for discr in discrs do
    if !discr.isFVar then
      if(← isProof discr) then
        let (fvarIds, mvarId') ← mvarId.generalize #[{expr := discr}]
        mvarId := mvarId'
        discrs' := discrs'.push (mkFVar fvarIds[0]!)
        continue
    discrs' := discrs'.push discr
  return (discrs', mvarId)

/--
  This method makes sure each discriminant is a free variable.
  Return the tuple `(discrsNew, discrEqs, mvarId)`. `discrsNew` in an array representing the new discriminants, `discrEqs` is an array of auxiliary equality hypotheses
  that connect the new discriminants to the original terms they represent.
  Remark: `discrEqs.size ≤ discrsNew.size`

  Remark:
    We should only generalize `discrs` occurrences as `match`-expression discriminants.
    For example, given the following goal.
    ```
    x : Nat
    ⊢ (match g x with
        | 0 => 1
        | Nat.succ y => g x) =
        2 * x + 1
    ```
    we should not generalize the `g x` in the rhs of the second alternative, and the two resulting goals
    for the `split` tactic  should be
    ```
    case h_1
    x x✝ : Nat
    h✝ : g x = 0
    ⊢ 1 = 2 * x + 1

    case h_2
    x x✝ y✝ : Nat
    h✝ : g x = Nat.succ y✝
    ⊢ g x = 2 * x + 1
    ```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant3771491be3e97f9f1c1210d4d1441e3e727f212218057e542d3664816e1521c1.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58a23e2bf9d941430528ccb8251751f3f5565078` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
