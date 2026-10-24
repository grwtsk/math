# iIndepFun_uncurry_infinitePi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ae85a89-d7e7-6158-7a26-7ad1fe2c5a20",
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
  "slug": "iindepfun-uncurry-infinitepi--e5ba28d0338d1350676f1fe6",
  "source": {
    "blob": "6b5eecbb1a02572e83ab1891c92c24df4f92f720",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 186,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/InfinitePi/Variant2039e6cfcd497cecfa76deb9e2bd9f4987c599bce3aa72ee94bc82e40ee75360.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5ba28d0338d1350676f1fe64765f4ce75ce26ac28a0a7259f9f770858714f33",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/InfinitePi/Variant2039e6cfcd497cecfa76deb9e2bd9f4987c599bce3aa72ee94bc82e40ee75360.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ae85a89-d7e7-6158-7a26-7ad1fe2c5a20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–223.

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

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/InfinitePi/Variant2039e6cfcd497cecfa76deb9e2bd9f4987c599bce3aa72ee94bc82e40ee75360.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/InfinitePi/Variant2039e6cfcd497cecfa76deb9e2bd9f4987c599bce3aa72ee94bc82e40ee75360.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b5eecbb1a02572e83ab1891c92c24df4f92f720` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
