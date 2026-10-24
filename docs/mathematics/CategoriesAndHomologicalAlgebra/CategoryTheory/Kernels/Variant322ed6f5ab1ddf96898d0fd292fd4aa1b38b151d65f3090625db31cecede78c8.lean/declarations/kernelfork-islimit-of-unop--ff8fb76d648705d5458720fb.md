# KernelFork.IsLimit.ofιUnop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ce1e866cb9c052062e8de36785a500d57884d995ab478c74108aa0ba6bf9558",
  "kind": "def",
  "lexical_name": "KernelFork.IsLimit.ofιUnop",
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
  "slug": "kernelfork-islimit-of-unop--ff8fb76d648705d5458720fb",
  "source": {
    "blob": "74ef1e9401df134b8b9084fd8ed5ded404385493",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 79,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant322ed6f5ab1ddf96898d0fd292fd4aa1b38b151d65f3090625db31cecede78c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff8fb76d648705d5458720fb1cd6339e77c1338a3d3e7df0a3bc2bfedefbe1cb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant322ed6f5ab1ddf96898d0fd292fd4aa1b38b151d65f3090625db31cecede78c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ce1e866cb9c052062e8de36785a500d57884d995ab478c74108aa0ba6bf9558`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def KernelFork.IsLimit.ofιUnop {K X Y : Cᵒᵖ} (i : K ⟶ X) {f : X ⟶ Y}
    (w : i ≫ f = 0) (h : IsLimit (KernelFork.ofι i w)) :
    IsColimit (CokernelCofork.ofπ i.unop
      (show f.unop ≫ i.unop = 0 by rw [← unop_comp, w, unop_zero])) :=
  CokernelCofork.IsColimit.ofπ _ _
    (fun x hx => (h.lift (KernelFork.ofι x.op (Quiver.Hom.unop_inj hx))).unop)
    (fun _ _ => Quiver.Hom.op_inj (Fork.IsLimit.lift_ι h))
    (fun x hx b hb => Quiver.Hom.op_inj (Fork.IsLimit.hom_ext h (by
      simpa only [Quiver.Hom.op_unop, Fork.IsLimit.lift_ι] using! Quiver.Hom.unop_inj hb)))

end HasZeroMorphisms

end CategoryTheory.Limits
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant322ed6f5ab1ddf96898d0fd292fd4aa1b38b151d65f3090625db31cecede78c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant322ed6f5ab1ddf96898d0fd292fd4aa1b38b151d65f3090625db31cecede78c8.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74ef1e9401df134b8b9084fd8ed5ded404385493` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
