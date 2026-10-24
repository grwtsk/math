# eq_of_locally_eq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7a5b0d1-0794-0e06-7440-292053d40464",
  "kind": "theorem",
  "lexical_name": "eq_of_locally_eq'",
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
  "slug": "eq-of-locally-eq--2882a947d4976ceeb2b50c9f",
  "source": {
    "blob": "07b565b7ca63f2a34d16e39af2a392af18864bb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 307,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2882a947d4976ceeb2b50c9f150ddbea281211a2569a77ded43d2212c88c2ef8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7a5b0d1-0794-0e06-7440-292053d40464`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_locally_eq' (V : Opens X) (iUV : ∀ i : ι, U i ⟶ V) (hcover : V ≤ iSup U)
    (s t : F.1.obj (op V)) (h : ∀ i, F.1.map (iUV i).op s = F.1.map (iUV i).op t) : s = t := by
  have V_eq_supr_U : V = iSup U := le_antisymm hcover (iSup_le fun i => (iUV i).le)
  suffices F.1.map (eqToHom V_eq_supr_U.symm).op s = F.1.map (eqToHom V_eq_supr_U.symm).op t by
    convert congr_arg (F.1.map (eqToHom V_eq_supr_U).op) this <;>
    rw [← comp_apply, ← F.1.map_comp, eqToHom_op, eqToHom_op, eqToHom_trans, eqToHom_refl,
      F.1.map_id, id_apply]
  apply eq_of_locally_eq
  intro i
  rw [← comp_apply, ← comp_apply, ← F.1.map_comp]
  convert h i
set_option linter.uppercaseLean3 false in
#align Top.sheaf.eq_of_locally_eq' TopCat.Sheaf.eq_of_locally_eq'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07b565b7ca63f2a34d16e39af2a392af18864bb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
