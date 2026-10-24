# exists_ordered_selection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9a8a9d2c08ce69b9b947e79d53baf9cfa4d6ff7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:490f02b8-c6c8-437f-1556-163c002a0fbf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c25a9c8a-89ff-a5a9-243d-4fe9343dbf3f",
  "kind": "theorem",
  "lexical_name": "exists_ordered_selection",
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
  "slug": "exists-ordered-selection--f75f92b670421edf9ae5c32d",
  "source": {
    "blob": "f9a8a9d2c08ce69b9b947e79d53baf9cfa4d6ff7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 56,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotExistence/Variant84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f75f92b670421edf9ae5c32def6f83cae16aa93bffca7a1aec23cb63c55fec84",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PivotExistence/Variant84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c25a9c8a-89ff-a5a9-243d-4fe9343dbf3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ordered_selection (c : Fin k → Fin n) (hc : Function.Injective c) :
    ∃ (I : Fin k ↪o Fin n) (e : Equiv.Perm (Fin k)), ∀ j, c j = I (e j) := by
  classical
  let f : Fin k ↪ Fin n := ⟨c, hc⟩
  let s : Set.powersetCard (Fin n) k := Set.powersetCard.ofFinEmb k (Fin n) f
  let I : Fin k ↪o Fin n := Set.powersetCard.ofFinEmbEquiv.symm s
  have hm : ∀ j, c j ∈ s := by
    intro j
    change c j ∈ Set.powersetCard.ofFinEmb k (Fin n) f
    exact (Set.powersetCard.mem_ofFinEmb_iff_mem_range k (Fin n) f (c j)).mpr
      ⟨j, rfl⟩
  have hr : ∀ j, ∃ l, I l = c j := by
    intro j
    exact (Set.powersetCard.mem_range_ofFinEmbEquiv_symm_iff_mem s (c j)).mpr (hm j)
  choose e he using hr
  have hei : Function.Injective e := by
    intro i j hij
    apply hc
    calc
      c i = I (e i) := (he i).symm
      _ = I (e j) := congrArg I hij
      _ = c j := he j
  let p : Equiv.Perm (Fin k) :=
    Equiv.ofBijective e (Finite.injective_iff_bijective.mp hei)
  exact ⟨I, p, fun j => (he j).symm⟩

/-- Permuting selected columns has the usual common determinant-sign factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotExistence/Variant84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotExistence/Variant84d0630a3788e8dec1e091e7f3e1604b44af964a4fe094f8c8508a6bc25d337b.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9a8a9d2c08ce69b9b947e79d53baf9cfa4d6ff7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
