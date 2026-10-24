# differentiable_set_subset_D

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1991cad6d5de38ffa61622884de5bbed9981ac1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c286a2860c46e457e14f75998ec7fbae95dec694346bb98a18f7506382d59ac3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f30952b-1139-ed96-40fe-7fa824ffdd7c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86a50a5e-b62e-9fda-baf1-4e0ade2b91b7",
  "kind": "theorem",
  "lexical_name": "differentiable_set_subset_D",
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
  "slug": "differentiable-set-subset-d--7ced657aeed09dd265363066",
  "source": {
    "blob": "e1991cad6d5de38ffa61622884de5bbed9981ac1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 195,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantc286a2860c46e457e14f75998ec7fbae95dec694346bb98a18f7506382d59ac3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ced657aeed09dd2653630661832a50a05c84e1fbebcb8110c36ddb6ae8dbfad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantc286a2860c46e457e14f75998ec7fbae95dec694346bb98a18f7506382d59ac3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86a50a5e-b62e-9fda-baf1-4e0ade2b91b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiable_set_subset_D :
    { x | DifferentiableAt 𝕜 f x ∧ fderiv 𝕜 f x ∈ K } ⊆ D f K := by
  intro x hx
  rw [D, mem_iInter]
  intro e
  have : (0 : ℝ) < (1 / 2) ^ e := by positivity
  rcases mem_A_of_differentiable this hx.1 with ⟨R, R_pos, hR⟩
  obtain ⟨n, hn⟩ : ∃ n : ℕ, (1 / 2) ^ n < R :=
    exists_pow_lt_of_lt_one R_pos (by norm_num : (1 : ℝ) / 2 < 1)
  simp only [mem_iUnion, mem_iInter, B, mem_inter_iff]
  refine ⟨n, fun p hp q hq => ⟨fderiv 𝕜 f x, hx.2, ⟨?_, ?_⟩⟩⟩ <;>
    · refine hR _ ⟨pow_pos (by norm_num) _, lt_of_le_of_lt ?_ hn⟩
      exact pow_le_pow_of_le_one (by norm_num) (by norm_num) (by assumption)

/-- Harder inclusion: at a point in `D f K`, the function `f` has a derivative, in `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantc286a2860c46e457e14f75998ec7fbae95dec694346bb98a18f7506382d59ac3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantc286a2860c46e457e14f75998ec7fbae95dec694346bb98a18f7506382d59ac3.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1991cad6d5de38ffa61622884de5bbed9981ac1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
