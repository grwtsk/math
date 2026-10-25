# isSatisfiable_iff_isFinitelySatisfiable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c67c6fc11af57b4996931de4cddb6f77970b4901",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2da44e14745481a2582c8c77fca0a30e61c87199d303a0d43335da4f9a62ed8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:429e860c-648f-e76e-4a85-3ee9234dd40b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4bb85de2-60f4-03c2-297c-e0b18f8ceea7",
  "kind": "theorem",
  "lexical_name": "isSatisfiable_iff_isFinitelySatisfiable",
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
  "slug": "issatisfiable-iff-isfinitelysatisfiable--243af685fd0dc4a857410878",
  "source": {
    "blob": "c67c6fc11af57b4996931de4cddb6f77970b4901",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantc2da44e14745481a2582c8c77fca0a30e61c87199d303a0d43335da4f9a62ed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:243af685fd0dc4a857410878bb10c4eb6fb51c65f9c931952f2fa30d4d4c07f1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantc2da44e14745481a2582c8c77fca0a30e61c87199d303a0d43335da4f9a62ed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bb85de2-60f4-03c2-297c-e0b18f8ceea7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSatisfiable_iff_isFinitelySatisfiable {T : L.Theory} :
    T.IsSatisfiable ↔ T.IsFinitelySatisfiable :=
  ⟨Theory.IsSatisfiable.isFinitelySatisfiable, fun h => by
    classical
      set M : Finset T → Type max u v := fun T0 : Finset T =>
        (h (T0.map (Function.Embedding.subtype fun x => x ∈ T)) T0.map_subtype_subset).some.Carrier
      let M' := Filter.Product (Ultrafilter.of (Filter.atTop : Filter (Finset T))) M
      have h' : M' ⊨ T := by
        refine' ⟨fun φ hφ => _⟩
        rw [Ultraproduct.sentence_realize]
        refine'
          Filter.Eventually.filter_mono (Ultrafilter.of_le _)
            (Filter.eventually_atTop.2
              ⟨{⟨φ, hφ⟩}, fun s h' =>
                Theory.realize_sentence_of_mem (s.map (Function.Embedding.subtype fun x => x ∈ T))
                  _⟩)
        simp only [Finset.coe_map, Function.Embedding.coe_subtype, Set.mem_image, Finset.mem_coe,
          Subtype.exists, Subtype.coe_mk, exists_and_right, exists_eq_right]
        exact ⟨hφ, h' (Finset.mem_singleton_self _)⟩
      exact ⟨ModelType.of T M'⟩⟩
#align first_order.language.Theory.is_satisfiable_iff_is_finitely_satisfiable FirstOrder.Language.Theory.isSatisfiable_iff_isFinitelySatisfiable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantc2da44e14745481a2582c8c77fca0a30e61c87199d303a0d43335da4f9a62ed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantc2da44e14745481a2582c8c77fca0a30e61c87199d303a0d43335da4f9a62ed8.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c67c6fc11af57b4996931de4cddb6f77970b4901` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
