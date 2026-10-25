# mkInstanceKey

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:091367407014121ac3e2c5dd30ce522a043bd8999e1b633034257fad8d284b20",
  "kind": "def",
  "lexical_name": "mkInstanceKey",
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
  "slug": "mkinstancekey--3a96420c68a5bd5c8bad9767",
  "source": {
    "blob": "98ed55bb22bb9d5af101bc354753b0b7f629b730",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 104,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant45f04383778249a03aac8ab44b08ee15513a1e511c04f724a8ff71d29c93ffbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a96420c68a5bd5c8bad97675784844fcf6ef7f7350ae80f8ecf497b05a72208",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant45f04383778249a03aac8ab44b08ee15513a1e511c04f724a8ff71d29c93ffbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:091367407014121ac3e2c5dd30ce522a043bd8999e1b633034257fad8d284b20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def mkInstanceKey (e : Expr) : MetaM (Array InstanceKey) := do
  let type ← inferType e
  withNewMCtxDepth do
    let (_, _, type) ← forallMetaTelescopeReducing type
    DiscrTree.mkPath type

/--
Compute the order the arguments of `inst` should be synthesized.

The synthesization order makes sure that all mvars in non-out-params of the
subgoals are assigned before we try to synthesize it.  Otherwise it goes left
to right.

For example:
  - `[Add α] [Zero α] : Foo α` returns `[0, 1]`
  - `[Mul A] [Mul B] [MulHomClass F A B] : FunLike F A B` returns `[2, 0, 1]`
    (because A B are out-params and are only filled in once we synthesize 2)

(The type of `inst` must not contain mvars.)

Remark: `projInfo?` is `some` if the instance is a projection.
We need this information because of the heuristic we use to annotate binder
information in projections. See PR #5376 and issue #5333. Before PR
#5376, given a class `C` at
```
class A (n : Nat) where

instance [A n] : A n.succ where

class B [A 20050] where

class C [A 20000] extends B where
```
we would get the following instance
```
C.toB [inst : A 20000] [self : @C inst] : @B ...
```
After the PR, we have
```
C.toB {inst : A 20000} [self : @C inst] : @B ...
```
Note the attribute `inst` is now just a regular implicit argument.
To ensure `computeSynthOrder` works as expected, we should take
this change into account while processing field `self`.
This field is the one at position `projInfo?.numParams`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant45f04383778249a03aac8ab44b08ee15513a1e511c04f724a8ff71d29c93ffbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant45f04383778249a03aac8ab44b08ee15513a1e511c04f724a8ff71d29c93ffbf.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ed55bb22bb9d5af101bc354753b0b7f629b730` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
