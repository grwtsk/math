# mono_of_mono_of_mono_of_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbb13820-6e79-bcd1-0116-c9493d7e6f39",
  "kind": "theorem",
  "lexical_name": "mono_of_mono_of_mono_of_mono",
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
  "slug": "mono-of-mono-of-mono-of-mono--ecd6f4ab355aa96d185868ca",
  "source": {
    "blob": "137da5d7cc72b45967a2c92089f0cc9d946f430c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 203,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecd6f4ab355aa96d185868cad666c73bb01a1425eb2d7501e2f1d4e0c1e26c34",
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

Occurrence: `result:cbb13820-6e79-bcd1-0116-c9493d7e6f39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mono_of_mono_of_mono_of_mono (hR₁ : R₁.Exact)
    (hR₂' : Mono (R₂.map' 0 1))
    (h₀ : Mono (app' φ 0))
    (h₁ : Mono (app' φ 2)) :
    Mono (app' φ 1) := by
  let ψ : mk₃ (0 : R₁.obj' 0 ⟶ _) (R₁.map' 0 1) (R₁.map' 1 2) ⟶
    mk₃ (0 : R₁.obj' 0 ⟶ _) (R₂.map' 0 1) (R₂.map' 1 2) := homMk₃ (𝟙 _) (app' φ 0) (app' φ 1)
      (app' φ 2) (by simp) (naturality' φ 0 1) (naturality' φ 1 2)
  refine mono_of_epi_of_mono_of_mono' ψ (by simp)
    (hR₁.exact 0).exact_toComposableArrows
    (exact₂_mk _ (by simp) ?_) (by dsimp [ψ]; infer_instance) h₀ h₁
  rw [ShortComplex.exact_iff_mono _ (by simp)]
  exact hR₂'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `137da5d7cc72b45967a2c92089f0cc9d946f430c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
