# isFundamentalDiscr_iff_forall_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d2be496eac6c11f86f77bb8870f493a6ea7f8df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a781744e6e57478827dff13152e1b0eb4c142ab5a0fa4816945b5f93fa2d20c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:702458e3-7ce4-3f82-6b91-0bb75f93e24c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:306a203d-e23d-3f55-bea5-748029e129e0",
  "kind": "theorem",
  "lexical_name": "isFundamentalDiscr_iff_forall_prime",
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
  "slug": "isfundamentaldiscr-iff-forall-prime--3dffd9b89534d15092c5fe53",
  "source": {
    "blob": "9d2be496eac6c11f86f77bb8870f493a6ea7f8df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 79,
    "path": "GRWTSK/NumberTheory/FundamentalDiscriminant/Varianta781744e6e57478827dff13152e1b0eb4c142ab5a0fa4816945b5f93fa2d20c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dffd9b89534d15092c5fe532d9eb82ab71fdb7c1e5c0ff0f8e590a75b47efff",
  "verification": {
    "reference": "docs/verification/NumberTheory/FundamentalDiscriminant/Varianta781744e6e57478827dff13152e1b0eb4c142ab5a0fa4816945b5f93fa2d20c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:306a203d-e23d-3f55-bea5-748029e129e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isFundamentalDiscr_iff_forall_prime :
    IsFundamentalDiscr D ↔ (D % 4 = 0 ∨ D % 4 = 1) ∧
      ∀ p : ℕ, p.Prime → ¬ ∃ e : ℤ, D = (p : ℤ) ^ 2 * e ∧ (e % 4 = 0 ∨ e % 4 = 1) := by
  rw [Nat.forall_prime_iff_two_and_odd, isFundamentalDiscr_def]
  simp only [Int.dvd_iff_emod_eq_zero, not_exists, ne_eq, Nat.cast_ofNat, reducePow,
    not_and, not_or, and_congr_right_iff]
  refine fun h₁ _ ↦ forall_congr' fun p ↦ imp_congr_right fun _ ↦ imp_congr_right fun hp ↦ ?_
  rw [← Int.dvd_iff_emod_eq_zero, dvd_def, not_exists]
  refine forall_congr' fun x ↦ imp_congr_right fun hD ↦ (iff_false_left not_false).mpr ?_
  rw [hD, Int.mul_emod, Int.sq_emod_four, Int.odd_iff.mp hp.natCast, one_mul, Int.emod_emod] at h₁
  rwa [not_and_or, not_not, not_not]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FundamentalDiscriminant/Varianta781744e6e57478827dff13152e1b0eb4c142ab5a0fa4816945b5f93fa2d20c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FundamentalDiscriminant/Varianta781744e6e57478827dff13152e1b0eb4c142ab5a0fa4816945b5f93fa2d20c7.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d2be496eac6c11f86f77bb8870f493a6ea7f8df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
