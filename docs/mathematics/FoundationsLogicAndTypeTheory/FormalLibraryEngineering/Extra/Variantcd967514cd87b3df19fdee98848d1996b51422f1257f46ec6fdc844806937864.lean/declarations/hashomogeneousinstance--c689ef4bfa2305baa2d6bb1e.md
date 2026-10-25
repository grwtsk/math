# hasHomogeneousInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:596bdcced57a272348dae43744647f240161d9878305261de27cc3e135e29075",
  "kind": "def",
  "lexical_name": "hasHomogeneousInstance",
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
  "slug": "hashomogeneousinstance--c689ef4bfa2305baa2d6bb1e",
  "source": {
    "blob": "50f5f9016b8b242b99713959e18d3ee6518df038",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 395,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantcd967514cd87b3df19fdee98848d1996b51422f1257f46ec6fdc844806937864.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c689ef4bfa2305baa2d6bb1ef408f2529ba6dd8318b72f6c180afbc904039fd7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantcd967514cd87b3df19fdee98848d1996b51422f1257f46ec6fdc844806937864.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:596bdcced57a272348dae43744647f240161d9878305261de27cc3e135e29075`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def hasHomogeneousInstance (f : Expr) (maxType : Expr) : MetaM Bool := do
  let .const fName .. := f | return false
  let className := fName.getPrefix
  try
    let inst ← mkAppM className #[maxType, maxType, maxType]
    return (← trySynthInstance inst) matches .some _
  catch _ =>
    return false

mutual
  /--
    Try to coerce elements in the `t` to `maxType` when needed.
    If the type of an element in `t` is unknown we only coerce it to `maxType` if `maxType` does not have heterogeneous
    default instances. This extra check is approximated by `hasHeterogeneousDefaultInstances`.

    Remark: If `maxType` does not implement heterogeneous default instances, we do want to assign unknown types `?m` to
    `maxType` because it produces better type information propagation. Our test suite has many tests that would break if
    we don't do this. For example, consider the term
    ```
    eq_of_isEqvAux a b hsz (i+1) (Nat.succ_le_of_lt h) heqv.2
    ```
    `Nat.succ_le_of_lt h` type depends on `i+1`, but `i+1` only reduces to `Nat.succ i` if we know that `1` is a `Nat`.
    There are several other examples like that in our test suite, and one can find them by just replacing the
    `← hasHeterogeneousDefaultInstances f maxType lhs` test with `true`


    Remark: if `hasHeterogeneousDefaultInstances` implementation is not good enough we should refine it in the future.
  -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantcd967514cd87b3df19fdee98848d1996b51422f1257f46ec6fdc844806937864.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantcd967514cd87b3df19fdee98848d1996b51422f1257f46ec6fdc844806937864.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f5f9016b8b242b99713959e18d3ee6518df038` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
