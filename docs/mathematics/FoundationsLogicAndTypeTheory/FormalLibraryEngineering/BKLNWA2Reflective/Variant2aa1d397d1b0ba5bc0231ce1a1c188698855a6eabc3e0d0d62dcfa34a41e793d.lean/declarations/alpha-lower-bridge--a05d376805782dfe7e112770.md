# alpha_lower_bridge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f006a2d8d690d03131faf32a3cb0347a3f237b79",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2aa1d397d1b0ba5bc0231ce1a1c188698855a6eabc3e0d0d62dcfa34a41e793d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7babb088-aa11-280d-c19c-10f005e1633d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f9dda85-b4ed-0dde-4d64-f34579b28365",
  "kind": "lemma",
  "lexical_name": "alpha_lower_bridge",
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
  "slug": "alpha-lower-bridge--a05d376805782dfe7e112770",
  "source": {
    "blob": "f006a2d8d690d03131faf32a3cb0347a3f237b79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BKLNWA2Reflective/Variant2aa1d397d1b0ba5bc0231ce1a1c188698855a6eabc3e0d0d62dcfa34a41e793d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a05d376805782dfe7e11277002f72a1387765b4bfabb4b126a2cebc36bf985b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BKLNWA2Reflective/Variant2aa1d397d1b0ba5bc0231ce1a1c188698855a6eabc3e0d0d62dcfa34a41e793d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f9dda85-b4ed-0dde-4d64-f34579b28365`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma alpha_lower_bridge (b N : ℕ) (target : ℚ)
    (hfloor : ⌊(b : ℝ) / log 2⌋₊ = N)
    (hb : b ≥ 1 := by norm_num)
    (hexppos : checkExpBLoGe1 b proofConfig.precision proofConfig.taylorDepth = true)
    (h_check : checkBKLNWAlphaExpLowerBound b N target proofConfig = true) :
    (target : ℝ) ≤ (1 + 193571378 / (10:ℝ)^16) * f (exp (b : ℝ)) := by
  rw [f_to_engine b N hfloor]
  rw [← one_plus_alpha_eq]
  exact verify_bklnwAlpha_exp_lower b N target proofConfig
    (by simp only [proofConfig]; norm_num) hb hexppos h_check

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BKLNWA2Reflective/Variant2aa1d397d1b0ba5bc0231ce1a1c188698855a6eabc3e0d0d62dcfa34a41e793d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BKLNWA2Reflective/Variant2aa1d397d1b0ba5bc0231ce1a1c188698855a6eabc3e0d0d62dcfa34a41e793d.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f006a2d8d690d03131faf32a3cb0347a3f237b79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
