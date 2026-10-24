# infix_iff_getElem?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a9b474d-cd15-7f7c-3c6e-6e616a1d9275",
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
  "slug": "infix-iff-getelem--bdf32e75d1cf3ca5c7802082",
  "source": {
    "blob": "54d745edc7b02adcab20b9ba557fc019739d78d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 93,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdf32e75d1cf3ca5c7802082c5c571cdbc9d44a7f09b88ea0c2a273b1e7be1ee",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a9b474d-cd15-7f7c-3c6e-6e616a1d9275`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–125.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54d745edc7b02adcab20b9ba557fc019739d78d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
