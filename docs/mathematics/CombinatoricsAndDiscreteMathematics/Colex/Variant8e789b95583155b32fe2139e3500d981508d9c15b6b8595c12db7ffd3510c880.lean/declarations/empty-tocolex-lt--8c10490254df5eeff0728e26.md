# empty_toColex_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0573b291af6b22b920fc5406f7f48ddf885cfc8d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 333,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:109f0713-ecd9-32e0-6419-0902019dd6d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3dc2482a-5afe-8fe1-ccbd-fdef65256f63",
  "kind": "theorem",
  "lexical_name": "empty_toColex_lt",
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
  "slug": "empty-tocolex-lt--8c10490254df5eeff0728e26",
  "source": {
    "blob": "0573b291af6b22b920fc5406f7f48ddf885cfc8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 333,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c10490254df5eeff0728e26ca12ec0f970529dd2e9bc526013800b435336469",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dc2482a-5afe-8fe1-ccbd-fdef65256f63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem empty_toColex_lt [LinearOrder α] {A : Finset α} (hA : A.Nonempty) :
    (∅ : Finset α).toColex < A.toColex := by
  rw [Colex.lt_def]
  refine' ⟨max' _ hA, _, by simp, max'_mem _ _⟩
  simp only [false_iff_iff, not_mem_empty]
  intro x hx t
  apply not_le_of_lt hx (le_max' _ _ t)
#align colex.empty_to_colex_lt Colex.empty_toColex_lt

/-- If `A ⊂ B`, then `A` is less than `B` in the colex order. Note the converse does not hold, as
`⊆` is not a linear order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0573b291af6b22b920fc5406f7f48ddf885cfc8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
