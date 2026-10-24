# right_tail_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09c7901370857dc6f95e1f3e81fa7416ab56c1cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:667c1766-b7b2-ae76-cae8-7ee953f7a54f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "09c7901370857dc6f95e1f3e81fa7416ab56c1cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/Analysis/Asymptotics/SignedEnergyDecomposition.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7edba09f-a3a1-0afc-e04a-b2f90bf90285",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b758bb5d-e8a7-a0b4-bff4-fe239daa558b",
  "kind": "theorem",
  "lexical_name": "right_tail_bound",
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
  "slug": "right-tail-bound--ecfff6c47b859a4c92312d17",
  "source": {
    "blob": "09c7901370857dc6f95e1f3e81fa7416ab56c1cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 87,
    "path": "GRWTSK/Analysis/Asymptotics/SignedEnergyDecomposition.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecfff6c47b859a4c92312d17c43a4348038375da690d965a30ee4665b87ef32f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrence4741b610cd3f0d63b00b71ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b758bb5d-e8a7-a0b4-bff4-fe239daa558b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem right_tail_bound {F : ℝ → ℂ} {A m H : ℝ}
    (hm : 1 < m) (hH : 0 < H)
    (hF : AEStronglyMeasurable F (volume.restrict (Ioi H)))
    (majorant : ∀ t ∈ Ioi H, ‖F t‖ ≤ A*t^(-m)) :
    IntegrableOn F (Ioi H) ∧
      ‖∫ t : ℝ in Ioi H, F t‖ ≤ A*H^(1-m)/(m-1) := by
  obtain ⟨hi,heq⟩ := right_tail_majorant (A := A) hm hH
  have hae : ∀ᵐ t ∂volume.restrict (Ioi H), ‖F t‖ ≤ A*t^(-m) := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact majorant t ht
  refine ⟨hi.mono' hF hae,?_⟩
  rw [← heq]
  exact norm_integral_le_of_norm_le hi hae

/-- Exact height cancellation for the cited external A-scale tail profile.
This scalar identity asserts no adapter from that residual to CCC. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrence4741b610cd3f0d63b00b71ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Asymptotics/SignedEnergyDecomposition.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09c7901370857dc6f95e1f3e81fa7416ab56c1cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
