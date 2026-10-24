# frange_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb22c7bb0aa43b606848cc0702206a326da41479",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 902,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d453eb4cb7ccde0c481ea1993edd80e0fc0d50b5ae5fb5003a8e162aa976ed3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5e2d21f-1276-4a75-7565-837f915ee73a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5bb7a4bf-3c57-89b6-cf97-1ada1d4410ea",
  "kind": "theorem",
  "lexical_name": "frange_single",
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
  "slug": "frange-single--3dbc2b3fdac76e54cf4c73e0",
  "source": {
    "blob": "cb22c7bb0aa43b606848cc0702206a326da41479",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 923,
    "line": 902,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3d453eb4cb7ccde0c481ea1993edd80e0fc0d50b5ae5fb5003a8e162aa976ed3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dbc2b3fdac76e54cf4c73e0d62ed26c809c1d0da5ca544fd8421de4e3f07f20",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant3d453eb4cb7ccde0c481ea1993edd80e0fc0d50b5ae5fb5003a8e162aa976ed3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bb7a4bf-3c57-89b6-cf97-1ada1d4410ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 902–923.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frange_single {x : α} {y : M} : frange (single x y) ⊆ {y} := fun r hr =>
  let ⟨t, ht1, ht2⟩ := mem_frange.1 hr
  ht2 ▸ by
    classical
      rw [single_apply] at ht2 ⊢
      split_ifs at ht2 ⊢
      · exact Finset.mem_singleton_self _
      · exact (t ht2.symm).elim

end Frange

/-! ### Declarations about `Finsupp.subtypeDomain` -/


section SubtypeDomain

section Zero

variable [Zero M] {p : α → Prop}

/--
`subtypeDomain p f` is the restriction of the finitely supported function `f` to subtype `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant3d453eb4cb7ccde0c481ea1993edd80e0fc0d50b5ae5fb5003a8e162aa976ed3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3d453eb4cb7ccde0c481ea1993edd80e0fc0d50b5ae5fb5003a8e162aa976ed3.lean#L902).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb22c7bb0aa43b606848cc0702206a326da41479` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
