# _root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.IIndepFunMapFunEqInfinitePiMap.Variantd53662a8ca667e78ec2f45166544f326b53a8dfb69d0ce21fed83b6e097b4f97.MeasureTheory.Measure.map_infinitePi_infinitePi_of_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:113a00ad-3b0b-94f2-4c51-5ea8d94fe9e5",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.IIndepFunMapFunEqInfinitePiMap.Variantd53662a8ca667e78ec2f45166544f326b53a8dfb69d0ce21fed83b6e097b4f97.MeasureTheory.Measure.map_infinitePi_infinitePi_of_inj",
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
  "slug": "root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations--1c86b34aa5bb506f45b06ce6",
  "source": {
    "blob": "6b5eecbb1a02572e83ab1891c92c24df4f92f720",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 150,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/InfinitePi/Variant2039e6cfcd497cecfa76deb9e2bd9f4987c599bce3aa72ee94bc82e40ee75360.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c86b34aa5bb506f45b06ce67aad34e77b82e73a8678417d8a42e68862b6c40e",
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

Occurrence: `result:113a00ad-3b0b-94f2-4c51-5ea8d94fe9e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.IIndepFunMapFunEqInfinitePiMap.Variantd53662a8ca667e78ec2f45166544f326b53a8dfb69d0ce21fed83b6e097b4f97.MeasureTheory.Measure.map_infinitePi_infinitePi_of_inj {α : Type*} {Ω : ι → Type*}
    {mΩ : ∀ i, MeasurableSpace (Ω i)} {P : ∀ i, Measure (Ω i)}
    [∀ i, IsProbabilityMeasure (P i)] {f : α → ι} (hf : Function.Injective f) :
    (infinitePi P).map (fun ω i ↦ ω (f i)) = infinitePi (fun i ↦ P (f i)) := by
  rw [(iIndepFun_iff_map_fun_eq_infinitePi_map <| by fun_prop).mp ?_]
  · simp [infinitePi_map_eval]
  exact .precomp hf <| iIndepFun_infinitePi (X := fun x ω ↦ ω) <| by fun_prop

section curry

section dependent

variable {κ : ι → Type*} {𝓧 : (i : ι) → κ i → Type*} {m𝓧 : ∀ i j, MeasurableSpace (𝓧 i j)}

/-- Consider `((Xᵢⱼ)ⱼ)ᵢ` a family of families of random variables.
Assume that for any `i`, the random variables `(Xᵢⱼ)ⱼ` are independent.
Assume furthermore that the random variables `((Xᵢⱼ)ⱼ)ᵢ` are independent.
Then the random variables `(Xᵢⱼ)` indexed by pairs `(i, j)` are independent.

This is a dependent version of `iIndepFun_uncurry'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/InfinitePi/Variant2039e6cfcd497cecfa76deb9e2bd9f4987c599bce3aa72ee94bc82e40ee75360.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/InfinitePi/Variant2039e6cfcd497cecfa76deb9e2bd9f4987c599bce3aa72ee94bc82e40ee75360.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b5eecbb1a02572e83ab1891c92c24df4f92f720` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
