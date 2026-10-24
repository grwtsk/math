# unitEqualises

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c5f7a0b175ac4f3e25a9736e29e2fd4afd00b23c4185f75a1f5d7d274e5eb25",
  "kind": "def",
  "lexical_name": "unitEqualises",
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
  "slug": "unitequalises--6957afea484aceb45099c34c",
  "source": {
    "blob": "02255dd0736aeab2513bf7ba6da42befe34827f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 86,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant2176f8c194638ec9b1c7a19589a94602f143d989f03a19ac9f5fd44e91390cd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6957afea484aceb45099c34ce6e978c03528d42fd120be5e279c6bfceb844e88",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant2176f8c194638ec9b1c7a19589a94602f143d989f03a19ac9f5fd44e91390cd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c5f7a0b175ac4f3e25a9736e29e2fd4afd00b23c4185f75a1f5d7d274e5eb25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitEqualises [∀ X : B, RegularMono (adj₁.unit.app X)] (X : B) :
    IsLimit (Fork.ofι (adj₁.unit.app X) (adj₁.unit_naturality _)) :=
  Fork.IsLimit.mk' _ fun s => by
    refine ⟨(RegularMono.lift' (adj₁.unit.app X) s.ι ?_).1, ?_, ?_⟩
    · rw [← cancel_mono (adj₁.unit.app (RegularMono.Z (adj₁.unit.app X)))]
      rw [assoc, ← adj₁.unit_naturality RegularMono.left]
      dsimp only [Functor.comp_obj]
      erw [← assoc, ← s.condition, assoc, ← U.map_comp, ← F.map_comp, RegularMono.w, F.map_comp,
        U.map_comp, s.condition_assoc, assoc, ← adj₁.unit_naturality RegularMono.right]
      rfl
    · apply (RegularMono.lift' (adj₁.unit.app X) s.ι _).2
    · intro m hm
      rw [← cancel_mono (adj₁.unit.app X)]
      apply hm.trans (RegularMono.lift' (adj₁.unit.app X) s.ι _).2.symm

/-- (Implementation)
To construct the right adjoint, we use the equalizer of `U' F η_X` with the composite

`U' F X ⟶ U' F L U' F X ⟶ U' F U F L U' F X ⟶ U' F U F X`

where the first morphism is `ι_U'FX`, the second is `U' F η_LU'FX` and the third is `U' F U δ_FX`.
We will show that this equalizer exists and that it forms the object map for a right adjoint to `L`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant2176f8c194638ec9b1c7a19589a94602f143d989f03a19ac9f5fd44e91390cd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant2176f8c194638ec9b1c7a19589a94602f143d989f03a19ac9f5fd44e91390cd7.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02255dd0736aeab2513bf7ba6da42befe34827f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
