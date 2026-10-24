# epi_of_epi_of_epi_of_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdcc4c8b-c762-5b6f-5057-c94cbba7fec6",
  "kind": "theorem",
  "lexical_name": "epi_of_epi_of_epi_of_mono",
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
  "slug": "epi-of-epi-of-epi-of-mono--a6ed8515abcf759fdd266613",
  "source": {
    "blob": "137da5d7cc72b45967a2c92089f0cc9d946f430c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 125,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6ed8515abcf759fdd2666137bd025490a86883ac4aeb2f5ca0bc408cdf5009b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdcc4c8b-c762-5b6f-5057-c94cbba7fec6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem epi_of_epi_of_epi_of_mono (hR₁ : R₁.Exact) (hR₂ : R₂.Exact)
    (h₀ : Epi (app' φ 0)) (h₂ : Epi (app' φ 2)) (h₃ : Mono (app' φ 3)) :
    Epi (app' φ 1) :=
  epi_of_epi_of_epi_of_mono' φ (hR₁.exact 1).exact_toComposableArrows
    (hR₂.exact 0).exact_toComposableArrows
    (by simpa only [R₂.map'_comp 1 2 3] using hR₂.toIsComplex.zero 1) h₀ h₂ h₃

end Four

section Five

variable {R₁ R₂ : ComposableArrows C 4} (hR₁ : R₁.Exact) (hR₂ : R₂.Exact) (φ : R₁ ⟶ R₂)
include hR₁ hR₂

/-- The five lemma. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `137da5d7cc72b45967a2c92089f0cc9d946f430c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
