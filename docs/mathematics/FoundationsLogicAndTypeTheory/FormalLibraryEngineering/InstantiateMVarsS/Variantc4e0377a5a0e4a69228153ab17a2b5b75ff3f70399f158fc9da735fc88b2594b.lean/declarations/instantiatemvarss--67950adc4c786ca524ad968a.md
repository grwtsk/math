# instantiateMVarsS

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0ad708a40fbd3f0b9eff66789709ce42dd4e317245e24977adc8fdaf7000340",
  "kind": "def",
  "lexical_name": "instantiateMVarsS",
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
  "slug": "instantiatemvarss--67950adc4c786ca524ad968a",
  "source": {
    "blob": "2cbd03caeee53f040712fe0222419d5eaba5c8b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVarsS/Variantc4e0377a5a0e4a69228153ab17a2b5b75ff3f70399f158fc9da735fc88b2594b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67950adc4c786ca524ad968a735668a7c51545f0457c0547c01969c1dd7d2b22",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVarsS/Variantc4e0377a5a0e4a69228153ab17a2b5b75ff3f70399f158fc9da735fc88b2594b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0ad708a40fbd3f0b9eff66789709ce42dd4e317245e24977adc8fdaf7000340`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def instantiateMVarsS (e : Expr) : SymM Expr := do
  if e.hasMVar then
    -- **Note**: If this is a bottleneck, write a new function that combines both steps.
    shareCommon (← instantiateMVars e)
  else
    return e

/--
Head-only variant of `instantiateMVarsS`: instantiates and reshares only when the head of `e` is a
metavariable, otherwise returns `e` unchanged.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVarsS/Variantc4e0377a5a0e4a69228153ab17a2b5b75ff3f70399f158fc9da735fc88b2594b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVarsS/Variantc4e0377a5a0e4a69228153ab17a2b5b75ff3f70399f158fc9da735fc88b2594b.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cbd03caeee53f040712fe0222419d5eaba5c8b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
