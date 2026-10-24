# upper_rectangle_eq_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae2710ea67deeec2207f13af925c677e92c3db40",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f167d1a5-9ba4-3e5a-a04f-b32955db60ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8b61751-90fb-8c18-e80c-48c9e253c639",
  "kind": "theorem",
  "lexical_name": "upper_rectangle_eq_abel",
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
  "slug": "upper-rectangle-eq-abel--160201c3958c5c71fd3376a3",
  "source": {
    "blob": "ae2710ea67deeec2207f13af925c677e92c3db40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 120,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:160201c3958c5c71fd3376a3a39edefda5050c99063a11c0269bb2d9dc26ce32",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8b61751-90fb-8c18-e80c-48c9e253c639`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upper_rectangle_eq_abel (N : ℕ) (f : ℝ → ℝ) (b : ℝ)
    (hN : 2 ≤ N) (hb : 1 ≤ b) (hB : N * N ≤ ⌊b⌋₊)
    (hd : ∀ x ∈ Set.Icc 1 b, DifferentiableAt ℝ f x)
    (hi : IntegrableOn (deriv f) (Set.Icc 1 b)) (hz : f b = 0) :
    JointBoundaryTransport.rectangle (Ioc (N / 2) N) (Ioc (N / 2) N)
      (fun n ↦ f n) = -∫ x in 1..b, upperProductSummatory N x * deriv f x := by
  rw [upper_rectangle_eq_weighted_product_sum N ⌊b⌋₊ _ hB]
  have hs : (∑ n ∈ Ioc 1 ⌊b⌋₊, upperProductCoefficient N n * f n) =
      ∑ n ∈ Icc 1 ⌊b⌋₊, upperProductCoefficient N n * f n := by
    apply sum_subset
    · intro n hn
      exact mem_Icc.mpr ⟨by have := (mem_Ioc.mp hn).1; omega, (mem_Ioc.mp hn).2⟩
    · intro n hn hnot
      have hn1 : n = 1 := by
        have := mem_Icc.mp hn
        simp only [mem_Ioc] at hnot
        omega
      simp [hn1, upperProductCoefficient_one N hN]
  have hab := upperProduct_sum_eq_abel N f 1 b (by norm_num) hb hd hi
  rw [Nat.floor_one, hs, hz, mul_zero, upperProductSummatory_one N hN,
    zero_mul, sub_zero, zero_sub] at hab
  exact hab

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae2710ea67deeec2207f13af925c677e92c3db40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
