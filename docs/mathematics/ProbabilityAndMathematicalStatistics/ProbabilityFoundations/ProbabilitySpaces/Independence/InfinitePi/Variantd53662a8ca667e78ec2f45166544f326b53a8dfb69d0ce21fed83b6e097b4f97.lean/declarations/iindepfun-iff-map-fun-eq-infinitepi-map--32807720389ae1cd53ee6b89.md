# iIndepFun_iff_map_fun_eq_infinitePi_map₀

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
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d53662a8ca667e78ec2f45166544f326b53a8dfb69d0ce21fed83b6e097b4f97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ec145a7-c3a3-8a7e-b9d0-35eb07558c9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bda2f86e-01f0-e34a-1dcd-c0b4cb61fda1",
  "kind": "lemma",
  "lexical_name": "iIndepFun_iff_map_fun_eq_infinitePi_map₀",
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
  "slug": "iindepfun-iff-map-fun-eq-infinitepi-map--32807720389ae1cd53ee6b89",
  "source": {
    "blob": "e49b470ea7f4c21fbbb44723f15878c6f7b2ab91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 64,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/InfinitePi/Variantd53662a8ca667e78ec2f45166544f326b53a8dfb69d0ce21fed83b6e097b4f97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32807720389ae1cd53ee6b89b3329e9062f1a0be6587a4143eb2204d449091b2",
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

Occurrence: `result:bda2f86e-01f0-e34a-1dcd-c0b4cb61fda1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iIndepFun_iff_map_fun_eq_infinitePi_map₀ [IsProbabilityMeasure P]
    (mX : AEMeasurable (fun ω i ↦ X i ω) P) :
    iIndepFun X P ↔ P.map (fun ω i ↦ X i ω) = infinitePi (fun i ↦ P.map (X i)) where
  mp h := h.map_fun_eq_infinitePi_map₀ mX
  mpr h := by
    rw [iIndepFun_iff_finset]
    intro s
    rw [iIndepFun_iff_map_fun_eq_pi_map]
    · have : s.restrict ∘ (fun ω i ↦ X i ω) = fun ω i ↦ s.restrict X i ω := by ext; simp
      rw [← this, ← AEMeasurable.map_map_of_aemeasurable, h, infinitePi_map_restrict]
      · simp
      · fun_prop
      exact mX
    exact fun i ↦ mX.eval i

/-- If random variables are independent then their joint distribution is the product measure. This
is an `AEMeasurable` version of `iIndepFun.map_fun_eq_infinitePi_map`, which is why it requires
`ι` to be countable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/InfinitePi/Variantd53662a8ca667e78ec2f45166544f326b53a8dfb69d0ce21fed83b6e097b4f97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/InfinitePi/Variantd53662a8ca667e78ec2f45166544f326b53a8dfb69d0ce21fed83b6e097b4f97.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e49b470ea7f4c21fbbb44723f15878c6f7b2ab91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
