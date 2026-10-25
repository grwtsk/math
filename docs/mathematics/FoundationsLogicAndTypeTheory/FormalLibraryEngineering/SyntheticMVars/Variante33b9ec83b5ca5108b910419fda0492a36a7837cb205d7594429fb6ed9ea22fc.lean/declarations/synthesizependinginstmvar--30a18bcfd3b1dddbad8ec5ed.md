# synthesizePendingInstMVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5a75930c8a85860b78d3d3cc1f3cf2a7b476b9e7aad094ac762756536750523",
  "kind": "def",
  "lexical_name": "synthesizePendingInstMVar",
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
  "slug": "synthesizependinginstmvar--30a18bcfd3b1dddbad8ec5ed",
  "source": {
    "blob": "7b7f039bfa57aef97a3e44348d0f6194fa95fda9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30a18bcfd3b1dddbad8ec5ed6b9da577cf18711275fd7735942bf7c98c36205c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e5a75930c8a85860b78d3d3cc1f3cf2a7b476b9e7aad094ac762756536750523`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def synthesizePendingInstMVar (instMVar : MVarId) (extraErrorMsg? : Option MessageData := none): TermElabM Bool :=
  instMVar.withContext do
    try
      synthesizeInstMVarCore instMVar (extraErrorMsg? := extraErrorMsg?)
    catch
      | ex@(.error ..) => logException ex; return true
      | _              => unreachable!

/--
  Try to synthesize `mvarId` by starting using a default instance with the given priority.
  This method succeeds only if the metavariable of fully synthesized.

  Remark: In the past, we would return a list of pending TC problems, but this was problematic since
  a default instance may create subproblems that cannot be solved.

  Remark: The new approach also has limitations because other pending metavariables are not taken into account
  while backtracking. That is, we fail to synthesize `mvarId` because we reach subproblems that are stuck,
  but we could "unstuck" them if we tried to solve other pending metavariables. Considering all pending metavariables
  into a single backtracking search seems to be too expensive, and potentially generate incomprehensible error messages.
  This is particularly true if we consider pending metavariables for "postponed" elaboration steps.
  Here is an example that demonstrate this issue. The example considers we are using the old `binrel%` elaborator which was
  disconnected from `binop%`.
  ```
  example (a : Int) (b c : Nat) : a = ↑b - ↑c := sorry
  ```
  We have two pending coercions for the `↑` and `HSub ?m.220 ?m.221 ?m.222`.
  When we did not use a backtracking search here, then the homogeneous default instance for `HSub`.
  ```
  instance [Sub α] : HSub α α α where
  ```
  would be applied first, and would propagate the expected type `Int` to the pending coercions which would now be unblocked.

  Instead of performing a backtracking search that considers all pending metavariables, we improved the `binrel%` elaborator.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b7f039bfa57aef97a3e44348d0f6194fa95fda9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
