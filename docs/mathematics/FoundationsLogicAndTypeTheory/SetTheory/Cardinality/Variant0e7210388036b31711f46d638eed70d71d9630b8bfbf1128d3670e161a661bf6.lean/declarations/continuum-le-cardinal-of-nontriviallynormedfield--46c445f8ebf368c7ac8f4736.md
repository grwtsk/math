# continuum_le_cardinal_of_nontriviallyNormedField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c6e80fdc723b8f0fca0da93400b67a0cc69d0349",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e7210388036b31711f46d638eed70d71d9630b8bfbf1128d3670e161a661bf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af1b8ab1-ee5e-e8d7-5b76-363271abe3fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b871822b-e93b-4b6f-1911-8d34d9900347",
  "kind": "theorem",
  "lexical_name": "continuum_le_cardinal_of_nontriviallyNormedField",
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
  "slug": "continuum-le-cardinal-of-nontriviallynormedfield--46c445f8ebf368c7ac8f4736",
  "source": {
    "blob": "c6e80fdc723b8f0fca0da93400b67a0cc69d0349",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant0e7210388036b31711f46d638eed70d71d9630b8bfbf1128d3670e161a661bf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46c445f8ebf368c7ac8f4736b5939fa5da234dc8004962807527caa88c69138d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant0e7210388036b31711f46d638eed70d71d9630b8bfbf1128d3670e161a661bf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b871822b-e93b-4b6f-1911-8d34d9900347`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuum_le_cardinal_of_nontriviallyNormedField
    (𝕜 : Type*) [NontriviallyNormedField 𝕜] [CompleteSpace 𝕜] : 𝔠 ≤ #𝕜 := by
  suffices ∃ f : (ℕ → Bool) → 𝕜, range f ⊆ univ ∧ Continuous f ∧ Injective f by
    rcases this with ⟨f, -, -, f_inj⟩
    simpa using lift_mk_le_lift_mk_of_injective f_inj
  apply Perfect.exists_nat_bool_injection _ univ_nonempty
  refine ⟨isClosed_univ, preperfect_iff_nhds.2 (fun x _ U hU ↦ ?_)⟩
  rcases NormedField.exists_norm_lt_one 𝕜 with ⟨c, c_pos, hc⟩
  have A : Tendsto (fun n ↦ x + c^n) atTop (𝓝 (x + 0)) :=
    tendsto_const_nhds.add (tendsto_pow_atTop_nhds_0_of_norm_lt_1 hc)
  rw [add_zero] at A
  have B : ∀ᶠ n in atTop, x + c^n ∈ U := tendsto_def.1 A U hU
  rcases B.exists with ⟨n, hn⟩
  refine ⟨x + c^n, by simpa using hn, ?_⟩
  simp only [ne_eq, add_right_eq_self]
  apply pow_ne_zero
  simpa using c_pos

/-- A nontrivial module over a complete nontrivially normed field has cardinality at least
continuum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant0e7210388036b31711f46d638eed70d71d9630b8bfbf1128d3670e161a661bf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant0e7210388036b31711f46d638eed70d71d9630b8bfbf1128d3670e161a661bf6.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6e80fdc723b8f0fca0da93400b67a0cc69d0349` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
