# map_val_atTop_of_Ici_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28f2c88b-8b83-2f82-49f3-5ec535f72e8f",
  "kind": "theorem",
  "lexical_name": "map_val_atTop_of_Ici_subset",
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
  "slug": "map-val-attop-of-ici-subset--6f094acf7bafdf746321581f",
  "source": {
    "blob": "7f615d8a1455f8dcca79ade0cd848c1c560026c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1607,
    "line": 1586,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f094acf7bafdf746321581f630314dc0353f370638bc47affacc5da5a411c90",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28f2c88b-8b83-2f82-49f3-5ec535f72e8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1586–1607.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_val_atTop_of_Ici_subset [SemilatticeSup α] {a : α} {s : Set α} (h : Ici a ⊆ s) :
    map ((↑) : s → α) atTop = atTop := by
  haveI : Nonempty s := ⟨⟨a, h le_rfl⟩⟩
  have : Directed (· ≥ ·) fun x : s => 𝓟 (Ici x) := by
    intro x y
    use ⟨x ⊔ y ⊔ a, h le_sup_right⟩
    simp only [ge_iff_le, principal_mono, Ici_subset_Ici, ← Subtype.coe_le_coe, Subtype.coe_mk]
    exact ⟨le_sup_left.trans le_sup_left, le_sup_right.trans le_sup_left⟩
  simp only [le_antisymm_iff, atTop, le_iInf_iff, le_principal_iff, mem_map, mem_setOf_eq,
    map_iInf_eq this, map_principal]
  constructor
  · intro x
    refine' mem_of_superset (mem_iInf_of_mem ⟨x ⊔ a, h le_sup_right⟩ (mem_principal_self _)) _
    rintro _ ⟨y, hy, rfl⟩
    exact le_trans le_sup_left (Subtype.coe_le_coe.2 hy)
  · intro x
    filter_upwards [mem_atTop (↑x ⊔ a)]with b hb
    exact ⟨⟨b, h <| le_sup_right.trans hb⟩, Subtype.coe_le_coe.1 (le_sup_left.trans hb), rfl⟩
#align filter.map_coe_at_top_of_Ici_subset Filter.map_val_atTop_of_Ici_subset

/-- The image of the filter `atTop` on `Ici a` under the coercion equals `atTop`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean#L1586).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f615d8a1455f8dcca79ade0cd848c1c560026c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
