# biproduct.fromSubtype_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4058f6c0-3d24-8ec3-c2dd-4ebff47d7903",
  "kind": "theorem",
  "lexical_name": "biproduct.fromSubtype_π",
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
  "slug": "biproduct-fromsubtype--5271f5745a51824560e3630a",
  "source": {
    "blob": "d01bcdd6cfe52972b0f74ead8243f88dc3db82fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 739,
    "line": 728,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantabafba1b88f58e1aa3b724e469c4a766a02d5af807f920e717a4a77ea31c681e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5271f5745a51824560e3630a087033532caa73024d4d34a4c2939812e3d46141",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantabafba1b88f58e1aa3b724e469c4a766a02d5af807f920e717a4a77ea31c681e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4058f6c0-3d24-8ec3-c2dd-4ebff47d7903`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 728–739.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem biproduct.fromSubtype_π [DecidablePred p] (j : J) :
    biproduct.fromSubtype f p ≫ biproduct.π f j =
      if h : p j then biproduct.π (Subtype.restrict p f) ⟨j, h⟩ else 0 := by
  classical
  ext i; dsimp
  rw [biproduct.fromSubtype, biproduct.ι_desc_assoc, biproduct.ι_π]
  by_cases h : p j
  · rw [dif_pos h, biproduct.ι_π]
    split_ifs with h₁ h₂ h₂
    exacts [rfl, False.elim (h₂ (Subtype.ext h₁)), False.elim (h₁ (congr_arg Subtype.val h₂)), rfl]
  · rw [dif_neg h, dif_neg (show (i : J) ≠ j from fun h₂ => h (h₂ ▸ i.2)), comp_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantabafba1b88f58e1aa3b724e469c4a766a02d5af807f920e717a4a77ea31c681e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantabafba1b88f58e1aa3b724e469c4a766a02d5af807f920e717a4a77ea31c681e.lean#L728).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d01bcdd6cfe52972b0f74ead8243f88dc3db82fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
