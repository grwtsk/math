# infix_iff_getElem?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12143e27334cd4a830fa22f4e8cabba5276fcec2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49c11642-d766-af95-bc0a-2d242defff7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d534d87a-eced-a915-a35d-49ca1403293f",
  "kind": "theorem",
  "lexical_name": "infix_iff_getElem?",
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
  "slug": "infix-iff-getelem--7f13ee9ebc156490608be16f",
  "source": {
    "blob": "12143e27334cd4a830fa22f4e8cabba5276fcec2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f13ee9ebc156490608be16f44021a6b5c5fc5ba111d03525be605f367f81001",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d534d87a-eced-a915-a35d-49ca1403293f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem infix_iff_getElem? {l₁ l₂ : List α} : l₁ <:+: l₂ ↔
    ∃ k, l₁.length + k ≤ l₂.length ∧ ∀ i (h : i < l₁.length), l₂[i + k]? = some l₁[i] := by
  constructor
  · intro h
    obtain ⟨t, p, s⟩ := infix_iff_suffix_prefix.mp h
    refine ⟨t.length - l₁.length, by have := p.length_le; have := s.length_le; omega, ?_⟩
    rw [suffix_iff_getElem?] at p
    obtain ⟨p', p⟩ := p
    rw [prefix_iff_getElem?] at s
    intro i h
    rw [s _ (by omega)]
    specialize p i (by omega)
    rw [Nat.add_sub_assoc (by omega)] at p
    rw [← getElem?_eq_getElem, p]
  · rintro ⟨k, le, w⟩
    refine ⟨l₂.take k, l₂.drop (k + l₁.length), ?_⟩
    ext1 i
    rw [getElem?_append]
    split
    · rw [getElem?_append]
      split
      · rw [getElem?_take]; simp_all; omega
      · simp_all
        have p : i = (i - k) + k := by omega
        rw [p, w _ (by omega), getElem?_eq_getElem]
        · congr 2
          omega
        · omega
    · rw [getElem?_drop]
      congr
      simp_all
      omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12143e27334cd4a830fa22f4e8cabba5276fcec2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
