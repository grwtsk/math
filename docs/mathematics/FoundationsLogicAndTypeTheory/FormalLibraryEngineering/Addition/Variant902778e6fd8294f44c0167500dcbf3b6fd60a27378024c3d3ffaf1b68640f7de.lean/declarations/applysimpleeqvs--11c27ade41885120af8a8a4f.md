# applySimpleEqvs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8512b48b5e976e03efaedd5d364e6b40df617bcda7da08fb8cd064855da9abfc",
  "kind": "def",
  "lexical_name": "applySimpleEqvs",
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
  "slug": "applysimpleeqvs--11c27ade41885120af8a8a4f",
  "source": {
    "blob": "cab91cdf92ef91ceb61392d33d99236b369fae4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 946,
    "line": 888,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11c27ade41885120af8a8a4f32532b0b0d8ac96248202db938fae7f821931420",
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

Occurrence: `declaration:8512b48b5e976e03efaedd5d364e6b40df617bcda7da08fb8cd064855da9abfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 888–946.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def applySimpleEqvs (e : Expr) : CCM Unit := do
  if let .app (.app (.app (.app (.const ``cast [l₁]) A) B) H) a := e then
    /-
    ```
    HEq (cast H a) a

    theorem cast_heq.{l₁} : ∀ {A B : Sort l₁} (H : A = B) (a : A), HEq (@cast.{l₁} A B H a) a
    ```
    -/
    let proof := mkApp4 (.const ``cast_heq [l₁]) A B H a
    pushHEq e a proof

  if let .app (.app (.app (.app (.app (.app (.const ``Eq.rec [l₁, l₂]) A) a) P) p) a') H := e then
    /-
    ```
    HEq (t ▸ p) p

    theorem eqRec_heq'.{l₁, l₂} : ∀ {A : Sort l₂} {a : A} {P : (a' : A) → a = a' → Sort l₁}
      (p : P a) {a' : A} (H : a = a'), HEq (@Eq.rec.{l₁ l₂} A a P p a' H) p
    ```
    -/
    let proof := mkApp6 (.const ``eqRec_heq' [l₁, l₂]) A a P p a' H
    pushHEq e p proof

  if let .app (.app (.app (.const ``Ne [l₁]) α) a) b := e then
    -- `(a ≠ b) = (Not (a = b))`
    let newE := Expr.app (.const ``Not []) (mkApp3 (.const ``Eq [l₁]) α a b)
    internalizeCore newE none
    pushReflEq e newE

  if let some r ← e.reduceProjStruct? then
    pushReflEq e r

  let fn := e.getAppFn
  if fn.isLambda then
    let reducedE := e.headBeta
    if let some phandler := (← get).phandler then
      phandler.newAuxCCTerm reducedE
    internalizeCore reducedE none
    pushReflEq e reducedE

  let mut revArgs : Array Expr := #[]
  let mut it := e
  while it.isApp do
    revArgs := revArgs.push it.appArg!
    let fn := it.appFn!
    let rootFn ← getRoot fn
    let en ← getEntry rootFn
    if en.any Entry.hasLambdas then
      let lambdas ← getEqcLambdas rootFn
      let newLambdaApps ← propagateBeta fn revArgs lambdas
      for newApp in newLambdaApps do
        internalizeCore newApp none
    it := fn

  propagateUp e

/-- If `e` is a subsingleton element, push the equality proof between `e` and its canonical form
to the todo list or register `e` as the canonical form of itself. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean#L888).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cab91cdf92ef91ceb61392d33d99236b369fae4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
