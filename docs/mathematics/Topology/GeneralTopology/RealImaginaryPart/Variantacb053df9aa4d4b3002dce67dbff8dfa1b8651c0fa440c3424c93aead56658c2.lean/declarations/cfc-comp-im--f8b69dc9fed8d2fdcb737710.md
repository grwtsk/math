# cfcₙ_comp_im

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab32d017f00854aa1a1b965435f152f9d5a0c02b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/acb053df9aa4d4b3002dce67dbff8dfa1b8651c0fa440c3424c93aead56658c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f71fa68-a923-0df9-6673-97aef777987e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ca22ce6-4f2d-350e-1682-1d6158e68f43",
  "kind": "lemma",
  "lexical_name": "cfcₙ_comp_im",
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
  "slug": "cfc-comp-im--f8b69dc9fed8d2fdcb737710",
  "source": {
    "blob": "ab32d017f00854aa1a1b965435f152f9d5a0c02b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 87,
    "path": "GRWTSK/Topology/GeneralTopology/RealImaginaryPart/Variantacb053df9aa4d4b3002dce67dbff8dfa1b8651c0fa440c3424c93aead56658c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8b69dc9fed8d2fdcb7377100fa025ec88a4d91d41796b5b49f467c78641c9ce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RealImaginaryPart/Variantacb053df9aa4d4b3002dce67dbff8dfa1b8651c0fa440c3424c93aead56658c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ca22ce6-4f2d-350e-1682-1d6158e68f43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfcₙ_comp_im (f : ℝ → ℝ) (a : A)
    (hf : ContinuousOn f (quasispectrum ℝ (ℑ a : A)) := by cfc_cont_tac)
    (hf0 : f 0 = 0 := by cfc_zero_tac) (ha : IsStarNormal a := by cfc_tac) :
    cfcₙ (fun x : ℂ ↦ f (im x)) a = cfcₙ f (ℑ a : A) := by
  have : ContinuousOn (fun x ↦ (f x.re) : ℂ → ℂ) ((im · : ℂ → ℂ) '' quasispectrum ℂ a) := by
    rw [quasispectrum_imaginaryPart' a] at hf
    refine continuous_ofReal.comp_continuousOn <| hf.comp (by fun_prop) ?_
    simpa [Set.mapsTo_image_iff, Function.comp_def] using Set.mapsTo_image ..
  conv_rhs =>
    rw [cfcₙ_real_eq_complex, ← cfcₙ_im_id a, ← cfcₙ_comp' ..]
    simp

end NonUnital

section Unital

variable [Ring A] [StarRing A] [Algebra ℂ A] [StarModule ℂ A]
  [ContinuousFunctionalCalculus ℂ A IsStarNormal]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RealImaginaryPart/Variantacb053df9aa4d4b3002dce67dbff8dfa1b8651c0fa440c3424c93aead56658c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RealImaginaryPart/Variantacb053df9aa4d4b3002dce67dbff8dfa1b8651c0fa440c3424c93aead56658c2.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab32d017f00854aa1a1b965435f152f9d5a0c02b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
