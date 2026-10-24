# iIndepFun_uncurry_infinitePi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e49b470ea7f4c21fbbb44723f15878c6f7b2ab91",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d53662a8ca667e78ec2f45166544f326b53a8dfb69d0ce21fed83b6e097b4f97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53b85ea6-66ac-68a9-38ec-96845289c377",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16ec07a3-8d60-53d0-01d8-5290373bbccb",
  "kind": "lemma",
  "lexical_name": "iIndepFun_uncurry_infinitePi",
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
  "slug": "iindepfun-uncurry-infinitepi--6b1f0a1efae2ca31338ade22",
  "source": {
    "blob": "e49b470ea7f4c21fbbb44723f15878c6f7b2ab91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 178,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/InfinitePi/Variantd53662a8ca667e78ec2f45166544f326b53a8dfb69d0ce21fed83b6e097b4f97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b1f0a1efae2ca31338ade22205ea455a8ec7097a9b69e1b72399245845234fc",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/InfinitePi/Variantd53662a8ca667e78ec2f45166544f326b53a8dfb69d0ce21fed83b6e097b4f97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16ec07a3-8d60-53d0-01d8-5290373bbccb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iIndepFun_uncurry_infinitePi {Ω : (i : ι) → κ i → Type*} {mΩ : ∀ i j, MeasurableSpace (Ω i j)}
    {X : (i : ι) → (j : κ i) → Ω i j → 𝓧 i j}
    (μ : (i : ι) → (j : κ i) → Measure (Ω i j)) [∀ i j, IsProbabilityMeasure (μ i j)]
    (mX : ∀ i j, Measurable (X i j)) :
    iIndepFun (fun (p : (i : ι) × κ i) (ω : Π i, Π j, Ω i j) ↦ X p.1 p.2 (ω p.1 p.2))
      (infinitePi (fun i ↦ infinitePi (μ i))) := by
  refine iIndepFun_uncurry (P := infinitePi (fun i ↦ infinitePi (μ i)))
    (X := fun i j ω ↦ X i j (ω i j)) (by fun_prop) ?_ fun i ↦ ?_
  · exact iIndepFun_infinitePi (P := fun i ↦ infinitePi (μ i))
      (X := fun i u j ↦ X i j (u j)) (by fun_prop)
  rw [iIndepFun_iff_map_fun_eq_infinitePi_map (by fun_prop)]
  change map ((fun f ↦ f i) ∘ (fun ω i j ↦ X i j (ω i j)))
    (infinitePi fun i ↦ infinitePi (μ i)) = _
  rw [← map_map (by fun_prop) (by fun_prop),
    infinitePi_map_pi (X := fun i ↦ (j : κ i) → Ω i j) (μ := fun i ↦ infinitePi (μ i))
      (f := fun i f j ↦ X i j (f j)), infinitePi_map_eval, infinitePi_map_pi]
  · congrm infinitePi fun j ↦ ?_
    change _ = map (((fun f ↦ f j) ∘ (fun f ↦ f i)) ∘ (fun ω i j ↦ X i j (ω i j)))
      (infinitePi fun i ↦ infinitePi (μ i))
    rw [← map_map (by fun_prop) (by fun_prop), infinitePi_map_pi (X := fun i ↦ (j : κ i) → Ω i j)
        (μ := fun i ↦ infinitePi (μ i)) (f := fun i f j ↦ X i j (f j)),
        ← map_map (by fun_prop) (by fun_prop),
        infinitePi_map_eval, infinitePi_map_pi, infinitePi_map_eval]
    all_goals fun_prop
  all_goals fun_prop

end dependent

section nondependent

variable {κ : Type*} {𝓧 : ι → κ → Type*} {m𝓧 : ∀ i j, MeasurableSpace (𝓧 i j)}

/-- Consider `((Xᵢⱼ)ⱼ)ᵢ` a family of families of random variables.
Assume that for any `i`, the random variables `(Xᵢⱼ)ⱼ` are independent.
Assume furthermore that the random variables `((Xᵢⱼ)ⱼ)ᵢ` are independent.
Then the random variables `(Xᵢⱼ)` indexed by pairs `(i, j)` are independent.

This is a non-dependent version of `iIndepFun_uncurry`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/InfinitePi/Variantd53662a8ca667e78ec2f45166544f326b53a8dfb69d0ce21fed83b6e097b4f97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/InfinitePi/Variantd53662a8ca667e78ec2f45166544f326b53a8dfb69d0ce21fed83b6e097b4f97.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e49b470ea7f4c21fbbb44723f15878c6f7b2ab91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
