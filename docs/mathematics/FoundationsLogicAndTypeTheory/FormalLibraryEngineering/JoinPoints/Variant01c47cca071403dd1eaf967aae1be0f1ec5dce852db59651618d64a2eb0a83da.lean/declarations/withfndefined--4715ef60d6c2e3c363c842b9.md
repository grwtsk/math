# withFnDefined

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da7753246598b736eb8a3f524664c87a47a1307ea9d9cd84646157a88a50a26d",
  "kind": "def",
  "lexical_name": "withFnDefined",
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
  "slug": "withfndefined--4715ef60d6c2e3c363c842b9",
  "source": {
    "blob": "4e7b71069eeecf913d3110300cf46d26b1a343b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JoinPoints/Variant01c47cca071403dd1eaf967aae1be0f1ec5dce852db59651618d64a2eb0a83da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4715ef60d6c2e3c363c842b9c9b48fb87125ae8b458500a5a8cc597717c8bd36",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JoinPoints/Variant01c47cca071403dd1eaf967aae1be0f1ec5dce852db59651618d64a2eb0a83da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da7753246598b736eb8a3f524664c87a47a1307ea9d9cd84646157a88a50a26d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def withFnDefined (decl : FunDecl .pure) (x : FindM α) : FindM α :=
    withReader (fun ctx => {
        ctx with
          scope := ctx.scope.insert decl.fvarId ctx.definitionDepth }) do
      x

/--
Find all `fun` declarations that qualify as a join point, that is:
- are always fully applied
- are always called in tail position

Where a `fun` `f` is in tail position iff it is called as follows:
```
let res := f arg
res
```
The majority (if not all) tail calls will be brought into this form
by the simplifier pass.

Furthermore a `fun` disqualifies as a join point if turning it into a join
point would turn a call to it into an out of scope join point.
This can happen if we have something like:
```
def test (b : Bool) (x y : Nat) : Nat :=
  fun myjp x => Nat.add x (Nat.add x x)
  fun f y =>
    let x := Nat.add y y
    myjp x
  fun f y =>
    let x := Nat.mul y y
    myjp x
  cases b (f x) (g y)
```
`f` and `g` can be detected as a join point right away, however
`myjp` can only ever be detected as a join point after we have established
this. This is because otherwise the calls to `myjp` in `f` and `g` would
produce out of scope join point jumps.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JoinPoints/Variant01c47cca071403dd1eaf967aae1be0f1ec5dce852db59651618d64a2eb0a83da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JoinPoints/Variant01c47cca071403dd1eaf967aae1be0f1ec5dce852db59651618d64a2eb0a83da.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e7b71069eeecf913d3110300cf46d26b1a343b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
