# I7I3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83f66040916d04628c1f8386ae50cec36e1f2b92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2469,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:646cefa5-2446-591a-03c5-6a28022874e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8167b22-444c-6fc2-5249-e40d95e0e6de",
  "kind": "lemma",
  "lexical_name": "I7I3",
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
  "slug": "i7i3--bafa01c8f9e9cb4ecc3b0f0d",
  "source": {
    "blob": "83f66040916d04628c1f8386ae50cec36e1f2b92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2482,
    "line": 2469,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bafa01c8f9e9cb4ecc3b0f0d10ae01543ed3f901ad65a69edc2a41c790b8a8ff",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8167b22-444c-6fc2-5249-e40d95e0e6de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2469–2482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma I7I3 {SmoothingF : ℝ → ℝ} {ε X T σ₁ : ℝ} (Xpos : 0 < X) :
    I₇ SmoothingF ε T X σ₁ = conj (I₃ SmoothingF ε T X σ₁) := by
  unfold I₃ I₇
  simp only [map_mul, map_div₀, conj_I, conj_ofReal, conj_ofNat, map_one]
  rw [neg_mul, mul_neg, ← neg_mul]
  congr
  · ring
  · rw [← intervalIntegral_conj, ← intervalIntegral.integral_comp_neg]
    apply intervalIntegral.integral_congr
    intro t ht
    simp only
    rw [← smoothedChebyshevIntegrand_conj Xpos]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant649643ec66a8f885873ec45d7ce560a3ac51952fef62833fe93c425b4bcb6f41.lean#L2469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83f66040916d04628c1f8386ae50cec36e1f2b92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
