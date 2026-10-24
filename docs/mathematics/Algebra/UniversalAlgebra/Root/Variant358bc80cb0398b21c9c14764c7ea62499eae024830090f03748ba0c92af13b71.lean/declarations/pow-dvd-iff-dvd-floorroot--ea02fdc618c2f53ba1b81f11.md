# pow_dvd_iff_dvd_floorRoot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7867f668ecb48eaa124f656ba5f8e4a6c005c06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6333928-251c-9876-772b-4d28d547519a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:559917f8-cfd7-456f-d7c1-4054fa4b07ee",
  "kind": "lemma",
  "lexical_name": "pow_dvd_iff_dvd_floorRoot",
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
  "slug": "pow-dvd-iff-dvd-floorroot--ea02fdc618c2f53ba1b81f11",
  "source": {
    "blob": "e7867f668ecb48eaa124f656ba5f8e4a6c005c06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 84,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea02fdc618c2f53ba1b81f11dff22cf845057965cd3ac2a4639e75ecf4a94735",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:559917f8-cfd7-456f-d7c1-4054fa4b07ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_dvd_iff_dvd_floorRoot : a ^ n ∣ b ↔ a ∣ floorRoot n b := by
  obtain rfl | hn := eq_or_ne n 0
  · simp
  obtain rfl | hb := eq_or_ne b 0
  · simp
  obtain rfl | ha := eq_or_ne a 0
  · simp [hn]
  rw [← factorization_le_iff_dvd (pow_ne_zero _ ha) hb,
    ← factorization_le_iff_dvd ha (floorRoot_ne_zero.2 ⟨hn, hb⟩), factorization_pow,
    factorization_floorRoot, le_floorDiv_iff_smul_le (β := ℕ →₀ ℕ) (pos_iff_ne_zero.2 hn)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7867f668ecb48eaa124f656ba5f8e4a6c005c06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
