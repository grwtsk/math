# isSatisfiable_iff_isFinitelySatisfiable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94cef110-2baf-9d19-86ce-244bdc39dcce",
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
  "slug": "issatisfiable-iff-isfinitelysatisfiable--b11a37eeecbb24b55b9228bc",
  "source": {
    "blob": "fcabd4a7605b9ba0274049c820f67b1c0434e3f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 115,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant54b6ad564e90f40963ea1478aa5d92067770c9cf94fb228605ada156b55cccb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b11a37eeecbb24b55b9228bcfdc5d6b795cc6b00b615214df55d17a5a851958b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant54b6ad564e90f40963ea1478aa5d92067770c9cf94fb228605ada156b55cccb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94cef110-2baf-9d19-86ce-244bdc39dcce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–136.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant54b6ad564e90f40963ea1478aa5d92067770c9cf94fb228605ada156b55cccb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant54b6ad564e90f40963ea1478aa5d92067770c9cf94fb228605ada156b55cccb2.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcabd4a7605b9ba0274049c820f67b1c0434e3f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
