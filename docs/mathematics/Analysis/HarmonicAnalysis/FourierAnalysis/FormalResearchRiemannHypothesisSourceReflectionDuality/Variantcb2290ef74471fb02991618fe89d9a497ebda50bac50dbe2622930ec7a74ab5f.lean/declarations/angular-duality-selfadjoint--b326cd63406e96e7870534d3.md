# angular_duality_selfAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db9d3c100efa65ca2ae8e801c34e328e6714f4f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 294,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb2290ef74471fb02991618fe89d9a497ebda50bac50dbe2622930ec7a74ab5f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c448b857-f55a-6d26-4a9c-f0c9c25d726e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4fc7b71-adfd-362a-934e-4e26b5d6f465",
  "kind": "theorem",
  "lexical_name": "angular_duality_selfAdjoint",
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
  "slug": "angular-duality-selfadjoint--b326cd63406e96e7870534d3",
  "source": {
    "blob": "db9d3c100efa65ca2ae8e801c34e328e6714f4f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 294,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FormalResearchRiemannHypothesisSourceReflectionDuality/Variantcb2290ef74471fb02991618fe89d9a497ebda50bac50dbe2622930ec7a74ab5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b326cd63406e96e7870534d36fffe3e3aeef65d12cc52c073afef324e0ebe1ca",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FormalResearchRiemannHypothesisSourceReflectionDuality/Variantcb2290ef74471fb02991618fe89d9a497ebda50bac50dbe2622930ec7a74ab5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4fc7b71-adfd-362a-934e-4e26b5d6f465`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angular_duality_selfAdjoint :
    IsSelfAdjoint (angularSignDuality.toLinearIsometry.toContinuousLinearMap :
      ComplexL2 →L[ℂ] ComplexL2) := by
  apply ContinuousLinearMap.isSelfAdjoint_iff_isSymmetric.mpr
  intro f g
  calc
    ⟪angularSignDuality f,g⟫_ℂ =
      ⟪angularSignDuality f,angularSignDuality (angularSignDuality g)⟫_ℂ := by
        rw [angular_duality_involutive]
    _ = _ := angular_stationary_inner_dual _ _


/-- Standard Fourier phase associated with the literal right translation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FormalResearchRiemannHypothesisSourceReflectionDuality/Variantcb2290ef74471fb02991618fe89d9a497ebda50bac50dbe2622930ec7a74ab5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FormalResearchRiemannHypothesisSourceReflectionDuality/Variantcb2290ef74471fb02991618fe89d9a497ebda50bac50dbe2622930ec7a74ab5f.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db9d3c100efa65ca2ae8e801c34e328e6714f4f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
