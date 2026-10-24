# toOuterMeasure_uniformOfFinset_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a0b2c81c73c3505deaed12d98cfbf89811d55b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/745c71d9a6a92b3174f92af3d546068516da7ecb622457cbd3c3b2f0bf8b1b91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8cf16f61-af5b-985f-4085-e837b93a017b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e42c0c1-31e8-20a0-d625-3c4a96af6b39",
  "kind": "theorem",
  "lexical_name": "toOuterMeasure_uniformOfFinset_apply",
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
  "slug": "tooutermeasure-uniformoffinset-apply--d4538ec716d49e1bb88ef279",
  "source": {
    "blob": "2a0b2c81c73c3505deaed12d98cfbf89811d55b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 246,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/Uniform/Variant745c71d9a6a92b3174f92af3d546068516da7ecb622457cbd3c3b2f0bf8b1b91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4538ec716d49e1bb88ef2799a5eabc3b1a0144f411ce01840d9041a16a8d56e",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/Uniform/Variant745c71d9a6a92b3174f92af3d546068516da7ecb622457cbd3c3b2f0bf8b1b91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e42c0c1-31e8-20a0-d625-3c4a96af6b39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toOuterMeasure_uniformOfFinset_apply :
    (uniformOfFinset s hs).toOuterMeasure t = #{x ∈ s | x ∈ t} / #s :=
  calc
    (uniformOfFinset s hs).toOuterMeasure t = ∑' x, if x ∈ t then uniformOfFinset s hs x else 0 :=
      toOuterMeasure_apply (uniformOfFinset s hs) t
    _ = ∑' x, if x ∈ s ∧ x ∈ t then (#s : ℝ≥0∞)⁻¹ else 0 :=
      tsum_congr fun x => by simp_rw [uniformOfFinset_apply, ← ite_and, and_comm]
    _ = ∑ x ∈ s with x ∈ t, if x ∈ s ∧ x ∈ t then (#s : ℝ≥0∞)⁻¹ else 0 :=
      tsum_eq_sum fun _ hx => ite_eq_right fun h => hx (Finset.mem_filter.2 h)
    _ = ∑ x ∈ s with x ∈ t, (#s : ℝ≥0∞)⁻¹ :=
      Finset.sum_congr rfl fun x hx => by
        have : x ∈ s ∧ x ∈ t := by simpa using hx
        simp only [this, and_self_iff, ite_true]
    _ = #{x ∈ s | x ∈ t} / #s := by
        simp only [div_eq_mul_inv, Finset.sum_const, nsmul_eq_mul]

open scoped Classical in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/Uniform/Variant745c71d9a6a92b3174f92af3d546068516da7ecb622457cbd3c3b2f0bf8b1b91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/Uniform/Variant745c71d9a6a92b3174f92af3d546068516da7ecb622457cbd3c3b2f0bf8b1b91.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a0b2c81c73c3505deaed12d98cfbf89811d55b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
