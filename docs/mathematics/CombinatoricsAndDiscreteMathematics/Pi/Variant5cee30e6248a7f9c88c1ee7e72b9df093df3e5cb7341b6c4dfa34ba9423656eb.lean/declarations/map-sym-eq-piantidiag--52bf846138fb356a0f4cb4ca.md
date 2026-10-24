# map_sym_eq_piAntidiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf38f637d7a7ee10b75c44668d33a57b9423f5fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b859a23b-fab3-8c2f-2edf-f32904c0a155",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0809ac53-be1d-86d4-ec0f-10e4a758b3ca",
  "kind": "lemma",
  "lexical_name": "map_sym_eq_piAntidiag",
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
  "slug": "map-sym-eq-piantidiag--52bf846138fb356a0f4cb4ca",
  "source": {
    "blob": "cf38f637d7a7ee10b75c44668d33a57b9423f5fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 248,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52bf846138fb356a0f4cb4ca189dc2cfd51bb820b7cc53962f11ff706b54550a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0809ac53-be1d-86d4-ec0f-10e4a758b3ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_sym_eq_piAntidiag [DecidableEq ι] (s : Finset ι) (n : ℕ) :
    (s.sym n).map ⟨fun m a ↦ m.1.count a, Multiset.count_injective.comp Sym.coe_injective⟩ =
      piAntidiag s n := by
  ext f
  simp only [Sym.val_eq_coe, mem_map, mem_sym_iff, Embedding.coeFn_mk, funext_iff, Sym.exists,
    Sym.mem_mk, Sym.coe_mk, exists_and_left, exists_prop, mem_piAntidiag, ne_eq]
  constructor
  · rintro ⟨m, hm, rfl, hf⟩
    simpa [← hf, Multiset.sum_count_eq_card hm]
  · rintro ⟨rfl, hf⟩
    refine ⟨∑ a ∈ s, f a • {a}, ?_, ?_⟩
    · simp +contextual
    · simpa [Multiset.count_sum', Multiset.count_singleton, not_imp_comm, eq_comm (a := 0)] using hf

end Finset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf38f637d7a7ee10b75c44668d33a57b9423f5fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
