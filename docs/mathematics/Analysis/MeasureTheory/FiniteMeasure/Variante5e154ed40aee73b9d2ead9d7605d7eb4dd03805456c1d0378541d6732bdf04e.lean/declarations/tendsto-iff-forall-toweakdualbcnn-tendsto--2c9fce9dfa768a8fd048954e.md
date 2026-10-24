# tendsto_iff_forall_toWeakDualBCNN_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b8d3b802caeee3f409048a9044cc77e96b73f4f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 534,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5e154ed40aee73b9d2ead9d7605d7eb4dd03805456c1d0378541d6732bdf04e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8b932a9-7ede-7aa2-b8cb-888cabdf4294",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:616819e9-8319-c71c-7934-56545a13ad08",
  "kind": "theorem",
  "lexical_name": "tendsto_iff_forall_toWeakDualBCNN_tendsto",
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
  "slug": "tendsto-iff-forall-toweakdualbcnn-tendsto--2c9fce9dfa768a8fd048954e",
  "source": {
    "blob": "8b8d3b802caeee3f409048a9044cc77e96b73f4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 534,
    "path": "GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variante5e154ed40aee73b9d2ead9d7605d7eb4dd03805456c1d0378541d6732bdf04e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c9fce9dfa768a8fd048954e1ac999b3243d0b2e264551bac446c012bdb2c00c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/FiniteMeasure/Variante5e154ed40aee73b9d2ead9d7605d7eb4dd03805456c1d0378541d6732bdf04e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:616819e9-8319-c71c-7934-56545a13ad08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 534–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_iff_forall_toWeakDualBCNN_tendsto {γ : Type*} {F : Filter γ}
    {μs : γ → FiniteMeasure Ω} {μ : FiniteMeasure Ω} :
    Tendsto μs F (𝓝 μ) ↔
      ∀ f : Ω →ᵇ ℝ≥0, Tendsto (fun i ↦ (μs i).toWeakDualBCNN f) F (𝓝 (μ.toWeakDualBCNN f)) := by
  rw [tendsto_iff_weakDual_tendsto, tendsto_iff_forall_eval_tendsto_topDualPairing]; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/FiniteMeasure/Variante5e154ed40aee73b9d2ead9d7605d7eb4dd03805456c1d0378541d6732bdf04e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variante5e154ed40aee73b9d2ead9d7605d7eb4dd03805456c1d0378541d6732bdf04e.lean#L534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b8d3b802caeee3f409048a9044cc77e96b73f4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
