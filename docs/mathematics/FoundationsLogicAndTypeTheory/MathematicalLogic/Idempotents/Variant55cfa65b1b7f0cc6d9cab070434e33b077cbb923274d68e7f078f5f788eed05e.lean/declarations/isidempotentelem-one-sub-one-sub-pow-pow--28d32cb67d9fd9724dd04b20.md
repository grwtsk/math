# isIdempotentElem_one_sub_one_sub_pow_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a0d12e7f5924330176fd12dba6740d9fa10d8340",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/55cfa65b1b7f0cc6d9cab070434e33b077cbb923274d68e7f078f5f788eed05e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6080caaf-7c8f-1ce9-6153-a0c7e94b05ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad241443-bc55-d1d8-9fc8-b76f8cad0ff0",
  "kind": "theorem",
  "lexical_name": "isIdempotentElem_one_sub_one_sub_pow_pow",
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
  "slug": "isidempotentelem-one-sub-one-sub-pow-pow--28d32cb67d9fd9724dd04b20",
  "source": {
    "blob": "a0d12e7f5924330176fd12dba6740d9fa10d8340",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 188,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variant55cfa65b1b7f0cc6d9cab070434e33b077cbb923274d68e7f078f5f788eed05e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28d32cb67d9fd9724dd04b20e9098f1381604608e965d2e04fef084894e27043",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variant55cfa65b1b7f0cc6d9cab070434e33b077cbb923274d68e7f078f5f788eed05e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad241443-bc55-d1d8-9fc8-b76f8cad0ff0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIdempotentElem_one_sub_one_sub_pow_pow
    (x : R) (n : ℕ) (hx : (x - x ^ 2) ^ n = 0) :
    IsIdempotentElem (1 - (1 - x ^ n) ^ n) := by
  have : (x - x ^ 2) ^ n ∣ (1 - (1 - x ^ n) ^ n) - (1 - (1 - x ^ n) ^ n) ^ 2 := by
    conv_rhs => rw [pow_two, ← mul_one_sub, sub_sub_cancel]
    nth_rw 1 3 [← one_pow n]
    rw [← (Commute.one_left x).mul_geom_sum₂, ← (Commute.one_left (1 - x ^ n)).mul_geom_sum₂]
    simp only [sub_sub_cancel, one_pow, one_mul]
    rw [Commute.mul_pow, Commute.mul_mul_mul_comm, ← Commute.mul_pow, mul_one_sub, ← pow_two]
    · exact ⟨_, rfl⟩
    · simp
    · refine .pow_right (.sub_right (.one_right _) (.sum_left _ _ _ fun _ _ ↦ .pow_left ?_ _)) _
      simp
    · exact .sub_left (.one_left _) (.sum_right _ _ _ fun _ _ ↦ .pow_right rfl _)
  rwa [hx, zero_dvd_iff, sub_eq_zero, eq_comm, pow_two] at this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variant55cfa65b1b7f0cc6d9cab070434e33b077cbb923274d68e7f078f5f788eed05e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variant55cfa65b1b7f0cc6d9cab070434e33b077cbb923274d68e7f078f5f788eed05e.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0d12e7f5924330176fd12dba6740d9fa10d8340` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
