# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac93815e9be69525bf5f7afa808cd69a854ed31c70ac94f71e8900ce1d060263",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--eb5f6a1d4c7e4179e2b5e9c5",
  "source": {
    "blob": "b8fac633cd11f36d4fd356580bb1f8fd32f4cfd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 17,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPsiFrontierContrapositiveAudit/Variant84fdade024a6ac324c7e4b5abb3d617ea58f319ee4e9a0052fbed5a53545b46d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb5f6a1d4c7e4179e2b5e9c5700d11d09754e774837115e1e6058e58d186ae0b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPsiFrontierContrapositiveAudit/Variant84fdade024a6ac324c7e4b5abb3d617ea58f319ee4e9a0052fbed5a53545b46d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac93815e9be69525bf5f7afa808cd69a854ed31c70ac94f71e8900ce1d060263`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (hnot : ¬ _root_.RiemannHypothesis) (K R : ℝ) (hR : 1 ≤ R) :
    ∃ A : ℝ, R ≤ A ∧ K < actualPsiFloorPairing A := by
  by_contra h
  have hup : ∀ A : ℝ, R ≤ A → actualPsiFloorPairing A ≤ K := by
    intro A hRA
    by_contra hA
    exact h ⟨A, hRA, lt_of_not_ge hA⟩
  exact hnot (riemann_hypothesis_of_uniform_lower_bound
    (original_estimate_of_actual_psi_floor_upper hR hup))
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPsiFrontierContrapositiveAudit/Variant84fdade024a6ac324c7e4b5abb3d617ea58f319ee4e9a0052fbed5a53545b46d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPsiFrontierContrapositiveAudit/Variant84fdade024a6ac324c7e4b5abb3d617ea58f319ee4e9a0052fbed5a53545b46d.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8fac633cd11f36d4fd356580bb1f8fd32f4cfd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
