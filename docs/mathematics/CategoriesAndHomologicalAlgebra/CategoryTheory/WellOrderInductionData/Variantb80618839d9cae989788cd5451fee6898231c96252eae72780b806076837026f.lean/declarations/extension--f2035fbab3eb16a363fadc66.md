# Extension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06fb9d93d5d43fbff60d095ebc012c19de4237c096217c515d9dd32d87917be9",
  "kind": "structure",
  "lexical_name": "Extension",
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
  "slug": "extension--f2035fbab3eb16a363fadc66",
  "source": {
    "blob": "db0414e5b6614f7b302812aa95bf57cd7482bc4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 96,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantb80618839d9cae989788cd5451fee6898231c96252eae72780b806076837026f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2035fbab3eb16a363fadc6694091d529209485b6fe35477b0da1ff951321caa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantb80618839d9cae989788cd5451fee6898231c96252eae72780b806076837026f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06fb9d93d5d43fbff60d095ebc012c19de4237c096217c515d9dd32d87917be9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Extension (val₀ : F.obj (op ⊥)) (j : J) where
  /-- An element in `F.obj (op j)`, which, by restriction, induces elements
  in `F.obj (op i)` for all `i ≤ j`. -/
  val : F.obj (op j)
  map_zero : F.map (homOfLE bot_le).op val = val₀
  map_succ (i : J) (hi : i < j) :
    F.map (homOfLE (Order.succ_le_of_lt hi)).op val =
      d.succ i (not_isMax_iff.2 ⟨_, hi⟩) (F.map (homOfLE hi.le).op val)
  map_limit (i : J) (hi : Order.IsSuccLimit i) (hij : i ≤ j) :
    F.map (homOfLE hij).op val = d.lift i hi
      { val := fun ⟨⟨k, hk⟩⟩ ↦ F.map (homOfLE (hk.le.trans hij)).op val
        property := fun f ↦ by
          dsimp
          rw [← comp_apply, ← map_comp]
          rfl }

namespace Extension

variable {d} {val₀ : F.obj (op ⊥)}

/-- An element in `d.Extension val₀ j` induces an element in `d.Extension val₀ i` when `i ≤ j`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantb80618839d9cae989788cd5451fee6898231c96252eae72780b806076837026f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantb80618839d9cae989788cd5451fee6898231c96252eae72780b806076837026f.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db0414e5b6614f7b302812aa95bf57cd7482bc4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
