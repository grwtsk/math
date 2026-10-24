# splitMonoOfEqualizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4da79f0b452d9f26eb19e80a940e4a6ac1dc4b191247e559cd1df873ad292438",
  "kind": "def",
  "lexical_name": "splitMonoOfEqualizer",
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
  "slug": "splitmonoofequalizer--4340b706a8a6b1ec2c1a1eca",
  "source": {
    "blob": "2a1a31cf517f5e1ff080a3d206aeae69fffc32d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1077,
    "line": 1069,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf9d91284b4001d74f1be1aa026779ce0efd4de692859d19d62260e2dcbf5edda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4340b706a8a6b1ec2c1a1eca106552f469674c57eba8b27849926f08ef3e1ff4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf9d91284b4001d74f1be1aa026779ce0efd4de692859d19d62260e2dcbf5edda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4da79f0b452d9f26eb19e80a940e4a6ac1dc4b191247e559cd1df873ad292438`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1069–1077.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def splitMonoOfEqualizer {X Y : C} {f : X ⟶ Y} {r : Y ⟶ X} (hr : f ≫ r ≫ f = f)
    (h : IsLimit (Fork.ofι f (hr.trans (Category.comp_id _).symm : f ≫ r ≫ f = f ≫ 𝟙 Y))) :
    SplitMono f where
  retraction := r
  id := Fork.IsLimit.hom_ext h ((Category.assoc _ _ _).trans <| hr.trans (Category.id_comp _).symm)

variable {C f g}

/-- The fork obtained by postcomposing an equalizer fork with a monomorphism is an equalizer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf9d91284b4001d74f1be1aa026779ce0efd4de692859d19d62260e2dcbf5edda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantf9d91284b4001d74f1be1aa026779ce0efd4de692859d19d62260e2dcbf5edda.lean#L1069).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a1a31cf517f5e1ff080a3d206aeae69fffc32d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
