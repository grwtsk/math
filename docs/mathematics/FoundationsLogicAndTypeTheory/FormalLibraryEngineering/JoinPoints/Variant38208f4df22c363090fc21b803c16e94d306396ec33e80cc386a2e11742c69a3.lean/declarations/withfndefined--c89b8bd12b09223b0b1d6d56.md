# withFnDefined

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8ed418262cabc2471f337a2370a5494ac53a422537dd60db1f083323147018d",
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
  "slug": "withfndefined--c89b8bd12b09223b0b1d6d56",
  "source": {
    "blob": "9f0016ee7627c965cd8d23b434459d507dd3f3ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 136,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JoinPoints/Variant38208f4df22c363090fc21b803c16e94d306396ec33e80cc386a2e11742c69a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c89b8bd12b09223b0b1d6d560842b31254b2107cf9d8dc99465e6671760e5d39",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JoinPoints/Variant38208f4df22c363090fc21b803c16e94d306396ec33e80cc386a2e11742c69a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8ed418262cabc2471f337a2370a5494ac53a422537dd60db1f083323147018d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–173.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JoinPoints/Variant38208f4df22c363090fc21b803c16e94d306396ec33e80cc386a2e11742c69a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JoinPoints/Variant38208f4df22c363090fc21b803c16e94d306396ec33e80cc386a2e11742c69a3.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f0016ee7627c965cd8d23b434459d507dd3f3ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
