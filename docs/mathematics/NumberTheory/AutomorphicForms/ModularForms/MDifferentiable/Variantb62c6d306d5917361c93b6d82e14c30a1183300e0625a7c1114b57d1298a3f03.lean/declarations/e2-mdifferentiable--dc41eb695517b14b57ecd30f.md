# E2_mdifferentiable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cd412d0-a37c-ee72-661f-6a6f79e9fabc",
  "kind": "lemma",
  "lexical_name": "E2_mdifferentiable",
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
  "slug": "e2-mdifferentiable--dc41eb695517b14b57ecd30f",
  "source": {
    "blob": "77c42853ea140f85adc91f9cd587ccf2d81d8dc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variantb62c6d306d5917361c93b6d82e14c30a1183300e0625a7c1114b57d1298a3f03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc41eb695517b14b57ecd30f603a4a74a4bb0fbdcdc66e774041f0a6880a800a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variantb62c6d306d5917361c93b6d82e14c30a1183300e0625a7c1114b57d1298a3f03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cd412d0-a37c-ee72-661f-6a6f79e9fabc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma E2_mdifferentiable : MDiff E2 := by
  rw [UpperHalfPlane.mdifferentiable_iff]
  have hη : DifferentiableOn ℂ η _ := fun z hz ↦
    (differentiableAt_eta_of_mem_upperHalfPlaneSet hz).differentiableWithinAt
  have hlog : DifferentiableOn ℂ (logDeriv η) _ :=
    (hη.deriv isOpen_upperHalfPlaneSet).div hη (fun _ hz ↦ eta_ne_zero hz)
  refine (hlog.const_mul (π * I / 12)⁻¹).congr (fun z hz ↦ ?_)
  simp [ofComplex_apply_of_im_pos hz, logDeriv_eta_eq_E2 ⟨z, hz⟩]
  field_simp

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variantb62c6d306d5917361c93b6d82e14c30a1183300e0625a7c1114b57d1298a3f03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variantb62c6d306d5917361c93b6d82e14c30a1183300e0625a7c1114b57d1298a3f03.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77c42853ea140f85adc91f9cd587ccf2d81d8dc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
