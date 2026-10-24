# normalEpiOfNormalMonoUnop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d918eaf4248fc7190cb28eae3d7d2cb5d84285a3accd1b1786c6e7dd6f45432",
  "kind": "def",
  "lexical_name": "normalEpiOfNormalMonoUnop",
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
  "slug": "normalepiofnormalmonounop--c06da7dfdd711adaf920a820",
  "source": {
    "blob": "3172bf8d21ca81b316933cbed4f0d6652152b2f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 260,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c06da7dfdd711adaf920a820084baf4e4354fd87b5c5b4a8558e7219963c5564",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d918eaf4248fc7190cb28eae3d7d2cb5d84285a3accd1b1786c6e7dd6f45432`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalEpiOfNormalMonoUnop {X Y : Cᵒᵖ} (f : X ⟶ Y) (m : NormalMono f.unop) : NormalEpi f
    where
  W := op m.Z
  g := m.g.op
  w := congrArg Quiver.Hom.op m.w
  isColimit :=
    CokernelCofork.IsColimit.ofπ _ _
      (fun g' w' =>
        (KernelFork.IsLimit.lift' m.isLimit g'.unop (congrArg Quiver.Hom.unop w')).1.op)
      (fun g' w' =>
        congrArg Quiver.Hom.op
          (KernelFork.IsLimit.lift' m.isLimit g'.unop (congrArg Quiver.Hom.unop w')).2)
      (by
        rintro Z' g' w' m' rfl
        apply Quiver.Hom.unop_inj
        apply m.isLimit.uniq (KernelFork.ofι (m'.unop ≫ f.unop) _) m'.unop
        rintro (⟨⟩ | ⟨⟩) <;> simp)
#align category_theory.normal_epi_of_normal_mono_unop CategoryTheory.normalEpiOfNormalMonoUnop

/-- A normal epi becomes a normal mono in the opposite category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3172bf8d21ca81b316933cbed4f0d6652152b2f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
