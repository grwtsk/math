# exists_not_mem_null_laverage_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9699ea9a856790438cc83928cc85a500e9bdbb55",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 682,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/573342ff1b7acc829aaa28c0f8cbcf9fbaad9c7c681ace910009b41d6b6d1021.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3eba8c8b-083a-56a5-e074-c821560a8411",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e8140e9-424b-566a-f9e7-52277ec3ff78",
  "kind": "theorem",
  "lexical_name": "exists_not_mem_null_laverage_le",
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
  "slug": "exists-not-mem-null-laverage-le--f28eac3e0c2f8b9b541f0cc9",
  "source": {
    "blob": "9699ea9a856790438cc83928cc85a500e9bdbb55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 694,
    "line": 682,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant573342ff1b7acc829aaa28c0f8cbcf9fbaad9c7c681ace910009b41d6b6d1021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f28eac3e0c2f8b9b541f0cc96b39baa94a8c0eae7218d1a5886e56fa3753fadd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Average/Variant573342ff1b7acc829aaa28c0f8cbcf9fbaad9c7c681ace910009b41d6b6d1021.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e8140e9-424b-566a-f9e7-52277ec3ff78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 682–694.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_not_mem_null_laverage_le (hμ : μ ≠ 0) (hint : ∫⁻ a : α, f a ∂μ ≠ ∞) (hN : μ N = 0) :
    ∃ x, x ∉ N ∧ ⨍⁻ a, f a ∂μ ≤ f x := by
  have := measure_laverage_le_pos hμ hint
  rw [←measure_diff_null hN] at this
  obtain ⟨x, hx, hxN⟩ := nonempty_of_measure_ne_zero this.ne'
  exact ⟨x, hxN, hx⟩
#align measure_theory.exists_not_mem_null_laverage_le MeasureTheory.exists_not_mem_null_laverage_le

section FiniteMeasure
variable [IsFiniteMeasure μ]

/-- **First moment method**. A measurable function is smaller than its mean on a set of ositive
measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Average/Variant573342ff1b7acc829aaa28c0f8cbcf9fbaad9c7c681ace910009b41d6b6d1021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant573342ff1b7acc829aaa28c0f8cbcf9fbaad9c7c681ace910009b41d6b6d1021.lean#L682).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9699ea9a856790438cc83928cc85a500e9bdbb55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
