# forEligibleDeclsM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d12954efedc6ec24504c634cc22ddd0dd61dbd76a11fad75aa68d77773aa51c0",
  "kind": "def",
  "lexical_name": "forEligibleDeclsM",
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
  "slug": "foreligibledeclsm--9b1594a86de1d611ebaaea59",
  "source": {
    "blob": "7a9294280b049eb4abf03d3ed4494afb2442c41b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EligibleHeaderDecls/Variantb5bf660ba26ec5e4d29682dba6b90187b2b8555318e5b1d81dca625658ba488a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b1594a86de1d611ebaaea590469e6ae6422d54cc647f9bdb1b64d61cdc78c97",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EligibleHeaderDecls/Variantb5bf660ba26ec5e4d29682dba6b90187b2b8555318e5b1d81dca625658ba488a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d12954efedc6ec24504c634cc22ddd0dd61dbd76a11fad75aa68d77773aa51c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def forEligibleDeclsM [Monad m] [MonadEnv m] [MonadLiftT MetaM m]
    (f : Name → EligibleDecl → m PUnit) : m PUnit := do
  let env ← getEnv
  (← getEligibleHeaderDecls env).forM f
  -- map₂ are exactly the local decls
  env.constants.map₂.forM fun name c => do
    if allowCompletion env name then
      f name {
        info := c
        -- Lazily compute the kind and the tags when needed.
        kind := getCompletionKindForDecl c
        tags := getCompletionTagsForDecl name
      }

/-- Checks whether this declaration can appear in completion results. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EligibleHeaderDecls/Variantb5bf660ba26ec5e4d29682dba6b90187b2b8555318e5b1d81dca625658ba488a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EligibleHeaderDecls/Variantb5bf660ba26ec5e4d29682dba6b90187b2b8555318e5b1d81dca625658ba488a.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a9294280b049eb4abf03d3ed4494afb2442c41b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
