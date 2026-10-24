# iIndepFun.map_fun_eq_infinitePi_map₀

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
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d53662a8ca667e78ec2f45166544f326b53a8dfb69d0ce21fed83b6e097b4f97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c87974bf-c732-753b-bda5-fae5bbbba7e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:955d2bf8-826f-965f-366e-1604d565088e",
  "kind": "lemma",
  "lexical_name": "iIndepFun.map_fun_eq_infinitePi_map₀",
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
  "slug": "iindepfun-map-fun-eq-infinitepi-map--d975fea0b3d3ec1aca68b155",
  "source": {
    "blob": "e49b470ea7f4c21fbbb44723f15878c6f7b2ab91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 43,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/InfinitePi/Variantd53662a8ca667e78ec2f45166544f326b53a8dfb69d0ce21fed83b6e097b4f97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d975fea0b3d3ec1aca68b15508f2a561e6748b4ff5629b19fefa415e923a969c",
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

Occurrence: `result:955d2bf8-826f-965f-366e-1604d565088e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iIndepFun.map_fun_eq_infinitePi_map₀ (mX : AEMeasurable (fun ω i ↦ X i ω) P)
    (h : iIndepFun X P) :
    P.map (fun ω i ↦ X i ω) = infinitePi (fun i ↦ P.map (X i)) := by
  have := h.isProbabilityMeasure
  refine eq_infinitePi _ fun s t ht ↦ ?_
  rw [iIndepFun_iff_finset] at h
  have : (s : Set ι).pi t = s.restrict ⁻¹' (Set.univ.pi fun i ↦ t i) := by ext; simp
  rw [this, ← map_apply, AEMeasurable.map_map_of_aemeasurable]
  · have : s.restrict ∘ (fun ω i ↦ X i ω) = fun ω i ↦ s.restrict X i ω := by ext; simp
    rw [this, (h s).map_fun_eq_pi_map, pi_pi]
    · simp only [Finset.restrict]
      rw [s.prod_coe_sort fun i ↦ P.map (X i) (t i)]
    exact fun i ↦ mX.eval i
  any_goals fun_prop
  · exact mX
  · exact .univ_pi fun i ↦ ht i

/-- Random variables are independent iff their joint distribution is the product measure. This
is a version where the random variable `ω ↦ (Xᵢ(ω))ᵢ` is almost everywhere measurable.
See `iIndepFun_iff_map_fun_eq_infinitePi_map₀'` for a version which only assumes that
each `Xᵢ` is almost everywhere measurable and that `ι` is countable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/InfinitePi/Variantd53662a8ca667e78ec2f45166544f326b53a8dfb69d0ce21fed83b6e097b4f97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/InfinitePi/Variantd53662a8ca667e78ec2f45166544f326b53a8dfb69d0ce21fed83b6e097b4f97.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e49b470ea7f4c21fbbb44723f15878c6f7b2ab91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
