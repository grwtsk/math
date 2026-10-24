# memℓp_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95065bf79d4606e53b195edd84b9761a1242ddcc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96cfd7d1-2897-860e-bd24-d04809ccfb3f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:031d9d0f-c60a-1fd8-c054-2a4e9c8d9917",
  "kind": "theorem",
  "lexical_name": "memℓp_of_tendsto",
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
  "slug": "mem-p-of-tendsto--4a469cf25d54e6ddb1e6d57a",
  "source": {
    "blob": "95065bf79d4606e53b195edd84b9761a1242ddcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1160,
    "line": 1148,
    "path": "GRWTSK/Topology/GeneralTopology/LpSpace/Variantf1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a469cf25d54e6ddb1e6d57a59a29760f6347291627af336e6ae25b514fdab51",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LpSpace/Variantf1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:031d9d0f-c60a-1fd8-c054-2a4e9c8d9917`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1148–1160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem memℓp_of_tendsto {F : ι → lp E p} (hF : Bornology.IsBounded (Set.range F)) {f : ∀ a, E a}
    (hf : Tendsto (id fun i => F i : ι → ∀ a, E a) l (𝓝 f)) : Memℓp f p := by
  obtain ⟨C, hCF⟩ : ∃ C, ∀ k, ‖F k‖ ≤ C := hF.exists_norm_le.imp fun _ ↦ Set.forall_mem_range.1
  rcases eq_top_or_lt_top p with (rfl | hp)
  · apply memℓp_infty
    use C
    rintro _ ⟨a, rfl⟩
    exact norm_apply_le_of_tendsto (Eventually.of_forall hCF) hf a
  · apply memℓp_gen'
    exact sum_rpow_le_of_tendsto hp.ne (Eventually.of_forall hCF) hf

/-- If a sequence is Cauchy in the `lp E p` topology and pointwise convergent to an element `f` of
`lp E p`, then it converges to `f` in the `lp E p` topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LpSpace/Variantf1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LpSpace/Variantf1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean#L1148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95065bf79d4606e53b195edd84b9761a1242ddcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
