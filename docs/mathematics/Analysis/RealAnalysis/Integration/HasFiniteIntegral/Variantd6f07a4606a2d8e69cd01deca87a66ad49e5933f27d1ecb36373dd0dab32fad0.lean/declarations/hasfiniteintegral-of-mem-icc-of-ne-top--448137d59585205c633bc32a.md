# HasFiniteIntegral.of_mem_Icc_of_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b072b3587fca2e1914b5a5e40862a4b800054364",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6f07a4606a2d8e69cd01deca87a66ad49e5933f27d1ecb36373dd0dab32fad0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08bcd6f5-be78-46ba-4efa-a9fe91a9cbd1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76db00fb-84b1-8bb6-6f11-c4c8a60dfd5c",
  "kind": "theorem",
  "lexical_name": "HasFiniteIntegral.of_mem_Icc_of_ne_top",
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
  "slug": "hasfiniteintegral-of-mem-icc-of-ne-top--448137d59585205c633bc32a",
  "source": {
    "blob": "b072b3587fca2e1914b5a5e40862a4b800054364",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 181,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variantd6f07a4606a2d8e69cd01deca87a66ad49e5933f27d1ecb36373dd0dab32fad0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:448137d59585205c633bc32a8cfa47aac1ba85bd019c6ab5550ea610995f2d9f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variantd6f07a4606a2d8e69cd01deca87a66ad49e5933f27d1ecb36373dd0dab32fad0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76db00fb-84b1-8bb6-6f11-c4c8a60dfd5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFiniteIntegral.of_mem_Icc_of_ne_top [IsFiniteMeasure μ]
    {a b : ℝ≥0∞} (ha : a ≠ ⊤) (hb : b ≠ ⊤) {X : α → ℝ≥0∞} (h : ∀ᵐ ω ∂μ, X ω ∈ Set.Icc a b) :
    HasFiniteIntegral X μ := by
  have : ‖max ‖a‖ₑ ‖b‖ₑ‖ₑ ≠ ⊤ := by simp [ha, hb]
  apply (hasFiniteIntegral_const_enorm this (μ := μ)).mono'_enorm
  filter_upwards [h.mono fun ω h ↦ h.1, h.mono fun ω h ↦ h.2] with ω h₁ h₂ using by simp [h₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variantd6f07a4606a2d8e69cd01deca87a66ad49e5933f27d1ecb36373dd0dab32fad0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variantd6f07a4606a2d8e69cd01deca87a66ad49e5933f27d1ecb36373dd0dab32fad0.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b072b3587fca2e1914b5a5e40862a4b800054364` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
