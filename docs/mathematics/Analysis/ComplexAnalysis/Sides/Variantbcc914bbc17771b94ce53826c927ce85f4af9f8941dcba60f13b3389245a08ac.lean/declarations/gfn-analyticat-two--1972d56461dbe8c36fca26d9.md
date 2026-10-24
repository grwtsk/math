# Gfn_analyticAt_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c6befe86b10230e4d760832461349890375289e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba23ee42-e5a4-0e9d-4c74-613c8393782f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66f0c0a4-caeb-4d37-9e9b-98ed13d61fcf",
  "kind": "lemma",
  "lexical_name": "Gfn_analyticAt_two",
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
  "slug": "gfn-analyticat-two--1972d56461dbe8c36fca26d9",
  "source": {
    "blob": "c6befe86b10230e4d760832461349890375289e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 74,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Sides/Variantbcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1972d56461dbe8c36fca26d9caa220569714ce9f4feac7c224c71edcc9c8976f",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Sides/Variantbcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66f0c0a4-caeb-4d37-9e9b-98ed13d61fcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Gfn_analyticAt_two (t : ℝ) : AnalyticAt ℂ Gfn (2 + t * I) := by
  unfold Gfn
  exact (Lfn_analyticAt (by simp) (two_line_ne_one t)).add
    (logDeriv_zeta_analyticAt (two_line_ne_one t) (zeta_two_line_ne_zero t))

/-- logDeriv Y = logDeriv Pneg + logDeriv ζ + logDeriv G on the line Re s = 2 (where G ≠ 0). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Sides/Variantbcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Sides/Variantbcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6befe86b10230e4d760832461349890375289e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
