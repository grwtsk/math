# isDeterministic_iff_isZeroOneMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d0cdd48719aa77cdbc5fd8fe44bd02d4d4b3f42",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64d6242d0ffe5f6a98e4b1b67e1863aa9fcc901917d66243ee88121a2e0b78ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:742fdd91-08d0-3b91-1353-8faa60cc2e2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a43b3c89-bd55-871d-9315-e96a2ff3a587",
  "kind": "lemma",
  "lexical_name": "isDeterministic_iff_isZeroOneMeasure",
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
  "slug": "isdeterministic-iff-iszeroonemeasure--70c8db26d5b4c69886e1e16b",
  "source": {
    "blob": "7d0cdd48719aa77cdbc5fd8fe44bd02d4d4b3f42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 83,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Deterministic/Variant64d6242d0ffe5f6a98e4b1b67e1863aa9fcc901917d66243ee88121a2e0b78ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70c8db26d5b4c69886e1e16b7c056ef19d75216449092401297c80236bed1b1d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Deterministic/Variant64d6242d0ffe5f6a98e4b1b67e1863aa9fcc901917d66243ee88121a2e0b78ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a43b3c89-bd55-871d-9315-e96a2ff3a587`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isDeterministic_iff_isZeroOneMeasure (κ : Kernel α β) [IsFiniteKernel κ] :
    IsDeterministic κ ↔ ∀ a, IsZeroOneMeasure (κ a) := by
  constructor
  · intro h a
    refine ⟨fun s hs ↦ ?_⟩
    have := DFunLike.congr_fun κ.parallelComp_self_comp_copy a |> DFunLike.congr_fun
      <| (s ×ˢ s)
    rw [parallelComp_comp_copy, prod_apply_prod, copy_comp_apply_prod, inter_self] at this
    · by_cases hκ : κ a s = 0
      · simp [hκ]
      · exact Or.inr <| (ENNReal.mul_eq_left hκ (by simp)).mp this
    all_goals exact hs
  · intro _
    refine ⟨?_⟩
    ext : 1
    rw [parallelComp_comp_copy, prod_apply]
    refine Measure.prod_eq fun s t hs ht ↦ ?_
    rw [copy_comp_apply_prod _ _ hs ht]
    exact measure_inter_eq_prod hs ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Deterministic/Variant64d6242d0ffe5f6a98e4b1b67e1863aa9fcc901917d66243ee88121a2e0b78ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Deterministic/Variant64d6242d0ffe5f6a98e4b1b67e1863aa9fcc901917d66243ee88121a2e0b78ff.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d0cdd48719aa77cdbc5fd8fe44bd02d4d4b3f42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
