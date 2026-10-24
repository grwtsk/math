# ofIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81e250d28ede4a13ae5237c9723a5acf8c48ed85707bd047196e121f4222962e",
  "kind": "def",
  "lexical_name": "ofIso",
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
  "slug": "ofiso--926fa2e2bb0fdea34a2b17f9",
  "source": {
    "blob": "e9c7f8d577dd727ed3f697649fc410e1d5247c5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 664,
    "line": 653,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantd0cdec42853774bdbf47919d8aac865d34caf889749b6e4b37ca614f52da8168.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:926fa2e2bb0fdea34a2b17f99be29ec1b4d04e4ee972f605ed9368e2ebd2f03b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantd0cdec42853774bdbf47919d8aac865d34caf889749b6e4b37ca614f52da8168.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81e250d28ede4a13ae5237c9723a5acf8c48ed85707bd047196e121f4222962e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 653–664.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofIso {S₁ S₂ : ShortComplex C} (s : S₁.Splitting) (e : S₁ ≅ S₂) : S₂.Splitting where
  r := e.inv.τ₂ ≫ s.r ≫ e.hom.τ₁
  s := e.inv.τ₃ ≫ s.s ≫ e.hom.τ₂
  f_r := by rw [← e.inv.comm₁₂_assoc, s.f_r_assoc, ← comp_τ₁, e.inv_hom_id, id_τ₁]
  s_g := by rw [assoc, assoc, e.hom.comm₂₃, s.s_g_assoc, ← comp_τ₃, e.inv_hom_id, id_τ₃]
  id := by
    have eq := e.inv.τ₂ ≫= s.id =≫ e.hom.τ₂
    rw [id_comp, ← comp_τ₂, e.inv_hom_id, id_τ₂] at eq
    rw [← eq, assoc, assoc, add_comp, assoc, assoc, comp_add,
      e.hom.comm₁₂, e.inv.comm₂₃_assoc]

/-- The obvious splitting of the short complex `X₁ ⟶ X₁ ⊞ X₂ ⟶ X₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantd0cdec42853774bdbf47919d8aac865d34caf889749b6e4b37ca614f52da8168.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantd0cdec42853774bdbf47919d8aac865d34caf889749b6e4b37ca614f52da8168.lean#L653).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9c7f8d577dd727ed3f697649fc410e1d5247c5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
