# residual_tail_at_six

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "08e3640523c821981af2e73150b43075ccfe51c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 17,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b64109ca46924dc5f8048c011f493fe1a638d5765801b8c1ed051a9182e75b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ccaa8687-c35c-befb-52ef-c08b1d3b7b49",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd2ea1db-36f7-250c-1b96-97df360244b2",
  "kind": "theorem",
  "lexical_name": "residual_tail_at_six",
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
  "slug": "residual-tail-at-six--0c0507aa349dcd1c4fad9189",
  "source": {
    "blob": "08e3640523c821981af2e73150b43075ccfe51c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 17,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/IndependentBudgetChallenge/Variant0b64109ca46924dc5f8048c011f493fe1a638d5765801b8c1ed051a9182e75b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c0507aa349dcd1c4fad9189869d7fe1afb9247e4f5edbf054cf0f4d0381fb06",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/IndependentBudgetChallenge/Variant0b64109ca46924dc5f8048c011f493fe1a638d5765801b8c1ed051a9182e75b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd2ea1db-36f7-250c-1b96-97df360244b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_tail_at_six (K A : ℝ) (hA : 6 ≤ A)
    (hQ : criticalRelativePairing A ≤ K) :
    mertensResidual A ≤ K - 6 / 91 := by
  have h := residual_upper_of_criticalRelative_tail K 6 A (by norm_num) hA hQ
  rw [baseline_at_six] at h
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/IndependentBudgetChallenge/Variant0b64109ca46924dc5f8048c011f493fe1a638d5765801b8c1ed051a9182e75b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/IndependentBudgetChallenge/Variant0b64109ca46924dc5f8048c011f493fe1a638d5765801b8c1ed051a9182e75b4.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08e3640523c821981af2e73150b43075ccfe51c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
