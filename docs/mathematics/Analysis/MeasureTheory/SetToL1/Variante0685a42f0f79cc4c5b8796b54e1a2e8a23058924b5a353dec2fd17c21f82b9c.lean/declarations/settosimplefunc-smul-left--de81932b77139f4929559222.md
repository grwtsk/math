# setToSimpleFunc_smul_left'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b7c05bdb9d0e7092b58d232427abb73b2122a2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 433,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c51bef02-7b96-c295-872b-045f198289ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6253b5c7-1fe5-c63a-05f6-d4b14d98437c",
  "kind": "theorem",
  "lexical_name": "setToSimpleFunc_smul_left'",
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
  "slug": "settosimplefunc-smul-left--de81932b77139f4929559222",
  "source": {
    "blob": "1b7c05bdb9d0e7092b58d232427abb73b2122a2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 433,
    "path": "GRWTSK/Analysis/MeasureTheory/SetToL1/Variante0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de81932b77139f492955922204e85b9d18d52052eefe4fad2bc6de993bf22611",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SetToL1/Variante0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6253b5c7-1fe5-c63a-05f6-d4b14d98437c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setToSimpleFunc_smul_left' (T T' : Set α → E →L[ℝ] F') (c : ℝ)
    (h_smul : ∀ s, MeasurableSet s → μ s < ∞ → T' s = c • T s) {f : α →ₛ E} (hf : Integrable f μ) :
    setToSimpleFunc T' f = c • setToSimpleFunc T f := by
  simp_rw [setToSimpleFunc_eq_sum_filter]
  suffices ∀ x ∈ filter (fun x : E => x ≠ 0) f.range, T' (f ⁻¹' {x}) = c • T (f ⁻¹' {x}) by
    rw [smul_sum]
    refine' Finset.sum_congr rfl fun x hx => _
    rw [this x hx]
    rfl
  intro x hx
  refine'
    h_smul (f ⁻¹' {x}) (measurableSet_preimage _ _) (measure_preimage_lt_top_of_integrable _ hf _)
  rw [mem_filter] at hx
  exact hx.2
#align measure_theory.simple_func.set_to_simple_func_smul_left' MeasureTheory.SimpleFunc.setToSimpleFunc_smul_left'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SetToL1/Variante0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SetToL1/Variante0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b7c05bdb9d0e7092b58d232427abb73b2122a2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
