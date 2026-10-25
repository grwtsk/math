# withFunDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:562cae4ffb9c0bee68170c8bcf0ec3e1d54933e6986d6ffc5f959dcc6f1ea021",
  "kind": "def",
  "lexical_name": "withFunDecl",
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
  "slug": "withfundecl--22479cd43b50ab759365ccdc",
  "source": {
    "blob": "6499b801b9870d1ca1f79b8ffb1a9c9fa987cbd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant5129e0b7906bdd2b5c4778507d8f20ea3e98c8789e6d3e955a08f56c7426d0e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22479cd43b50ab759365ccdc5af499443b0d0f3ead17df67495465a01e6beb2c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant5129e0b7906bdd2b5c4778507d8f20ea3e98c8789e6d3e955a08f56c7426d0e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:562cae4ffb9c0bee68170c8bcf0ec3e1d54933e6986d6ffc5f959dcc6f1ea021`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[inline] def withFunDecl (decl : FunDecl .pure) (x : SpecializeM α) : SpecializeM α := do
  let ctx ← read
  let grd := allFVar (x := decl.value) fun fvarId =>
    !(ctx.scope.contains fvarId) || ctx.ground.contains fvarId
  let fvarId := decl.fvarId
  withReader (x := x) fun ctx => { ctx with
    scope := ctx.scope.insert fvarId
    ground := if grd then ctx.ground.insert fvarId else ctx.ground
  }

namespace Collector
/-!
# Dependency collector for the code specialization function.

During code specialization, we select which arguments are going to be used during the specialization.
Then, we have to collect their dependencies. For example, suppose are trying to specialize the following `IO.println`
and `List.forM` applications in the following example:
```
    def f xs a.1 :=
      let _x.2 := @instMonadEIO IO.Error
      let _x.5 := instToStringString
      let _x.9 := instToStringNat
      let _x.6 := "hello"
      let _x.61 := @IO.println String _x.5 _x.6 a.1 -- (*)
      cases _x.61
      | EStateM.Result.ok a.6 a.7 =>
        fun _f.72 _y.69 _y.70 :=
          let _x.71 := @IO.println Nat _x.9 _y.69 _y.70 -- (*)
          _x.71
        let _x.65 := @List.forM (fun α => PUnit → EStateM.Result IO.Error PUnit α) _x.2 Nat xs _f.72 a.7 -- (*)
        ...
      ...
```
For `IO.println` the `SpecArgInfo` is `[N, I, O, O]`, i.e., only the first two arguments are considered
for code specialization. The first one is computationally neutral, and the second one is an instance.
For `List.forM`, we have `[N, I, N, O, H]`. In this case, the fifth argument (tagged as `H`) is a function.
Note that the actual `List.forM` application has 6 arguments, the extra argument comes from the `IO` monad.

For the first `IO.println` application, the collector collects `_x.5`.
For the `List.forM`, it collects `_x.2`, `_x.9`, and `_f.72`.
The collected values are used to construct a key to identify the specialization. Arguments that were not considered are
replaced with `lcErased`. The key is used to make sure we don't keep generating the same specialization over and over again.
This is not an optimization, it is essential to prevent the code specializer from looping while specializing recursive functions.
The keys for these two applications are the terms.
```
@IO.println Nat instToStringNat lcErased lcErased
```
and
```
@List.forM
  (fun α => PUnit → EStateM.Result IO.Error PUnit α)
  (@instMonadEIO IO.Error) Nat lcErased
  (fun _y.69 _y.70 =>
   let _x.71 := @IO.println Nat instToStringNat _y.69 _y.70;
  _x.71)
```
The keys never contain free variables or loose bound variables.
-/

/--
Given the specialization mask `paramsInfo` and the arguments `args`,
collect their dependencies, and return an array `mask` of size `paramsInfo.size` s.t.
- `mask[i] = some args[i]` if `paramsInfo[i] != .other`
- `mask[i] = none`, otherwise.
That is, `mask` contains only the arguments that are contributing to the code specialization.
We use this information to compute a "key" to uniquely identify the code specialization, and
creating the specialized code.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant5129e0b7906bdd2b5c4778507d8f20ea3e98c8789e6d3e955a08f56c7426d0e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant5129e0b7906bdd2b5c4778507d8f20ea3e98c8789e6d3e955a08f56c7426d0e1.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6499b801b9870d1ca1f79b8ffb1a9c9fa987cbd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
