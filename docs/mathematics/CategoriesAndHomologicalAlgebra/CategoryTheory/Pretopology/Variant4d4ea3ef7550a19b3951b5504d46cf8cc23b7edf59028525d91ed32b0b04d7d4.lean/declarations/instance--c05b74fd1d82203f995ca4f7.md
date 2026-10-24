# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db58256e41a63efb203f2e6baf374102db69ed2755fe262748d1b593a9c1f6f3",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c05b74fd1d82203f995ca4f7",
  "source": {
    "blob": "3ca0f3adb9817ef6f2523ab3b54159cb1e85d7c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 253,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variant4d4ea3ef7550a19b3951b5504d46cf8cc23b7edf59028525d91ed32b0b04d7d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c05b74fd1d82203f995ca4f76d63c1e5d932181c499305b9782990f6af3f1390",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variant4d4ea3ef7550a19b3951b5504d46cf8cc23b7edf59028525d91ed32b0b04d7d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db58256e41a63efb203f2e6baf374102db69ed2755fe262748d1b593a9c1f6f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CompleteLattice (Pretopology C) where
  __ := orderBot C
  __ := orderTop C
  inf t₁ t₂ := {
    coverings := fun X ↦ t₁.coverings X ∩ t₂.coverings X
    has_isos := fun _ _ f _ ↦
      ⟨t₁.has_isos f, t₂.has_isos f⟩
    pullbacks := fun _ _ f S hS ↦
      ⟨t₁.pullbacks f S hS.left, t₂.pullbacks f S hS.right⟩
    transitive := fun _ S Ti hS hTi ↦
      ⟨t₁.transitive S Ti hS.left (fun _ f H ↦ (hTi f H).left),
        t₂.transitive S Ti hS.right (fun _ f H ↦ (hTi f H).right)⟩
  }
  inf_le_left _ _ _ _ hS := hS.left
  inf_le_right _ _ _ _ hS := hS.right
  le_inf _ _ _ hts htr X _ hS := ⟨hts X hS, htr X hS⟩
  __ := completeLatticeOfInf _ (isGLB_sInf C)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variant4d4ea3ef7550a19b3951b5504d46cf8cc23b7edf59028525d91ed32b0b04d7d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variant4d4ea3ef7550a19b3951b5504d46cf8cc23b7edf59028525d91ed32b0b04d7d4.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ca0f3adb9817ef6f2523ab3b54159cb1e85d7c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
