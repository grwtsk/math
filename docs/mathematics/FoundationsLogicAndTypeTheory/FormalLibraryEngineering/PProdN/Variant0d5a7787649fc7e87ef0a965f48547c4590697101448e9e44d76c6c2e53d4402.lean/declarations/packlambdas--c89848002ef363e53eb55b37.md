# packLambdas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29b8bf3dce963d7cfcbc0f5cb7419beb6e2eb533c3b3c32115a86410b4d906cf",
  "kind": "def",
  "lexical_name": "packLambdas",
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
  "slug": "packlambdas--c89848002ef363e53eb55b37",
  "source": {
    "blob": "a8bc9b1ae16006d604e21a84fd5de221cb9a2608",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 179,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant0d5a7787649fc7e87ef0a965f48547c4590697101448e9e44d76c6c2e53d4402.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c89848002ef363e53eb55b37919be8fe354af2268c9daf8ee92713ba4b01ad2f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant0d5a7787649fc7e87ef0a965f48547c4590697101448e9e44d76c6c2e53d4402.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29b8bf3dce963d7cfcbc0f5cb7419beb6e2eb533c3b3c32115a86410b4d906cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def packLambdas (type : Expr) (es : Array Expr) : MetaM Expr := do
  if h : es.size = 1 then
    return es[0]
  forallTelescope type fun xs sort => do
    assert! sort.isSort
    -- NB: Use beta, not instantiateLambda; when constructing the belowDict below
    -- we pass `C`, a plain FVar, here
    let es' := es.map (·.beta xs)
    let packed ← PProdN.pack sort.sortLevel! es'
    mkLambdaFVars xs packed

/--
The value analogue to `PProdN.packLambdas`.

It is the identity if `es.size = 1`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant0d5a7787649fc7e87ef0a965f48547c4590697101448e9e44d76c6c2e53d4402.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PProdN/Variant0d5a7787649fc7e87ef0a965f48547c4590697101448e9e44d76c6c2e53d4402.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8bc9b1ae16006d604e21a84fd5de221cb9a2608` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
