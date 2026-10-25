# shouldSpecialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aaa8f480a3caeaf2606c30a7f876a374ef9261e1e4c75ac07854b87b09364cc1",
  "kind": "def",
  "lexical_name": "shouldSpecialize",
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
  "slug": "shouldspecialize--6b79a3a2374ba9b0cc154707",
  "source": {
    "blob": "744889b1f1b063ca4b83b2d59f4bbd45a923754c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 227,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b79a3a2374ba9b0cc1547071e5b87c20f3981b1d7907951186a4ad2b4eafc48",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aaa8f480a3caeaf2606c30a7f876a374ef9261e1e4c75ac07854b87b09364cc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def shouldSpecialize (specEntry : SpecEntry) (args : Array (Arg .pure)) : SpecializeM Bool := do
  let hoCheck :=
    if specEntry.alreadySpecialized then
      fun arg => do
        /-
        If we have `f p` where `p` is a param it makes no sense to specialize as we will just
        close over `p` again and will have made no progress.

        The reason for doing this only for declarations which have have already been specialised
        themselves is, that we *must* always specialize declarations that are marked with
        `@[specialize]`. This is because the specializer will not specialize their bodies because it
        waits for the bodies to be specialized at the call site. This is for example important in
        the following situation:
        ```
        @[specialize]
        def test (f : ... -> ...) :=
           ...
           HashMap.get? inst1 inst2 xs ys
        ```
        Here the call to `HashMap.get?` will not be specialized unless `test` is specialized. Thus,
        even when `f` is just going to be re-abstracted, it makes sense to specialize a call to `test`
        that closes over parameters, in order to optimize the `HashMap` invocation.

        We thought about lifting this restriction and instead always specializing `@[specialize]`
        decls twice, once at their definition site and once at their call site. However, almost all
        `@[specialize]` function declarations will indeed get specialized for a non-trivial function
        instead of just an argument. Hence keeping the first version around is likely a waste of
        space because it will often end up going unused.
        -/
        match arg with
        | .erased | .type .. => return false
        | .fvar fvar => return (← findParam? (pu := .pure) fvar).isNone
    else
      fun _ => pure true
  for paramInfo in specEntry.paramsInfo, arg in args do
    match paramInfo with
    | .other => pure ()
    | .fixedNeutral => pure () -- If we want to monomorphize types such as `Array`, we need to change here
    | .fixedInst true => pure ()  -- weak: don't trigger specialization on its own
    | .fixedInst false | .user => if ← isGround arg then return true
    | .fixedHO => if ← hoCheck arg then return true

  return false

/--
Convert the given declarations into `Expr`, and "zeta-reduce" them into body.
This function is used to compute the key that uniquely identifies an code specialization.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `744889b1f1b063ca4b83b2d59f4bbd45a923754c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
