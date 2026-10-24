# safe_insert_of_performRupCheck_insertRup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c1af8fbcc72a021cd3bc9f7d894e3ac965bd79b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 749,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07f2d843-919e-f444-f363-2516c4beb561",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64d7db43-cc40-1965-b81f-b5eb5de59d52",
  "kind": "theorem",
  "lexical_name": "safe_insert_of_performRupCheck_insertRup",
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
  "slug": "safe-insert-of-performrupcheck-insertrup--3f39f5dde78516af33f9c717",
  "source": {
    "blob": "6c1af8fbcc72a021cd3bc9f7d894e3ac965bd79b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 763,
    "line": 749,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f39f5dde78516af33f9c7170d13ba56535baffce718057a09bdf912891bcb08",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64d7db43-cc40-1965-b81f-b5eb5de59d52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 749–763.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem safe_insert_of_performRupCheck_insertRup {n : Nat} (f : DefaultFormula n)
    (f_readyForRupAdd : ReadyForRupAdd f) (c : DefaultClause n) (rupHints : Array Nat) :
    (performRupCheck (insertRupUnits f (negate c)).1 rupHints).2.2.1 = true
      →
    Limplies (PosFin n) f (f.insert c) := by
  intro performRupCheck_success p pf
  simp only [performRupCheck] at performRupCheck_success
  simp only [formulaEntails_def, List.all_eq_true, decide_eq_true_eq]
  intro c' c'_in_fc
  rw [insert_iff] at c'_in_fc
  rcases c'_in_fc with c'_eq_c | c'_in_f
  · rw [c'_eq_c]
    exact sat_of_confirmRupHint_insertRup_fold f f_readyForRupAdd c rupHints p pf performRupCheck_success
  · grind [formulaEntails_def]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Variant2d02293c26357d17f81371a1dd1330a1805da9efc4636a013365ade4b1a5b530.lean#L749).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c1af8fbcc72a021cd3bc9f7d894e3ac965bd79b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
