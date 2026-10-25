# withIncreasedTransitionDepth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ec317f7c73920c49fb4c180466eacbdea9973bb15a0e9b65979dda4543d77ed",
  "kind": "def",
  "lexical_name": "withIncreasedTransitionDepth",
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
  "slug": "withincreasedtransitiondepth--c7a78eac008cf7c264216662",
  "source": {
    "blob": "66acf00a746efa21193fe7d141d6cbbe273d867f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 178,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantaf879e6b2469f5349c0e46c3109cff7570b48d97aa69e7e80f1080ac027f4250.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7a78eac008cf7c264216662cf2636da2b6726ef5a9bb374541fb2a8e91b53d3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantaf879e6b2469f5349c0e46c3109cff7570b48d97aa69e7e80f1080ac027f4250.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ec317f7c73920c49fb4c180466eacbdea9973bb15a0e9b65979dda4543d77ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withIncreasedTransitionDepth {α} (go : FunPropM (Option α)) : FunPropM (Option α) := do
  let maxDepth := (← read).config.maxTransitionDepth
  let newDepth := (← read).transitionDepth + 1
  if newDepth > maxDepth then
    trace[Meta.Tactic.fun_prop]
    "maximum transition depth ({maxDepth}) reached
    if you want `fun_prop` to continue then increase the maximum depth with \
    `fun_prop (maxTransitionDepth := {newDepth})`"
    return none
  else
    withReader (fun s => {s with transitionDepth := newDepth}) go

/-- Log error message that will displayed to the user at the end.

Messages are logged only when `transitionDepth = 0` i.e. when `fun_prop` is **not** trying to infer
function property like continuity from another property like differentiability.
The main reason is that if the user forgets to add a continuity theorem for function `foo` then
`fun_prop` should report that there is a continuity theorem for `foo` missing. If we would log
messages `transitionDepth > 0` then user will see messages saying that there is a missing theorem
for differentiability, smoothness, ... for `foo`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantaf879e6b2469f5349c0e46c3109cff7570b48d97aa69e7e80f1080ac027f4250.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantaf879e6b2469f5349c0e46c3109cff7570b48d97aa69e7e80f1080ac027f4250.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66acf00a746efa21193fe7d141d6cbbe273d867f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
