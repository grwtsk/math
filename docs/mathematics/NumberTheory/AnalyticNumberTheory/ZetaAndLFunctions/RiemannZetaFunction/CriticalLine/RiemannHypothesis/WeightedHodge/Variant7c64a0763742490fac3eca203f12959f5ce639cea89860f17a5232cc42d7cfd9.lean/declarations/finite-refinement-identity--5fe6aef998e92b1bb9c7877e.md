# finite_refinement_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35c24e36-b881-c0d2-dbdc-5332dec6e527",
  "kind": "theorem",
  "lexical_name": "finite_refinement_identity",
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
  "slug": "finite-refinement-identity--5fe6aef998e92b1bb9c7877e",
  "source": {
    "blob": "0e01ffe677b358d78aafd37bfb53db09ab2c1e49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHodge/Variant7c64a0763742490fac3eca203f12959f5ce639cea89860f17a5232cc42d7cfd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fe6aef998e92b1bb9c7877e41917be78f7a3cb9b87233a405049720d688c1e8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHodge/Variant7c64a0763742490fac3eca203f12959f5ce639cea89860f17a5232cc42d7cfd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35c24e36-b881-c0d2-dbdc-5332dec6e527`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_refinement_identity {ι : Type*} (s : Finset ι) (w v : ι → ℝ)
    (hw : ∀ i ∈ s, w i ≠ 0) (hW : (∑ i ∈ s, w i) ≠ 0) :
    (∑ i ∈ s, v i ^ 2 / w i) =
      (∑ i ∈ s, v i) ^ 2 / (∑ i ∈ s, w i) +
        ∑ i ∈ s, (v i - w i * ((∑ j ∈ s, v j) / (∑ j ∈ s, w j))) ^ 2 / w i := by
  have heq : (∑ i ∈ s,
      (v i - w i * ((∑ j ∈ s, v j) / (∑ j ∈ s, w j))) ^ 2 / w i) =
      (∑ i ∈ s, v i ^ 2 / w i) -
        2 * ((∑ j ∈ s, v j) / (∑ j ∈ s, w j)) * (∑ i ∈ s, v i) +
        ((∑ j ∈ s, v j) / (∑ j ∈ s, w j)) ^ 2 * (∑ i ∈ s, w i) := by
    calc
      _ = ∑ i ∈ s, (v i ^ 2 / w i -
          2 * ((∑ j ∈ s, v j) / (∑ j ∈ s, w j)) * v i +
          ((∑ j ∈ s, v j) / (∑ j ∈ s, w j)) ^ 2 * w i) := by
        apply Finset.sum_congr rfl
        intro i hi
        exact weighted_square_expand (hw i hi) _ _
      _ = _ := by rw [Finset.sum_add_distrib, Finset.sum_sub_distrib,
        ← Finset.mul_sum, ← Finset.mul_sum]
  rw [heq]
  field_simp
  ring

/-- Nonnegative details give the root-energy lower bound for every finite family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHodge/Variant7c64a0763742490fac3eca203f12959f5ce639cea89860f17a5232cc42d7cfd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHodge/Variant7c64a0763742490fac3eca203f12959f5ce639cea89860f17a5232cc42d7cfd9.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e01ffe677b358d78aafd37bfb53db09ab2c1e49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
