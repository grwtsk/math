# zeroLocus_empty_iff_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "843b87a64ffc2b08163be2a5f6e284db9181ba45",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83f04bc0-e028-3be1-a63c-b8e69136570d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee4da24f-d08d-b141-4519-61e139d502bf",
  "kind": "theorem",
  "lexical_name": "zeroLocus_empty_iff_top",
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
  "slug": "zerolocus-empty-iff-top--0247b64b7a8bf0e32909581e",
  "source": {
    "blob": "843b87a64ffc2b08163be2a5f6e284db9181ba45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 170,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0247b64b7a8bf0e32909581e0a334332eb9a1817d0212b0771cc26d1bc1229fc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee4da24f-d08d-b141-4519-61e139d502bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeroLocus_empty_iff_top (J : FunctionIdeal X k) :
    zeroLocus J = ∅ ↔ J.IsTop := by
  constructor
  · intro hEmpty f
    have hf : f ∈ vanishingIdeal (zeroLocus J) := by
      intro x hx
      have : x ∈ (∅ : Set X) := by
        simpa only [hEmpty] using hx
      exact this.elim
    rw [J.finite_nullstellensatz] at hf
    exact hf
  · intro hTop
    apply Set.not_nonempty_iff_eq_empty.mp
    rintro ⟨x, hx⟩
    have hOne : (1 : X → k) ∈ J := hTop 1
    have : (1 : k) = 0 := hx 1 hOne
    exact one_ne_zero this

/-- Satisfiability is nonemptiness of the represented model locus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `843b87a64ffc2b08163be2a5f6e284db9181ba45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
