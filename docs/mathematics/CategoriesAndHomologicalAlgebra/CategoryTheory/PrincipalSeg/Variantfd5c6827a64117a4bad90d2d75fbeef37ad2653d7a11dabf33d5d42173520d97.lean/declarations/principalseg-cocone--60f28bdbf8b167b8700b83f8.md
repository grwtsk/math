# PrincipalSeg.cocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dce04f824b583699b5b627355d3f44b2b042d867093d76ad4901feb5acdf3fbc",
  "kind": "def",
  "lexical_name": "PrincipalSeg.cocone",
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
  "slug": "principalseg-cocone--60f28bdbf8b167b8700b83f8",
  "source": {
    "blob": "3b4f6fa7402c3abeca02656531a3f733b89567d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 28,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PrincipalSeg/Variantfd5c6827a64117a4bad90d2d75fbeef37ad2653d7a11dabf33d5d42173520d97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60f28bdbf8b167b8700b83f8eb614ae14605919501ff8100da57fca2b8f6fa18",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PrincipalSeg/Variantfd5c6827a64117a4bad90d2d75fbeef37ad2653d7a11dabf33d5d42173520d97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dce04f824b583699b5b627355d3f44b2b042d867093d76ad4901feb5acdf3fbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PrincipalSeg.cocone {α β : Type*} [PartialOrder α] [PartialOrder β]
    (f : α <i β) {C : Type*} [Category* C] (F : β ⥤ C) : Cocone (f.monotone.functor ⋙ F) where
  pt := F.obj f.top
  ι :=
    { app i := F.map (homOfLE (f.lt_top i).le)
      naturality i j f := by
        dsimp
        rw [← F.map_comp, comp_id]
        rfl }
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PrincipalSeg/Variantfd5c6827a64117a4bad90d2d75fbeef37ad2653d7a11dabf33d5d42173520d97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PrincipalSeg/Variantfd5c6827a64117a4bad90d2d75fbeef37ad2653d7a11dabf33d5d42173520d97.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b4f6fa7402c3abeca02656531a3f733b89567d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
