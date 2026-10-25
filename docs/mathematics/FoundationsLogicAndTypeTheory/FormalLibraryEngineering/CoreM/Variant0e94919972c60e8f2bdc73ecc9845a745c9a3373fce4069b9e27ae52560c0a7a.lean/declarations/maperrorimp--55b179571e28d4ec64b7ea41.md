# mapErrorImp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2f1e7fd29841c3a83fd904519d2cd136d3f552c9f67d8e941a33887a9d93d4e",
  "kind": "def",
  "lexical_name": "mapErrorImp",
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
  "slug": "maperrorimp--55b179571e28d4ec64b7ea41",
  "source": {
    "blob": "61d372630f94a66febd188f998aa81b1361a4ce0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 862,
    "line": 852,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant0e94919972c60e8f2bdc73ecc9845a745c9a3373fce4069b9e27ae52560c0a7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55b179571e28d4ec64b7ea41d19ca2b6a249c2b65738da2070ca1d68efdd036e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant0e94919972c60e8f2bdc73ecc9845a745c9a3373fce4069b9e27ae52560c0a7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e2f1e7fd29841c3a83fd904519d2cd136d3f552c9f67d8e941a33887a9d93d4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 852–862.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mapErrorImp (x : CoreM α) (f : MessageData → MessageData) : CoreM α := do
  try
    x
  catch
    | Exception.error ref msg =>
      let msg' := f msg
      let msg' ← addMessageContext msg'
      throw <| Exception.error ref msg'
    | ex => throw ex

/-- Execute `x`, and apply `f` to the produced error message -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant0e94919972c60e8f2bdc73ecc9845a745c9a3373fce4069b9e27ae52560c0a7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant0e94919972c60e8f2bdc73ecc9845a745c9a3373fce4069b9e27ae52560c0a7a.lean#L852).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61d372630f94a66febd188f998aa81b1361a4ce0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
