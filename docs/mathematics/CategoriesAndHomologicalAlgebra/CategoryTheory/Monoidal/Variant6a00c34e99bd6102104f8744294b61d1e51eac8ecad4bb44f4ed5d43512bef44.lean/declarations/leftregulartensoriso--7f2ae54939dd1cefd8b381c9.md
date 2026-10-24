# leftRegularTensorIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6d4da66a754a81dc6857027101ea08210371d0f5f74b752e4163ca0906eabcc",
  "kind": "def",
  "lexical_name": "leftRegularTensorIso",
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
  "slug": "leftregulartensoriso--7f2ae54939dd1cefd8b381c9",
  "source": {
    "blob": "a6d76d75ef20caf0c77b1f6a930a10c93ce7da6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 227,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant6a00c34e99bd6102104f8744294b61d1e51eac8ecad4bb44f4ed5d43512bef44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f2ae54939dd1cefd8b381c9856217452060806da17902eaa2a9349861442714",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant6a00c34e99bd6102104f8744294b61d1e51eac8ecad4bb44f4ed5d43512bef44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b6d4da66a754a81dc6857027101ea08210371d0f5f74b752e4163ca0906eabcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def leftRegularTensorIso (X : Action (Type u) G) :
    leftRegular G ⊗ X ≅ leftRegular G ⊗ trivial G X.V :=
  mkIso (Equiv.toIso {
    toFun g := ⟨g.1, (X.ρ (g.1⁻¹ : G) g.2 : X.V)⟩
    invFun g := ⟨g.1, X.ρ g.1 g.2⟩
    left_inv _ := Prod.ext rfl <| by simp
    right_inv _ := Prod.ext rfl <| by simp }) <| fun _ => by
      ext _
      simp only [tensorObj_V, tensor_ρ]
      simp [types_tensorObj_def]
      rfl


/-- An isomorphism of `G`-sets `Gⁿ⁺¹ ≅ G × Gⁿ`, where `G` acts by left multiplication on `Gⁿ⁺¹` and
`G` but trivially on `Gⁿ`. The map sends `(g₀, ..., gₙ) ↦ (g₀, (g₀⁻¹g₁, g₁⁻¹g₂, ..., gₙ₋₁⁻¹gₙ))`,
and the inverse is `(g₀, (g₁, ..., gₙ)) ↦ (g₀, g₀g₁, g₀g₁g₂, ..., g₀g₁...gₙ).` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant6a00c34e99bd6102104f8744294b61d1e51eac8ecad4bb44f4ed5d43512bef44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant6a00c34e99bd6102104f8744294b61d1e51eac8ecad4bb44f4ed5d43512bef44.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6d76d75ef20caf0c77b1f6a930a10c93ce7da6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
