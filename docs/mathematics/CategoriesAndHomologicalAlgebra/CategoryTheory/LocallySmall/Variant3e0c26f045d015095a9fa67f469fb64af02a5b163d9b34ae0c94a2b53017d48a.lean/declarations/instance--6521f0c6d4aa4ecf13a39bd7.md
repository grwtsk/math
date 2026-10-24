# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0cb8d5c591c5eb92299ff0e8f9e1398f6b4cc5029ef02e3f5566666a01b88de8",
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
  "slug": "instance--6521f0c6d4aa4ecf13a39bd7",
  "source": {
    "blob": "136e954a16b90d89f1a17ee3035284feb4814bcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant3e0c26f045d015095a9fa67f469fb64af02a5b163d9b34ae0c94a2b53017d48a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6521f0c6d4aa4ecf13a39bd7b34e24203c56dcb8eed101098cacc527c6b3f601",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant3e0c26f045d015095a9fa67f469fb64af02a5b163d9b34ae0c94a2b53017d48a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0cb8d5c591c5eb92299ff0e8f9e1398f6b4cc5029ef02e3f5566666a01b88de8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : LocallySmall.{v} (ObjectProperty.FullSubcategory (IsIndObject (C := C))) where
  hom_small X Y := by
    obtain ⟨⟨P⟩⟩ := X.2
    obtain ⟨⟨Q⟩⟩ := Y.2
    let e₁ := IsColimit.coconePointUniqueUpToIso (P.isColimit) (colimit.isColimit _)
    let e₂ := IsColimit.coconePointUniqueUpToIso (Q.isColimit) (colimit.isColimit _)
    let e₃ := Iso.homCongr e₁ e₂
    dsimp only [colimit.cocone_x] at e₃
    exact small_map e₃

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant3e0c26f045d015095a9fa67f469fb64af02a5b163d9b34ae0c94a2b53017d48a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant3e0c26f045d015095a9fa67f469fb64af02a5b163d9b34ae0c94a2b53017d48a.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `136e954a16b90d89f1a17ee3035284feb4814bcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
