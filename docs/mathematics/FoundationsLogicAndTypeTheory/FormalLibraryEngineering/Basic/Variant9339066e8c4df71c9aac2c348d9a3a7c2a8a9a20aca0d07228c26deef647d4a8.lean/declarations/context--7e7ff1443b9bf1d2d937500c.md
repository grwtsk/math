# Context

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee219497b06351e1c2cbc1be560fa6ae905ac2572e6b7b94e9b2741f0dfc15df",
  "kind": "structure",
  "lexical_name": "Context",
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
  "slug": "context--7e7ff1443b9bf1d2d937500c",
  "source": {
    "blob": "b9743855e4f667c6fad1cee0803ee003e513baef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 466,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e7ff1443b9bf1d2d937500c49c51c9d012f6f462f7fe4b3aee80b7c0940b125",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee219497b06351e1c2cbc1be560fa6ae905ac2572e6b7b94e9b2741f0dfc15df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Context where
  keyedConfig : ConfigWithKey := default
  /--
  When `trackZetaDelta = true`, we track all free variables that have been zetaDelta-expanded.
  That is, suppose the local context contains
  the declaration `x : t := v`, and we reduce `x` to `v`, then we insert `x` into `State.zetaDeltaFVarIds`.
  We use `trackZetaDelta` to discover which let-declarations `let x := v; e` can be represented as `have x := v; e`.
  When we find these declarations we set their `nondep` flag with `true`.
  To find these let-declarations in a given term `s`, we
  1- Reset `State.zetaDeltaFVarIds`
  2- Set `trackZetaDelta := true`
  3- Type-check `s`.

  Note that, we do not include this field in the `Config` structure because this field is not
  taken into account while caching results. See also field `zetaDeltaSet`.
  -/
  trackZetaDelta     : Bool := false
  /--
  If `config.zetaDelta := false`, we may select specific local declarations to be unfolded using
  the field `zetaDeltaSet`. Note that, we do not include this field in the `Config` structure
  because this field is not taken into account while caching results.
  Moreover, we reset all caches whenever setting it.
  -/
  zetaDeltaSet : FVarIdSet := {}
  /-- Local context -/
  lctx              : LocalContext         := {}
  /-- Local instances in `lctx`. -/
  localInstances    : LocalInstances       := #[]
  /-- Not `none` when inside of an `isDefEq` test. See `PostponedEntry`. -/
  defEqCtx?         : Option DefEqContext  := none
  /--
    Track the number of nested `synthPending` invocations. Nested invocations can happen
    when the type class resolution invokes `synthPending`.

    Remark: `synthPending` fails if `synthPendingDepth > maxSynthPendingDepth`.
  -/
  synthPendingDepth : Nat                  := 0
  /--
    A predicate to control whether a constant can be unfolded or not at `whnf`.
    Note that we do not cache results at `whnf` when `canUnfold?` is not `none`. -/
  canUnfold?        : Option (Config → ConstantInfo → CoreM Bool) := none
  /--
  When `Config.univApprox := true`, this flag is set to `true` when there is no
  progress processing universe constraints.
  -/
  univApprox        : Bool := false
  /--
  `inTypeClassResolution := true` when `isDefEq` is invoked at `tryResolve` in the type class
   resolution module. We don't use `isDefEqProjDelta` when performing TC resolution due to performance issues.
   This is not a great solution, but a proper solution would require a more sophisticated caching mechanism.
  -/
  inTypeClassResolution : Bool := false
  /--
  When `cacheInferType := true`, the `inferType` results are cached if the input term does not contain
  metavariables
  -/
  cacheInferType : Bool := true
deriving Inhabited

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9743855e4f667c6fad1cee0803ee003e513baef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
