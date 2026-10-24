# normalMonoOfNormalEpiUnop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95cc9e96a0c73004bb7905d87ffc5bfbe3292409ee496edcea06386dcb7b10cd",
  "kind": "def",
  "lexical_name": "normalMonoOfNormalEpiUnop",
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
  "slug": "normalmonoofnormalepiunop--e9f0f4ddde094f37a7955c7c",
  "source": {
    "blob": "80066fd2ea2d1a454c90bebaf04968d2d81ecbc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 291,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante744348808d150c301f5730485577210977c713f876848677136873db96babd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9f0f4ddde094f37a7955c7c5d45865a7275d6a9796c4fc7319f836c690822ac",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante744348808d150c301f5730485577210977c713f876848677136873db96babd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95cc9e96a0c73004bb7905d87ffc5bfbe3292409ee496edcea06386dcb7b10cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalMonoOfNormalEpiUnop {X Y : Cᵒᵖ} (f : X ⟶ Y) (m : NormalEpi f.unop) : NormalMono f where
  Z := op m.W
  g := m.g.op
  w := congrArg Quiver.Hom.op m.w
  isLimit :=
    KernelFork.IsLimit.ofι _ _
      (fun g' w' =>
        (CokernelCofork.IsColimit.desc' m.isColimit g'.unop (congrArg Quiver.Hom.unop w')).1.op)
      (fun g' w' =>
        congrArg Quiver.Hom.op
          (CokernelCofork.IsColimit.desc' m.isColimit g'.unop (congrArg Quiver.Hom.unop w')).2)
      (by
        rintro Z' g' w' m' rfl
        apply Quiver.Hom.unop_inj
        apply m.isColimit.uniq (CokernelCofork.ofπ (f.unop ≫ m'.unop) _) m'.unop
        rintro (⟨⟩ | ⟨⟩) <;> simp)

section

variable (C)

/-- A normal epi category is a category in which every epimorphism is normal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante744348808d150c301f5730485577210977c713f876848677136873db96babd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante744348808d150c301f5730485577210977c713f876848677136873db96babd2.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80066fd2ea2d1a454c90bebaf04968d2d81ecbc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
