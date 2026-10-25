# exists_elementaryEmbedding_card_eq_of_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96880275-c0a9-e25a-9d28-2be70e240576",
  "kind": "theorem",
  "lexical_name": "exists_elementaryEmbedding_card_eq_of_ge",
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
  "slug": "exists-elementaryembedding-card-eq-of-ge--791f7e56c0d61db2d5fc1c3a",
  "source": {
    "blob": "4e8f5d7fa99799272cc381e0c7724fe6b6fff5a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 223,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:791f7e56c0d61db2d5fc1c3a6b15620d314b73107fa9aab62f87f2ea1f0fb4e5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96880275-c0a9-e25a-9d28-2be70e240576`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_elementaryEmbedding_card_eq_of_ge (M : Type w') [L.Structure M] [iM : Infinite M]
    (κ : Cardinal.{w}) (h1 : Cardinal.lift.{w} L.card ≤ Cardinal.lift.{max u v} κ)
    (h2 : Cardinal.lift.{w} #M ≤ Cardinal.lift.{w'} κ) :
    ∃ N : Bundled L.Structure, Nonempty (M ↪ₑ[L] N) ∧ #N = κ := by
  obtain ⟨N0, hN0⟩ := (L.elementaryDiagram M).exists_large_model_of_infinite_model κ M
  rw [← lift_le.{max u v}, lift_lift, lift_lift] at h2
  obtain ⟨N, ⟨NN0⟩, hN⟩ :=
    exists_elementaryEmbedding_card_eq_of_le (L[[M]]) N0 κ
      (aleph0_le_lift.1 ((aleph0_le_lift.2 (aleph0_le_mk M)).trans h2))
      (by
        simp only [card_withConstants, lift_add, lift_lift]
        rw [add_comm, add_eq_max (aleph0_le_lift.2 (infinite_iff.1 iM)), max_le_iff]
        rw [← lift_le.{w'}, lift_lift, lift_lift] at h1
        exact ⟨h2, h1⟩)
      (hN0.trans (by rw [← lift_umax, lift_id]))
  letI := (lhomWithConstants L M).reduct N
  haveI h : N ⊨ L.elementaryDiagram M :=
    (NN0.theory_model_iff (L.elementaryDiagram M)).2 inferInstance
  refine ⟨Bundled.of N, ⟨?_⟩, hN⟩
  apply ElementaryEmbedding.ofModelsElementaryDiagram L M N

end

/-- The Löwenheim–Skolem Theorem: If `κ` is a cardinal greater than the cardinalities of `L`
and an infinite `L`-structure `M`, then there is an elementary embedding in the appropriate
direction between then `M` and a structure of cardinality `κ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e8f5d7fa99799272cc381e0c7724fe6b6fff5a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
