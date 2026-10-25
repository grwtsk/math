# bracketedBinderType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b1052c96bb46b195bba11c46ac749f9ec1fda876f848521e36e4c8fe496e28d",
  "kind": "def",
  "lexical_name": "bracketedBinderType",
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
  "slug": "bracketedbindertype--d3d37d9112995b678daae11e",
  "source": {
    "blob": "a66a8225b5e8336d4b5e18a7fe1f95466a781659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Variable/Variant68ff3adb7eae41338a8551567edbe3de777085cf4ce0ed788861cc75df18fa42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3d37d9112995b678daae11ef3e006f26d2a35211be54fd10eab7e003a96bcfe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Variable/Variant68ff3adb7eae41338a8551567edbe3de777085cf4ce0ed788861cc75df18fa42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b1052c96bb46b195bba11c46ac749f9ec1fda876f848521e36e4c8fe496e28d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def bracketedBinderType : Syntax → Option Term
  | `(bracketedBinderF|($_* $[: $ty?]? $(_annot?)?)) => ty?
  | `(bracketedBinderF|{$_* $[: $ty?]?})             => ty?
  | `(bracketedBinderF|⦃$_* $[: $ty?]?⦄)             => ty?
  | `(bracketedBinderF|[$[$_ :]? $ty])               => some ty
  | _                                                => none

/-- The `variable?` command has the same syntax as `variable`, but it will auto-insert
missing instance arguments wherever they are needed.
It does not add variables that can already be deduced from others in the current context.
By default the command checks that variables aren't implied by earlier ones, but it does *not*
check that earlier variables aren't implied by later ones.
Unlike `variable`, the `variable?` command does not support changing variable binder types.

The `variable?` command will give a suggestion to replace itself with a command of the form
`variable? ...binders... => ...binders...`.  The binders after the `=>` are the completed
list of binders. When this `=>` clause is present, the command verifies that the expanded
binders match the post-`=>` binders.  The purpose of this is to help keep code that uses
`variable?` resilient against changes to the typeclass hierarchy, at least in the sense
that this additional information can be used to debug issues that might arise.
One can also replace `variable? ...binders... =>` with `variable`.

The core algorithm is to try elaborating binders one at a time, and whenever there is a
typeclass instance inference failure, it synthesizes binder syntax for it and adds it to
the list of binders and tries again, recursively. There are no guarantees that this
process gives the "correct" list of binders.

Structures tagged with the `variable_alias` attribute can serve as aliases for a collection
of typeclasses. For example, given
```lean
@[variable_alias]
structure VectorSpace (k V : Type*) [Field k] [AddCommGroup V] [Module k V]
```
then `variable? [VectorSpace k V]` is
equivalent to `variable {k V : Type*} [Field k] [AddCommGroup V] [Module k V]`, assuming
that there are no pre-existing instances on `k` and `V`.
Note that this is not a simple replacement: it only adds instances not inferable
from others in the current scope.

A word of warning: the core algorithm depends on pretty printing, so if terms that appear
in binders do not round trip, this algorithm can fail. That said, it has some support
for quantified binders such as `[∀ i, F i]`. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Variable/Variant68ff3adb7eae41338a8551567edbe3de777085cf4ce0ed788861cc75df18fa42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Variable/Variant68ff3adb7eae41338a8551567edbe3de777085cf4ce0ed788861cc75df18fa42.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a66a8225b5e8336d4b5e18a7fe1f95466a781659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
