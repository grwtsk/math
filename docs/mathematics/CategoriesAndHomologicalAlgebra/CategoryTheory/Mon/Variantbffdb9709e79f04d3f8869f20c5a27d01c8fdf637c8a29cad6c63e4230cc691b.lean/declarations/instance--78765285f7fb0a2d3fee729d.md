# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcc3ba9bc2cf152a8a37648b3a4394d549ed7e8b8274d95e9bb5e145969f12e8",
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
  "slug": "instance--78765285f7fb0a2d3fee729d",
  "source": {
    "blob": "cbacd36734805e88f5d6ac3532c3d10c6133de6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1028,
    "line": 1020,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantbffdb9709e79f04d3f8869f20c5a27d01c8fdf637c8a29cad6c63e4230cc691b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78765285f7fb0a2d3fee729ddec95fc2d536855b2c5514291473cc59c8d9e537",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantbffdb9709e79f04d3f8869f20c5a27d01c8fdf637c8a29cad6c63e4230cc691b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcc3ba9bc2cf152a8a37648b3a4394d549ed7e8b8274d95e9bb5e145969f12e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1020–1028.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [F.LaxBraided] (M N : C) [MonObj M] [MonObj N] : IsMonHom («μ» F M N) where
  one_hom := by simp [← Functor.map_comp, leftUnitor_inv_comp_tensorHom_assoc]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
attribute [-simp] IsMonHom.one_hom IsMonHom.one_hom_assoc IsMonHom.mul_hom in
attribute [local simp] ε_tensorHom_comp_μ_assoc tensorμ_comp_μ_tensorHom_μ_comp_μ_assoc
  MonObj.tensorObj.one_def MonObj.tensorObj.mul_def in
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantbffdb9709e79f04d3f8869f20c5a27d01c8fdf637c8a29cad6c63e4230cc691b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantbffdb9709e79f04d3f8869f20c5a27d01c8fdf637c8a29cad6c63e4230cc691b.lean#L1020).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbacd36734805e88f5d6ac3532c3d10c6133de6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
