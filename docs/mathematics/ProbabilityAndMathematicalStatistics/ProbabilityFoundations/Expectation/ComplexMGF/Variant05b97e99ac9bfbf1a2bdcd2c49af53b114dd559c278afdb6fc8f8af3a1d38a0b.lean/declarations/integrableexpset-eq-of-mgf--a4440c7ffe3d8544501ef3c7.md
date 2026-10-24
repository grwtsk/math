# integrableExpSet_eq_of_mgf'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed1ef8c34fa997efe9f80a87bf48c7ca1456c05b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05b97e99ac9bfbf1a2bdcd2c49af53b114dd559c278afdb6fc8f8af3a1d38a0b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9eed157d-7f87-0df0-204f-db3d0ecc626f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:efa7e1f4-8423-f524-2598-1c90d8a982ee",
  "kind": "lemma",
  "lexical_name": "integrableExpSet_eq_of_mgf'",
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
  "slug": "integrableexpset-eq-of-mgf--a4440c7ffe3d8544501ef3c7",
  "source": {
    "blob": "ed1ef8c34fa997efe9f80a87bf48c7ca1456c05b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 241,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant05b97e99ac9bfbf1a2bdcd2c49af53b114dd559c278afdb6fc8f8af3a1d38a0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4440c7ffe3d8544501ef3c71270d002b79d58368acf88775ac5d7b4a920518f",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant05b97e99ac9bfbf1a2bdcd2c49af53b114dd559c278afdb6fc8f8af3a1d38a0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efa7e1f4-8423-f524-2598-1c90d8a982ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrableExpSet_eq_of_mgf' (hXY : mgf X μ = mgf Y μ') (hμμ' : μ = 0 ↔ μ' = 0) :
    integrableExpSet X μ = integrableExpSet Y μ' := by
  ext t
  simp only [integrableExpSet, Set.mem_ofPred_eq]
  by_cases hμ : μ = 0
  · simp [hμ, hμμ'.mp hμ]
  have : NeZero μ := ⟨hμ⟩
  have : NeZero μ' := ⟨(not_iff_not.mpr hμμ').mp hμ⟩
  rw [← mgf_pos_iff, ← mgf_pos_iff, hXY]

/-- If two random variables have the same moment-generating function then they have
the same `integrableExpSet`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant05b97e99ac9bfbf1a2bdcd2c49af53b114dd559c278afdb6fc8f8af3a1d38a0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant05b97e99ac9bfbf1a2bdcd2c49af53b114dd559c278afdb6fc8f8af3a1d38a0b.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed1ef8c34fa997efe9f80a87bf48c7ca1456c05b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
