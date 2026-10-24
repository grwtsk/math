# reps_entries_le_m'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:392bc3e1-3d59-b3aa-8eb0-4cb8a756344a",
  "kind": "lemma",
  "lexical_name": "reps_entries_le_m'",
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
  "slug": "reps-entries-le-m--e5f19065d3c4fcc267883dd1",
  "source": {
    "blob": "4f2e3e14a62fe92c4d2860a0ec6575c63c23ced4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 144,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5f19065d3c4fcc267883dd13b5277c176233cc55b01e71511c2a0b61eab3f27",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:392bc3e1-3d59-b3aa-8eb0-4cb8a756344a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma reps_entries_le_m' {A : Δ m} (h : A ∈ reps m) (i j : Fin 2) :
    A.1 i j ∈ Finset.Icc (-|m|) |m| := by
  suffices |A.1 i j| ≤ |m| from Finset.mem_Icc.mpr <| abs_le.mp this
  obtain ⟨h10, h00, h01, h11⟩ := h
  have h1 : 0 < |A.1 1 1| := (abs_nonneg _).trans_lt h11
  have h2 : 0 < |A.1 0 0| := abs_pos.mpr h00.ne'
  fin_cases i <;> fin_cases j
  · simpa only [← abs_mul, A_c_eq_zero h10] using (le_mul_iff_one_le_right h2).mpr h1
  · simpa only [← abs_mul, A_c_eq_zero h10] using h11.le.trans (le_mul_of_one_le_left h1.le h2)
  · simp_all
  · simpa only [← abs_mul, A_c_eq_zero h10] using (le_mul_iff_one_le_left h1).mpr h2

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant198ec95260bf9139cf83ca60c5d620f259e94fd6faab31e839208b2c72db7486.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f2e3e14a62fe92c4d2860a0ec6575c63c23ced4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
