# actual_complete_short_multiples

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6b546e2-dd25-5bd0-8e9f-cbea70b7446c",
  "kind": "theorem",
  "lexical_name": "actual_complete_short_multiples",
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
  "slug": "actual-complete-short-multiples--f3dac53ac8827ca5e23e7161",
  "source": {
    "blob": "619f6fbc3a79aacaffb61bdd4b3f8ffc844a7c60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 74,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variantf29330be0012958d8206c0758a16eb0734b3aec73cbb1d1a4a4c73b241d6b371.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3dac53ac8827ca5e23e7161b222e337d44e43f6c6e560c37b57ac25c7e83916",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variantf29330be0012958d8206c0758a16eb0734b3aec73cbb1d1a4a4c73b241d6b371.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6b546e2-dd25-5bd0-8e9f-cbea70b7446c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_complete_short_multiples (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      (∑ m ∈ longInventory A, vonMangoldt m *
        (∑ j ∈ Finset.Icc 1 (vaughanCutoff A / d),
          sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ)))) =
      ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A (m : ℝ) := by
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro m _
  have he := complete_short_multiple_sum (vaughanCutoff A)
    (vaughanCutoff_pos A hA)
    (fun n => sourcePlainWeight A ((m * n : ℕ) : ℝ))
  unfold realMoebius
  calc
    _ = vonMangoldt m * (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        (moebius d : ℝ) * (∑ j ∈ Finset.Icc 1 (vaughanCutoff A / d),
          sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ))) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro d _
      ring
    _ = _ := by rw [he]; simp only [Nat.mul_one]

/-- The divisible diagonal collapses to the OLD uncentered diagonal, at its sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variantf29330be0012958d8206c0758a16eb0734b3aec73cbb1d1a4a4c73b241d6b371.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variantf29330be0012958d8206c0758a16eb0734b3aec73cbb1d1a4a4c73b241d6b371.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `619f6fbc3a79aacaffb61bdd4b3f8ffc844a7c60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
