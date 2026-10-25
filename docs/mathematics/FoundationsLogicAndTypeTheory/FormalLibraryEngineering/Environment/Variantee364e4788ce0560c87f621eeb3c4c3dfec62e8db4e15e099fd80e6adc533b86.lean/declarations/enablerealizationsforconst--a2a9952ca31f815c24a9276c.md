# enableRealizationsForConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ef31dafea98927eecc39de63b76ec1c3e9bd330291e908690e82cd76899229a",
  "kind": "def",
  "lexical_name": "enableRealizationsForConst",
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
  "slug": "enablerealizationsforconst--a2a9952ca31f815c24a9276c",
  "source": {
    "blob": "33928512dadcfa2e42a307499e9228596da0341a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 880,
    "line": 862,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variantee364e4788ce0560c87f621eeb3c4c3dfec62e8db4e15e099fd80e6adc533b86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2a9952ca31f815c24a9276c2470d0d42e6e78d80ad686b6d039277e3992a880",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variantee364e4788ce0560c87f621eeb3c4c3dfec62e8db4e15e099fd80e6adc533b86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ef31dafea98927eecc39de63b76ec1c3e9bd330291e908690e82cd76899229a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 862–880.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def enableRealizationsForConst (env : Environment) (opts : Options) (c : Name) :
    BaseIO Environment := do
  -- Meta code working on a non-exported declaration should usually do so inside `withoutExporting`
  -- but we're lenient here in case this call is the only one that needs the setting.
  if env.setExporting false |>.findAsync? c |>.isNone then
    panic! s!"declaration {c} not found in environment"
    return env
  if let some asyncCtx := env.asyncCtx? then
    if !asyncCtx.mayContain c then
      panic! s!"{c} is outside current context {asyncCtx.declPrefix}"
      return env
  if env.localRealizationCtxMap.contains c then
    return env
  return { env with localRealizationCtxMap := env.localRealizationCtxMap.insert c {
    -- safety: `RealizationContext` is private
    env := unsafe unsafeCast env
    opts
    realizeMapRef := (← IO.mkRef {}) } }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variantee364e4788ce0560c87f621eeb3c4c3dfec62e8db4e15e099fd80e6adc533b86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variantee364e4788ce0560c87f621eeb3c4c3dfec62e8db4e15e099fd80e6adc533b86.lean#L862).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33928512dadcfa2e42a307499e9228596da0341a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
