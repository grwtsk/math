# findWithKey?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c10e2114057b3cdc34010f5383c9342ba631b9e88e08ada825f0c1797184d02",
  "kind": "def",
  "lexical_name": "findWithKey?",
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
  "slug": "findwithkey--ae394f2784b894c4b3be9d78",
  "source": {
    "blob": "b3a875c63ae58a558b9a7d73e2e4ed58aead4beb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae394f2784b894c4b3be9d7809e501e168129bace6bb1546e53781a86fbd343a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c10e2114057b3cdc34010f5383c9342ba631b9e88e08ada825f0c1797184d02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findWithKey? (e : Expr) (map : EMap α) : MetaM (Option (Expr × α)) := do
  let lctx ← getLCtx
  for i in ← map.getCandidates e do
    let some (e', a) := map.rep[i]!
      | continue
    if e'.hasAnyFVar (! lctx.contains ·) then
      continue
    if ← isDefEqReducibleRigid e e' then
      return some (e', a)
  return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3a875c63ae58a558b9a7d73e2e4ed58aead4beb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
