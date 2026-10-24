# card_le_sdiff_of_interleaved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6735d1f9cdcb1f6a9f78925a565d9ab7b48781b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 311,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b99f499-5500-987f-f454-cef9e7fa3a56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5bf5a9c9-1d8f-8295-dac3-bd53fbc90665",
  "kind": "theorem",
  "lexical_name": "card_le_sdiff_of_interleaved",
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
  "slug": "card-le-sdiff-of-interleaved--4663c75a221e49bad07b324c",
  "source": {
    "blob": "a6735d1f9cdcb1f6a9f78925a565d9ab7b48781b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 311,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4663c75a221e49bad07b324cdc8d08fb3cfe9b909ae5b080080696dda763b586",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bf5a9c9-1d8f-8295-dac3-bd53fbc90665`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_le_sdiff_of_interleaved {s t : Finset α}
    (h :
      ∀ᵉ (x ∈ s) (y ∈ s),
        x < y → (∀ z ∈ s, z ∉ Set.Ioo x y) → ∃ z ∈ t, x < z ∧ z < y) :
    s.card ≤ (t \ s).card + 1 :=
  card_le_of_interleaved fun x hx y hy hxy hs =>
    let ⟨z, hzt, hxz, hzy⟩ := h x hx y hy hxy hs
    ⟨z, mem_sdiff.2 ⟨hzt, fun hzs => hs z hzs ⟨hxz, hzy⟩⟩, hxz, hzy⟩

@[deprecated (since := "2026-06-03")]
alias card_le_diff_of_interleaved := card_le_sdiff_of_interleaved

/-- Induction principle for `Finset`s in a linearly ordered type: a predicate is true on all
`s : Finset α` provided that:

* it is true on the empty `Finset`,
* for every `s : Finset α` and an element `a` strictly greater than all elements of `s`, `p s`
  implies `p (insert a s)`. -/
@[to_dual (attr := elab_as_elim)
/-- Induction principle for `Finset`s in a linearly ordered type: a predicate is true on all
`s : Finset α` provided that:

* it is true on the empty `Finset`,
* for every `s : Finset α` and an element `a` strictly less than all elements of `s`, `p s`
  implies `p (insert a s)`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Max/Variantf9381a30f98377e15faa35c02d19d3fa0d6576c1709460ed699f4616e4d2539e.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6735d1f9cdcb1f6a9f78925a565d9ab7b48781b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
