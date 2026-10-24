# commShift_adjunction_op_int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c091d92f3d6f8139f22d5b382eb8ac2ddaeb0a1b2e49991d1a23cf1f22313af",
  "kind": "instance",
  "lexical_name": "commShift_adjunction_op_int",
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
  "slug": "commshift-adjunction-op-int--8157068385807d3ad428a1fb",
  "source": {
    "blob": "d79adaa9ccbfe79ba5bce497f38f888be4fa0e92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8157068385807d3ad428a1fb2c4fe2a1daeb2f023865745bd3eed9bbed840a37",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c091d92f3d6f8139f22d5b382eb8ac2ddaeb0a1b2e49991d1a23cf1f22313af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable scoped instance commShift_adjunction_op_int {G : D ⥤ C} [G.CommShift ℤ] (adj : F ⊣ G)
    [Adjunction.CommShift adj ℤ] : Adjunction.CommShift adj.op ℤ := by
  have eq : adj.op = PullbackShift.adjunction
    (AddMonoidHom.mk' (fun (n : ℤ) => -n) (by intros; dsimp; omega))
      (OppositeShift.adjunction ℤ adj) := by
    ext
    dsimp [PullbackShift.adjunction, NatTrans.PullbackShift.natIsoId,
      NatTrans.PullbackShift.natIsoComp, PullbackShift.functor, PullbackShift.natTrans,
      OppositeShift.adjunction, OppositeShift.natTrans, NatTrans.OppositeShift.natIsoId,
      NatTrans.OppositeShift.natIsoComp, OppositeShift.functor]
    simp only [Int.reduceNeg, Category.comp_id, Category.id_comp]
  rw [eq]
  exact inferInstanceAs (Adjunction.CommShift (PullbackShift.adjunction
    (AddMonoidHom.mk' (fun (n : ℤ) => -n) (by intros; dsimp; omega))
      (OppositeShift.adjunction ℤ adj)) ℤ)

end Pretriangulated.Opposite

namespace Functor

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d79adaa9ccbfe79ba5bce497f38f888be4fa0e92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
