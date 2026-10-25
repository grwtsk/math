# finitePartialIsoPreservesListedEdges_project

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61e117d7-df63-47ec-916d-3a3af8cd1473",
  "kind": "theorem",
  "lexical_name": "finitePartialIsoPreservesListedEdges_project",
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
  "slug": "finitepartialisopreserveslistededges-project--fe163df232b22c4c8fb8940d",
  "source": {
    "blob": "f47665c6fd650080e150cf43456750e6437ce5e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 273,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f5468656f72656d466f726d616c697a6174696f6e2e6c65616e/Variant9bac85923dace99d6fc39f0a5add5970af8830afcaf1452c7e38451e428c0f3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe163df232b22c4c8fb8940dbb3e1c3daac3ff6284705b9def7bec975fa5719c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f5468656f72656d466f726d616c697a6174696f6e2e6c65616e/Variant9bac85923dace99d6fc39f0a5add5970af8830afcaf1452c7e38451e428c0f3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61e117d7-df63-47ec-916d-3a3af8cd1473`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finitePartialIsoPreservesListedEdges_project
    (P : Think.Pipeline.Center.RadoFinitePartialIso.FinitePartialIsoData)
    {a b : Nat}
    (ha : a ∈ P.domain)
    (hb : b ∈ P.domain)
    (hne : a ≠ b) :
    (Think.Pipeline.Center.RadoExtension.bitRadoEdge (P.map a) (P.map b) ↔
      P.G.edge a b = true) := by
  exact
    Think.Pipeline.Center.RadoFinitePartialIso.finitePartialIso_preserves_listed_edges
      P ha hb hne

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f5468656f72656d466f726d616c697a6174696f6e2e6c65616e/Variant9bac85923dace99d6fc39f0a5add5970af8830afcaf1452c7e38451e428c0f3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f5468656f72656d466f726d616c697a6174696f6e2e6c65616e/Variant9bac85923dace99d6fc39f0a5add5970af8830afcaf1452c7e38451e428c0f3d.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f47665c6fd650080e150cf43456750e6437ce5e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
