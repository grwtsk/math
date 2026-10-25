# elabGrindLocals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed87de0cf1141d90c382b70d9422e2f9caf9dc758f88bd8be88acf3765f1b9ab",
  "kind": "def",
  "lexical_name": "elabGrindLocals",
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
  "slug": "elabgrindlocals--ddcb5af86425f89f0378db64",
  "source": {
    "blob": "788dba46ec685bbf05cff5ba54441b470b0dc60d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 195,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ddcb5af86425f89f0378db64e695e574d7ebcca832fd98b1a3616340648c9bef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed87de0cf1141d90c382b70d9422e2f9caf9dc758f88bd8be88acf3765f1b9ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabGrindLocals (params : Grind.Params) : MetaM Grind.Params := do
  let env ← getEnv
  let mut params := params
  let mut added : Array Name := #[]
  for c in ← env.getLocalConstantInfos (skipTheoremSubDecls := true) do
    let name := c.name
    -- Filter similar to LibrarySuggestions.isDeniedPremise (but inlined to avoid dependency)
    -- Skip internal details, but allow private names (which are accessible from current module)
    if name.isInternalDetail && !isPrivateName name then continue
    if c.kind != .defn then continue
    if (← isInstanceReducible name) then continue
    try
      params ← addEMatchTheorem params (mkIdent name) name (.default false) false (warn := false)
      added := added.push name
    catch _ => pure ()
  unless added.isEmpty do
    trace[grind.debug.locals] "{added}"
  return params

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `788dba46ec685bbf05cff5ba54441b470b0dc60d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
