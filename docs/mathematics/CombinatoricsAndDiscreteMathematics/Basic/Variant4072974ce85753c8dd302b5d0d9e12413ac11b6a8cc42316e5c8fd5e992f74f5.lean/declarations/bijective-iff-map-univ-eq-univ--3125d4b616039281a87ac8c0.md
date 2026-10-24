# bijective_iff_map_univ_eq_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d1b1ef4f6e21d76c1856300093e47b1f16caa9e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b0e687a-3cd2-ef22-a373-289c904afac3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9afde884-e521-1926-ee79-6a5591e56b94",
  "kind": "theorem",
  "lexical_name": "bijective_iff_map_univ_eq_univ",
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
  "slug": "bijective-iff-map-univ-eq-univ--3125d4b616039281a87ac8c0",
  "source": {
    "blob": "3d1b1ef4f6e21d76c1856300093e47b1f16caa9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 223,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3125d4b616039281a87ac8c006f220b833629b507d1b1089691acfaa338e88a7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9afde884-e521-1926-ee79-6a5591e56b94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bijective_iff_map_univ_eq_univ (f : α → β) :
    f.Bijective ↔ map f (Finset.univ : Finset α).val = univ.val :=
  ⟨fun bij ↦ congr_arg (·.val) (map_univ_equiv <| Equiv.ofBijective f bij),
    fun eq ↦ ⟨
      fun a₁ a₂ ↦ inj_on_of_nodup_map (eq.symm ▸ univ.nodup) _ (mem_univ a₁) _ (mem_univ a₂),
      fun b ↦ have ⟨a, _, h⟩ := mem_map.mp (eq.symm ▸ mem_univ_val b); ⟨a, h⟩⟩⟩

end Multiset

/-- Auxiliary definition to show `exists_seq_of_forall_finset_exists`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant4072974ce85753c8dd302b5d0d9e12413ac11b6a8cc42316e5c8fd5e992f74f5.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d1b1ef4f6e21d76c1856300093e47b1f16caa9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
