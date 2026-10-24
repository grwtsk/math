# uncurry_ofArrows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08c3c2c8-78c1-6470-4f1c-d0963b58c062",
  "kind": "theorem",
  "lexical_name": "uncurry_ofArrows",
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
  "slug": "uncurry-ofarrows--68f8f28ab49c300c6c2da97f",
  "source": {
    "blob": "e8e9d42120c8a45faefc8c67f9578631e285179e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 441,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presieve/Variantd2c2832f860619bd759be2950015aa1a3de301a575e56f86835b0827a9ed56f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68f8f28ab49c300c6c2da97fb0813e15b383da5e92a8e530eebd01fa7642df23",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presieve/Variantd2c2832f860619bd759be2950015aa1a3de301a575e56f86835b0827a9ed56f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08c3c2c8-78c1-6470-4f1c-d0963b58c062`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem uncurry_ofArrows {ι : Type*} (Y : ι → C) (f : (i : ι) → Y i ⟶ X) :
    (ofArrows Y f).uncurry = Set.range fun i : ι ↦ ⟨_, f i⟩ := by
  ext ⟨Z, v⟩; simp only [Set.mem_range, Sigma.mk.injEq]; constructor
  · rintro ⟨i⟩; exact ⟨_, rfl, HEq.refl _⟩
  · rintro ⟨i, rfl, h⟩; rw [← eq_of_heq h]; exact ⟨i⟩

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presieve/Variantd2c2832f860619bd759be2950015aa1a3de301a575e56f86835b0827a9ed56f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presieve/Variantd2c2832f860619bd759be2950015aa1a3de301a575e56f86835b0827a9ed56f8.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8e9d42120c8a45faefc8c67f9578631e285179e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
