# isCokernelEpiComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5967a5297241363f8f1d435e23bcbfd4d8cb3e6482105c0c8c0fd6be290fd022",
  "kind": "def",
  "lexical_name": "isCokernelEpiComp",
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
  "slug": "iscokernelepicomp--06473173c1e17e40a28cfc98",
  "source": {
    "blob": "094edfbc4fcf82652f00b5ce2ed644d55f22968b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 631,
    "line": 617,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant0448c2bb1706bcdf5e6887c8f8ae4dfe718028ee211cbd10539ebacb7741649f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06473173c1e17e40a28cfc98bb9987ecdef2d71bc211a8a94544871e26acc274",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant0448c2bb1706bcdf5e6887c8f8ae4dfe718028ee211cbd10539ebacb7741649f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5967a5297241363f8f1d435e23bcbfd4d8cb3e6482105c0c8c0fd6be290fd022`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 617–631.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isCokernelEpiComp {c : CokernelCofork f} (i : IsColimit c) {W} (g : W ⟶ X) [hg : Epi g]
    {h : W ⟶ Y} (hh : h = g ≫ f) :
    IsColimit (CokernelCofork.ofπ c.π (by rw [hh]; simp) : CokernelCofork h) :=
  Cofork.IsColimit.mk' _ fun s =>
    let s' : CokernelCofork f :=
      Cofork.ofπ s.π
        (by
          apply hg.left_cancellation
          rw [← Category.assoc, ← hh, s.condition]
          simp)
    let l := CokernelCofork.IsColimit.desc' i s'.π s'.condition
    ⟨l.1, l.2, fun hm => by
      apply Cofork.IsColimit.hom_ext i; rw [Cofork.π_ofπ] at hm; rw [hm]; exact l.2.symm⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant0448c2bb1706bcdf5e6887c8f8ae4dfe718028ee211cbd10539ebacb7741649f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant0448c2bb1706bcdf5e6887c8f8ae4dfe718028ee211cbd10539ebacb7741649f.lean#L617).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `094edfbc4fcf82652f00b5ce2ed644d55f22968b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
