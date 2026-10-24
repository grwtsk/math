# ae_empty_or_univ_of_image_ae_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce0abf82-9296-fa51-f991-7eaad043e25f",
  "kind": "theorem",
  "lexical_name": "ae_empty_or_univ_of_image_ae_le'",
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
  "slug": "ae-empty-or-univ-of-image-ae-le--643c9f0d76ad7d91ea65afdb",
  "source": {
    "blob": "073f12c0e39662fb505a163e08913a9b6d36dcf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 184,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variante8c81c72dfa4bc5b20176bb4e0871efc58e45afc38f74d1c40d9e7a8ea82955d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:643c9f0d76ad7d91ea65afdb959b5602aa16b4997de4c40368872e3d9203bf14",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variante8c81c72dfa4bc5b20176bb4e0871efc58e45afc38f74d1c40d9e7a8ea82955d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce0abf82-9296-fa51-f991-7eaad043e25f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_empty_or_univ_of_image_ae_le' (hf : Ergodic f μ) (hs : NullMeasurableSet s μ)
    (hs' : f '' s ≤ᵐ[μ] s) (h_fin : μ s ≠ ∞) : s =ᵐ[μ] ∅ ∨ s =ᵐ[μ] univ := by
  replace hs' : s ≤ᵐ[μ] f ⁻¹' s :=
    (subset_preimage_image f s).eventuallySubset.trans
      (hf.quasiMeasurePreserving.preimage_mono_ae hs')
  exact ae_empty_or_univ_of_ae_le_preimage' hf hs hs' h_fin

/-- If a measurable equivalence is ergodic, then so is the inverse map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variante8c81c72dfa4bc5b20176bb4e0871efc58e45afc38f74d1c40d9e7a8ea82955d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variante8c81c72dfa4bc5b20176bb4e0871efc58e45afc38f74d1c40d9e7a8ea82955d.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `073f12c0e39662fb505a163e08913a9b6d36dcf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
