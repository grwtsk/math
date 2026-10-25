# normalizedCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0058acc4de36f5bd7dc07f84efa3f268ea558179519cc665259f513fae3985a7",
  "kind": "def",
  "lexical_name": "normalizedCategory",
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
  "slug": "normalizedcategory--fc55cfede0f0fed98756dc51",
  "source": {
    "blob": "81f1d420901e10096cb98343f083590d1f765a30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 246,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant78e7fb43e2514d5aa821d7f8a0c9cacac878b944c8cfa60108f8c124fa54f9cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc55cfede0f0fed98756dc513bad6ff0f8a52f23d390487beee7f709c70ee4fe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant78e7fb43e2514d5aa821d7f8a0c9cacac878b944c8cfa60108f8c124fa54f9cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0058acc4de36f5bd7dc07f84efa3f268ea558179519cc665259f513fae3985a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalizedCategory (kind : String) : Nat :=
  if kind = "sourceFile" then 0
  else if kind.contains "namespace" then 2
  else if kind.contains "import" then 3
  else if kind.contains "declaration" || kind.contains "command" then 4
  else if kind.contains "fun" || kind.contains "def" || kind.contains "theorem" then 5
  else if kind.contains "struct" || kind.contains "inductive" || kind.contains "class" then 7
  else if kind.contains "block" || kind.contains "do" then 9
  else if kind.contains "term" || kind.contains "expr" then 11
  else if kind.contains "attr" then 12
  else 14

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant78e7fb43e2514d5aa821d7f8a0c9cacac878b944c8cfa60108f8c124fa54f9cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant78e7fb43e2514d5aa821d7f8a0c9cacac878b944c8cfa60108f8c124fa54f9cd.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81f1d420901e10096cb98343f083590d1f765a30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
