# q_lowerBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c78fb56159e97b5b390b7eb1c542f9d5dd82a2a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8cd34c16-5d7e-6457-59e8-3f640d9392a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9601e02c-9d8c-d23d-1dc1-f8006eece6a9",
  "kind": "lemma",
  "lexical_name": "q_lowerBound",
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
  "slug": "q-lowerbound--3ef5a424775135bcdde48125",
  "source": {
    "blob": "c78fb56159e97b5b390b7eb1c542f9d5dd82a2a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 95,
    "path": "GRWTSK/Analysis/Operator/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ef5a424775135bcdde4812543d581e94dcaf6aab6b3b472c3a7510bded5082e",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9601e02c-9d8c-d23d-1dc1-f8006eece6a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma q_lowerBound :
    ∃ C : ℝ, ∀ u, q P u ≥ C * ‖u‖ ^ 2 := by
  rcases P.boundedBelow with ⟨C₀, hV⟩
  refine ⟨C₀, ?_⟩
  intro u
  have hkin := kineticEnergy_nonneg P u
  have hpoint :
      (fun x : ℝ≥0 ↦ P.V x * ‖u x‖ ^ 2) ≥ᵐ[μ₊]
      (fun x ↦ C₀ * ‖u x‖ ^ 2) := by
    filter_upwards [self_mem_ae_restrict] with x
    have : C₀ ≤ P.V x := hV x
    exact mul_le_mul_of_nonneg_right this (pow_two_nonneg _)
  have hpot : potentialEnergy P u ≥ C₀ * ‖u‖ ^ 2 := by
    have := integral_mono hpoint
    simpa [potentialEnergy] using this
  simpa [q, add_comm] using add_le_add hkin hpot

/-! ## 4.  Closed quadratic form -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Operator/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c78fb56159e97b5b390b7eb1c542f9d5dd82a2a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
