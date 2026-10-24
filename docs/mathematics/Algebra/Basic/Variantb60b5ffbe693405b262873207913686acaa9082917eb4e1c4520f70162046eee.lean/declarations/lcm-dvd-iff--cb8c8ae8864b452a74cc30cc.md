# lcm_dvd_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3daa51f65ae1319070081f4f08951c1a64981bee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 663,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b60b5ffbe693405b262873207913686acaa9082917eb4e1c4520f70162046eee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:286557e6-25f0-b12b-b6fa-1d8fb58f6ebb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0768eef1-54da-d564-81df-1ee697b1266a",
  "kind": "theorem",
  "lexical_name": "lcm_dvd_iff",
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
  "slug": "lcm-dvd-iff--cb8c8ae8864b452a74cc30cc",
  "source": {
    "blob": "3daa51f65ae1319070081f4f08951c1a64981bee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 673,
    "line": 663,
    "path": "GRWTSK/Algebra/Basic/Variantb60b5ffbe693405b262873207913686acaa9082917eb4e1c4520f70162046eee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb8c8ae8864b452a74cc30cc01319ba4f42eb6b6f3628088d234020afa33f7ce",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantb60b5ffbe693405b262873207913686acaa9082917eb4e1c4520f70162046eee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0768eef1-54da-d564-81df-1ee697b1266a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–673.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lcm_dvd_iff [GCDMonoid α] {a b c : α} : lcm a b ∣ c ↔ a ∣ c ∧ b ∣ c := by
  by_cases h : a = 0 ∨ b = 0
  · rcases h with (rfl | rfl) <;>
      simp +contextual only [iff_def, lcm_zero_left, lcm_zero_right,
        zero_dvd_iff, dvd_zero, eq_self_iff_true, and_true, imp_true_iff]
  · obtain ⟨h1, h2⟩ := not_or.1 h
    have h : gcd a b ≠ 0 := fun H => h1 ((gcd_eq_zero_iff _ _).1 H).1
    rw [← mul_dvd_mul_iff_left h, (gcd_mul_lcm a b).dvd_iff_dvd_left, ←
      (gcd_mul_right' c a b).dvd_iff_dvd_right, dvd_gcd_iff, mul_comm b c, mul_dvd_mul_iff_left h1,
      mul_dvd_mul_iff_right h2, and_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantb60b5ffbe693405b262873207913686acaa9082917eb4e1c4520f70162046eee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantb60b5ffbe693405b262873207913686acaa9082917eb4e1c4520f70162046eee.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3daa51f65ae1319070081f4f08951c1a64981bee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
