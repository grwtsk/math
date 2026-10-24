# HolomophicOn_riemannZeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9b3882075cca567abe6de4cc789563c01afddbf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1475,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbc6f590890af09110d0ac3d99d93ef99331fa2813f16d7b7f57c2440b3ae1d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd422d54-c9aa-33f4-ad57-4bd6e2845fa7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5482e755-2cba-8452-0081-66d7d4ab91f9",
  "kind": "lemma",
  "lexical_name": "HolomophicOn_riemannZeta",
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
  "slug": "holomophicon-riemannzeta--fbff4da533ca7d61da56c9ed",
  "source": {
    "blob": "c9b3882075cca567abe6de4cc789563c01afddbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1487,
    "line": 1475,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variantfbc6f590890af09110d0ac3d99d93ef99331fa2813f16d7b7f57c2440b3ae1d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbff4da533ca7d61da56c9ed771bed2e71e9788bd3085767bd3a08ab074f7703",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variantfbc6f590890af09110d0ac3d99d93ef99331fa2813f16d7b7f57c2440b3ae1d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5482e755-2cba-8452-0081-66d7d4ab91f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1475–1487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HolomophicOn_riemannZeta :
    HolomorphicOn ζ {s : ℂ | s ≠ 1} := by
  intro z hz
  simp only [mem_setOf_eq] at hz
  exact (differentiableAt_riemannZeta hz).differentiableWithinAt

@[blueprint
  (title := "isPathConnected-aux")
  (statement := /-- The set $\{s\in \C\mid \Re(s)>0 ∧ s \ne 1\}$ is path-connected. -/)
  (proof := /--
  Construct explicit paths from $2$ to any point, either a line segment or two joined ones.
  -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variantfbc6f590890af09110d0ac3d99d93ef99331fa2813f16d7b7f57c2440b3ae1d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variantfbc6f590890af09110d0ac3d99d93ef99331fa2813f16d7b7f57c2440b3ae1d8.lean#L1475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9b3882075cca567abe6de4cc789563c01afddbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
