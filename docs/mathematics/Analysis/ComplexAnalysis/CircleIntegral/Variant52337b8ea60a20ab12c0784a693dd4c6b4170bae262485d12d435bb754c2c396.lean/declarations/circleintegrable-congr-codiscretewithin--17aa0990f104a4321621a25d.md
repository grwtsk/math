# CircleIntegrable.congr_codiscreteWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f0079ac21378deedf7a6be440ac892dcf1aaddd9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 206,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52337b8ea60a20ab12c0784a693dd4c6b4170bae262485d12d435bb754c2c396.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2e6ce83-99f1-bde8-20e0-1ced5d90671f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:152dc248-94ed-568a-e05c-a077a2e26bf7",
  "kind": "theorem",
  "lexical_name": "CircleIntegrable.congr_codiscreteWithin",
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
  "slug": "circleintegrable-congr-codiscretewithin--17aa0990f104a4321621a25d",
  "source": {
    "blob": "f0079ac21378deedf7a6be440ac892dcf1aaddd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 206,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CircleIntegral/Variant52337b8ea60a20ab12c0784a693dd4c6b4170bae262485d12d435bb754c2c396.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17aa0990f104a4321621a25d38e4f5b2655c4e1ae672d578978344d30b15940d",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CircleIntegral/Variant52337b8ea60a20ab12c0784a693dd4c6b4170bae262485d12d435bb754c2c396.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:152dc248-94ed-568a-e05c-a077a2e26bf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CircleIntegrable.congr_codiscreteWithin {c : ℂ} {R : ℝ} {f₁ f₂ : ℂ → ℂ}
    (hf : f₁ =ᶠ[codiscreteWithin (Metric.sphere c |R|)] f₂) (hf₁ : CircleIntegrable f₁ c R) :
    CircleIntegrable f₂ c R := by
  by_cases hR : R = 0
  · simp [hR]
  apply (intervalIntegrable_congr_codiscreteWithin _).1 hf₁
  rw [eventuallyEq_iff_exists_mem]
  exact ⟨(circleMap c R)⁻¹' {z | f₁ z = f₂ z},
    codiscreteWithin.mono (by simp only [Set.subset_univ]) (circleMap_preimage_codiscrete hR hf),
    by tauto⟩

/-- Circle integrability is invariant when functions change along discrete sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CircleIntegral/Variant52337b8ea60a20ab12c0784a693dd4c6b4170bae262485d12d435bb754c2c396.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CircleIntegral/Variant52337b8ea60a20ab12c0784a693dd4c6b4170bae262485d12d435bb754c2c396.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0079ac21378deedf7a6be440ac892dcf1aaddd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
