# actionPUnitEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f40916171efe3cf7c0f9129ddc0d02f828df84b20a642da23c01024a960f2f8f",
  "kind": "def",
  "lexical_name": "actionPUnitEquivalence",
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
  "slug": "actionpunitequivalence--b57fc0307115dd21b134fc15",
  "source": {
    "blob": "70b64f2e4f4f0afa1b103d0820ca92d52844837b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 316,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0cdcf4845a18ff91d53d71c6eb5739d2505ca2de6605b8c9f04d3e6e54eb6695.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b57fc0307115dd21b134fc154afd031f8739b55d529f6b8a0bbf1f07e990226f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0cdcf4845a18ff91d53d71c6eb5739d2505ca2de6605b8c9f04d3e6e54eb6695.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f40916171efe3cf7c0f9129ddc0d02f828df84b20a642da23c01024a960f2f8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actionPUnitEquivalence : Action V PUnit ≌ V where
  functor := forget V _
  inverse :=
    { obj := fun X => ⟨X, 1⟩
      map := fun f => ⟨f, fun ⟨⟩ => by simp⟩ }
  unitIso :=
    NatIso.ofComponents fun X => mkIso (Iso.refl _) fun ⟨⟩ => by
      simp only [Functor.id_obj, MonoidHom.one_apply, End.one_def, Functor.comp_obj,
        forget_obj, Iso.refl_hom, Category.comp_id]
      exact ρ_one X
  counitIso := NatIso.ofComponents fun _ => Iso.refl _

variable (V)

/-- The "restriction" functor along a monoid homomorphism `f : G →* H`,
taking actions of `H` to actions of `G`.

(This makes sense for any homomorphism, but the name is natural when `f` is a monomorphism.)
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0cdcf4845a18ff91d53d71c6eb5739d2505ca2de6605b8c9f04d3e6e54eb6695.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0cdcf4845a18ff91d53d71c6eb5739d2505ca2de6605b8c9f04d3e6e54eb6695.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70b64f2e4f4f0afa1b103d0820ca92d52844837b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
