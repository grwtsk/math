# exists_finite_sum_smul_approximation_of_mem_uniformity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5abdc956302550b37e90533f6129f03b9076e326",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7bb0425a8ee4ab0e29d723baae5f08c0f763151e02f9abf34d08a47d385d95e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f6761f2-9f90-1e3a-dde8-284d3e655135",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ae36280-50b6-671e-8312-28216214d41e",
  "kind": "lemma",
  "lexical_name": "exists_finite_sum_smul_approximation_of_mem_uniformity",
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
  "slug": "exists-finite-sum-smul-approximation-of-mem-uniformity--64eff1b73863ff9cab4b3444",
  "source": {
    "blob": "5abdc956302550b37e90533f6129f03b9076e326",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 34,
    "path": "GRWTSK/Topology/GeneralTopology/ProdApproximation/Variant7bb0425a8ee4ab0e29d723baae5f08c0f763151e02f9abf34d08a47d385d95e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64eff1b73863ff9cab4b344466201c60b4ac4a570df16fc4777722c2ea8bbde7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProdApproximation/Variant7bb0425a8ee4ab0e29d723baae5f08c0f763151e02f9abf34d08a47d385d95e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ae36280-50b6-671e-8312-28216214d41e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_finite_sum_smul_approximation_of_mem_uniformity [TopologicalSpace R]
    [MonoidWithZero R] [MulActionWithZero R V] (f : C(X × Y, V)) (hS : S ∈ 𝓤 V) :
    ∃ (n : ℕ) (g : Fin n → C(X, R)) (h : Fin n → C(Y, V)),
    ∀ x y, (f (x, y), ∑ i, g i x • h i y) ∈ S := by
  have hS' : {(f, g) | ∀ y, (f y, g y) ∈ S} ∈ 𝓤 C(Y, V) :=
    (mem_compactConvergence_entourage_iff _).mpr
      ⟨_, _, isCompact_univ, hS, by simp only [Set.mem_univ, true_implies, subset_refl]⟩
  obtain ⟨n, U, v, hv⟩ := exists_finite_sum_const_indicator_approximation_of_mem_nhds_diagonal
    f.curry (nhdsSet_diagonal_le_uniformity hS')
  refine ⟨n, fun i ↦ ⟨_, (U i).isClopen.continuous_indicator <| continuous_const (y := 1)⟩,
    v, fun x y ↦ ?_⟩
  convert hv x y using 2
  simp only [sum_apply]
  congr 1 with i
  by_cases hi : x ∈ U i <;> simp [hi]

/-- A continuous function on `X × Y`, taking values in a ring `R` equipped with a uniformity
compatible with addition, can be uniformly approximated by sums of functions of the form
`(x, y) ↦ f x * g y`.

Note that no assumption is needed relating the multiplication on `R` to the uniformity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProdApproximation/Variant7bb0425a8ee4ab0e29d723baae5f08c0f763151e02f9abf34d08a47d385d95e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProdApproximation/Variant7bb0425a8ee4ab0e29d723baae5f08c0f763151e02f9abf34d08a47d385d95e7.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5abdc956302550b37e90533f6129f03b9076e326` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
