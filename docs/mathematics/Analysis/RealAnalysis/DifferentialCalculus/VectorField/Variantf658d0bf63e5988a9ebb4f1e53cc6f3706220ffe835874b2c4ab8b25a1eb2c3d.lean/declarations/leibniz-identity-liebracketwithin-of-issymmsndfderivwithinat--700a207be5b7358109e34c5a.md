# leibniz_identity_lieBracketWithin_of_isSymmSndFDerivWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7bd74e02092928977d6dc53bb370a01959f7c705",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 297,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f658d0bf63e5988a9ebb4f1e53cc6f3706220ffe835874b2c4ab8b25a1eb2c3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53764618-7b81-977e-f345-a4c6314d57c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:393b4e98-8b42-46ec-188c-c04611cff395",
  "kind": "lemma",
  "lexical_name": "leibniz_identity_lieBracketWithin_of_isSymmSndFDerivWithinAt",
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
  "slug": "leibniz-identity-liebracketwithin-of-issymmsndfderivwithinat--700a207be5b7358109e34c5a",
  "source": {
    "blob": "7bd74e02092928977d6dc53bb370a01959f7c705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 297,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variantf658d0bf63e5988a9ebb4f1e53cc6f3706220ffe835874b2c4ab8b25a1eb2c3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:700a207be5b7358109e34c5a0468ad3f0c7075604e0ddae6140d53b10892c4cc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variantf658d0bf63e5988a9ebb4f1e53cc6f3706220ffe835874b2c4ab8b25a1eb2c3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:393b4e98-8b42-46ec-188c-c04611cff395`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leibniz_identity_lieBracketWithin_of_isSymmSndFDerivWithinAt
    {U V W : E → E} {s : Set E} {x : E} (hs : UniqueDiffOn 𝕜 s) (hx : x ∈ s)
    (hU : ContDiffWithinAt 𝕜 2 U s x) (hV : ContDiffWithinAt 𝕜 2 V s x)
    (hW : ContDiffWithinAt 𝕜 2 W s x)
    (h'U : IsSymmSndFDerivWithinAt 𝕜 U s x) (h'V : IsSymmSndFDerivWithinAt 𝕜 V s x)
    (h'W : IsSymmSndFDerivWithinAt 𝕜 W s x) :
    lieBracketWithin 𝕜 U (lieBracketWithin 𝕜 V W s) s x =
      lieBracketWithin 𝕜 (lieBracketWithin 𝕜 U V s) W s x
      + lieBracketWithin 𝕜 V (lieBracketWithin 𝕜 U W s) s x := by
  simp only [lieBracketWithin_eq, map_sub]
  have aux₁ {U V : E → E} (hU : ContDiffWithinAt 𝕜 2 U s x) (hV : ContDiffWithinAt 𝕜 2 V s x) :
      DifferentiableWithinAt 𝕜 (fun x ↦ (fderivWithin 𝕜 V s x) (U x)) s x :=
    have := hV.fderivWithin_right_apply (hU.of_le one_le_two) hs le_rfl hx
    this.differentiableWithinAt le_rfl
  have aux₂ {U V : E → E} (hU : ContDiffWithinAt 𝕜 2 U s x) (hV : ContDiffWithinAt 𝕜 2 V s x) :
      fderivWithin 𝕜 (fun y ↦ (fderivWithin 𝕜 U s y) (V y)) s x =
        (fderivWithin 𝕜 U s x).comp (fderivWithin 𝕜 V s x) +
        (fderivWithin 𝕜 (fderivWithin 𝕜 U s) s x).flip (V x) := by
    refine fderivWithin_clm_apply (hs x hx) ?_ (hV.differentiableWithinAt one_le_two)
    exact (hU.fderivWithin_right hs le_rfl hx).differentiableWithinAt le_rfl
  rw [fderivWithin_sub (hs x hx) (aux₁ hV hW) (aux₁ hW hV)]
  rw [fderivWithin_sub (hs x hx) (aux₁ hU hV) (aux₁ hV hU)]
  rw [fderivWithin_sub (hs x hx) (aux₁ hU hW) (aux₁ hW hU)]
  rw [aux₂ hW hV, aux₂ hV hW, aux₂ hV hU, aux₂ hU hV, aux₂ hW hU, aux₂ hU hW]
  simp only [ContinuousLinearMap.coe_sub', Pi.sub_apply, ContinuousLinearMap.add_apply,
    ContinuousLinearMap.coe_comp', Function.comp_apply, ContinuousLinearMap.flip_apply, h'V.eq,
    h'U.eq, h'W.eq]
  abel

/-- The Lie bracket of vector fields in vector spaces satisfies the Leibniz identity
`[U, [V, W]] = [[U, V], W] + [V, [U, W]]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variantf658d0bf63e5988a9ebb4f1e53cc6f3706220ffe835874b2c4ab8b25a1eb2c3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variantf658d0bf63e5988a9ebb4f1e53cc6f3706220ffe835874b2c4ab8b25a1eb2c3d.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bd74e02092928977d6dc53bb370a01959f7c705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
