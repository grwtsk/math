# heatGenerator_isHermitian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb8d503f9f61dfa3527c69ca765868ddb5afa229",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/857ad9e0337331c7b70334a6ecfcdc211d1ba15dfa18ae63859aee1cdb65c758.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b60019d0-0b8a-14cd-e5a7-e5e6b1dbc766",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77b47e4c-acdd-bffd-5925-9e8fbb4f12a2",
  "kind": "theorem",
  "lexical_name": "heatGenerator_isHermitian",
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
  "slug": "heatgenerator-ishermitian--0e966bbafaddf409726fb2e0",
  "source": {
    "blob": "fb8d503f9f61dfa3527c69ca765868ddb5afa229",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 36,
    "path": "GRWTSK/Analysis/Heat/Variant857ad9e0337331c7b70334a6ecfcdc211d1ba15dfa18ae63859aee1cdb65c758.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e966bbafaddf409726fb2e03c14cbbb85a426ac3e6febb609bb5de90908d1c3",
  "verification": {
    "reference": "docs/verification/Analysis/Heat/Variant857ad9e0337331c7b70334a6ecfcdc211d1ba15dfa18ae63859aee1cdb65c758.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77b47e4c-acdd-bffd-5925-9e8fbb4f12a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heatGenerator_isHermitian
    {dirac : FiniteOperator Index Index}
    (hermitian : dirac.IsHermitian)
    (s : ℝ) :
    ((-(s : ℂ)) • (dirac * dirac)).IsHermitian := by
  apply (diracSquare_isHermitian hermitian).smul
  simp [isSelfAdjoint_iff]

/-- Every finite heat matrix is Hermitian. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Heat/Variant857ad9e0337331c7b70334a6ecfcdc211d1ba15dfa18ae63859aee1cdb65c758.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Heat/Variant857ad9e0337331c7b70334a6ecfcdc211d1ba15dfa18ae63859aee1cdb65c758.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb8d503f9f61dfa3527c69ca765868ddb5afa229` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
