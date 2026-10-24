# exists_numbers_in_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c5823ab79a726a006b41e36289498e1865d86de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86e35f82ed5d5fbe212c3da9b05ec2834ac07d3537c62ec9064996963d0724b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f437f241-d899-a41d-2d2b-f1af4b0fec3f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12821a8d-7b08-c825-2e4a-32cfdb345f42",
  "kind": "lemma",
  "lexical_name": "exists_numbers_in_interval",
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
  "slug": "exists-numbers-in-interval--83fdf5a8ff3da0abe34dbfd3",
  "source": {
    "blob": "3c5823ab79a726a006b41e36289498e1865d86de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 46,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant86e35f82ed5d5fbe212c3da9b05ec2834ac07d3537c62ec9064996963d0724b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83fdf5a8ff3da0abe34dbfd34b56457b2568cb13d8026678df82786beb84e630",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant86e35f82ed5d5fbe212c3da9b05ec2834ac07d3537c62ec9064996963d0724b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12821a8d-7b08-c825-2e4a-32cfdb345f42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_numbers_in_interval {n : ℕ} (hn : 100 ≤ n) :
    ∃ l : ℕ, n + 4 * l ≤ 2 * l ^ 2 ∧ 2 * l ^ 2 + 4 * l ≤ 2 * n := by
  have hn' : 1 ≤ Nat.sqrt (n + 1) := by
    rw [Nat.le_sqrt]
    apply Nat.le_add_left
  have h₁ := Nat.sqrt_le' (n + 1)
  have h₂ := Nat.succ_le_succ_sqrt' (n + 1)
  have h₃ : 10 ≤ (n + 1).sqrt := by
    rw [Nat.le_sqrt]
    omega
  rw [← Nat.sub_add_cancel hn'] at h₁ h₂ h₃
  set l := (n + 1).sqrt - 1
  refine ⟨l, ?_, ?_⟩
  · calc n + 4 * l ≤ (l ^ 2 + 4 * l + 2) + 4 * l := by linarith only [h₂]
      _ ≤ 2 * l ^ 2 := by nlinarith only [h₃]
  · linarith only [h₁]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant86e35f82ed5d5fbe212c3da9b05ec2834ac07d3537c62ec9064996963d0724b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant86e35f82ed5d5fbe212c3da9b05ec2834ac07d3537c62ec9064996963d0724b1.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c5823ab79a726a006b41e36289498e1865d86de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
