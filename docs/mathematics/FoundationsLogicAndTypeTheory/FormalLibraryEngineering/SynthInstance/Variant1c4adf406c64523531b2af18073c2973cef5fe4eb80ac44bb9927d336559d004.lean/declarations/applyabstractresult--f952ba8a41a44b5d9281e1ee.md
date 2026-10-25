# applyAbstractResult?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0561e93c6a37c10dbc1e178ae8c3945e316eb029abda48a8b107788df2101b3d",
  "kind": "def",
  "lexical_name": "applyAbstractResult?",
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
  "slug": "applyabstractresult--f952ba8a41a44b5d9281e1ee",
  "source": {
    "blob": "450d8edb60c648a3145eb1d9c2a410f4644debe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 927,
    "line": 877,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f952ba8a41a44b5d9281e1ee98467df8d2ff18d04906bea20059fbc706b150a1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0561e93c6a37c10dbc1e178ae8c3945e316eb029abda48a8b107788df2101b3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 877–927.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def applyAbstractResult? (type : Expr) (abstResult? : Option AbstractMVarsResult) : MetaM (Option Expr) := do
  let some abstResult := abstResult? | return none
  let (_, _, result) ← openAbstractMVarsResult abstResult
  unless (← assignOutParams type result) do return none
  let result ← instantiateMVars result
  unless (← checkMayHaveSideEffects result) do
    return some result
  /- We use `check` to propagate universe constraints implied by the `result`.
      Recall that we use `allowLevelAssignments := true` which allows universe metavariables in the current depth to be assigned,
      but these assignments are discarded by `withNewMCtxDepth`.

      The example in the issue #796 exposed this issue.
      ```
      structure A
      class B (a : outParam A) (α : Sort u)
      class C {a : A} (α : Sort u) [B a α]
      class D {a : A} (α : Sort u) [B a α] [c : C α]
      class E (a : A) where [c (α : Sort u) [B a α] : C α]
      instance c {a : A} [e : E a] (α : Sort u) [B a α] : C α := e.c α

      def d {a : A} [e : E a] (α : Sort u) [b : B a α] : D α := ⟨⟩
      ```
      The term `D α` has two instance implicit arguments. The second one has type `C α`, and TC
      resolution produces the result `@c.{u} a e α b`.
      Note that the `e` has type `E.{?v} a`, and `E` is universe polymorphic,
      but the universe does not occur in the parameter `a`. We have that `?v := u` is implied by `@c.{u} a e α b`,
      but this assignment is lost.

      **Note**: We tried to skip this `check` by tracking whether a universe metavariable
      from a lower depth was assigned during the search (a flag set by the level-unification
      procedures; such assignments can only happen during TC resolution and are exactly the
      ones discarded by `withNewMCtxDepth`). The tracking is insufficient: without
      `checkMayHaveSideEffects`, a clean Mathlib build produced 5 failures
      (`CategoryTheory/Limits/FilteredColimitCommutesProduct`, `CategoryTheory/Limits/Presheaf`,
      `Topology/Category/CompHausLike/SigmaComparison`, `Algebra/Category/ModuleCat/Colimits`,
      `Analysis/CStarAlgebra/ContinuousFunctionalCalculus/Isometric`), ranging from
      declarations with leaked universe metavariables and kernel type mismatches to
      "don't know how to synthesize implicit argument". We suspect the situation is
      analogous to the `isDefEq` test at `tryResolve` (see the **Note** there): the `check`
      produces unintended side effects (e.g., `trySynthPending` on expression metavariables,
      universe assignments the search itself never derived) that these few Mathlib places
      rely on, possibly by accident. We should diagnose whether they work by accident and,
      if so, fix Mathlib and remove (or further weaken) this `check`.
  -/
  check result
  return some result

/--
Auxiliary function for converting a cached `AbstractMVarsResult` returned by `SynthInstance.main` into an `Expr`.
This function tries to avoid the potentially expensive `check` at `applyCachedAbstractResult?`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean#L877).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `450d8edb60c648a3145eb1d9c2a410f4644debe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
