# normalEpiOfNormalMonoUnop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed07f0fa6995a43ea5c58887339a134e1220a6b4c0acdd0e75bb56382d7c46d5",
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
  "slug": "normalepiofnormalmonounop--a6c0439726bb12e473c98047",
  "source": {
    "blob": "2dfe7ec370a0c1cb4473eb4245e33f102d86be89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 217,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant542963fe7bfe56af162822790beaeb2b1346b12bbe4571c7c12d3e5d5dedacf9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6c0439726bb12e473c98047b90a448f9aad990e3a63483b2031f002be8f15f8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant542963fe7bfe56af162822790beaeb2b1346b12bbe4571c7c12d3e5d5dedacf9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed07f0fa6995a43ea5c58887339a134e1220a6b4c0acdd0e75bb56382d7c46d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalEpiOfNormalMonoUnop {X Y : Cᵒᵖ} (f : X ⟶ Y) (m : NormalMono f.unop) : NormalEpi f where
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

/-- A normal epi becomes a normal mono in the opposite category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant542963fe7bfe56af162822790beaeb2b1346b12bbe4571c7c12d3e5d5dedacf9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant542963fe7bfe56af162822790beaeb2b1346b12bbe4571c7c12d3e5d5dedacf9.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dfe7ec370a0c1cb4473eb4245e33f102d86be89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
