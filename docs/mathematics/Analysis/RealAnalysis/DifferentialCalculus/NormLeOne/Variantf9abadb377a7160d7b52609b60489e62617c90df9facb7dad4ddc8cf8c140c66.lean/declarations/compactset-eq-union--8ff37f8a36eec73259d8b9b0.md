# compactSet_eq_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7bb6436-3d21-5a10-78bd-94a61bdacb89",
  "kind": "theorem",
  "lexical_name": "compactSet_eq_union",
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
  "slug": "compactset-eq-union--8ff37f8a36eec73259d8b9b0",
  "source": {
    "blob": "0aff246708fc36f4d017192c53af8418ba617fc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 800,
    "line": 791,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantf9abadb377a7160d7b52609b60489e62617c90df9facb7dad4ddc8cf8c140c66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ff37f8a36eec73259d8b9b0f2876cf20aebdcecf79f2899294924cf19b86a63",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantf9abadb377a7160d7b52609b60489e62617c90df9facb7dad4ddc8cf8c140c66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7bb6436-3d21-5a10-78bd-94a61bdacb89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 791–800.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compactSet_eq_union :
    compactSet K = expMapBasis '' closure (paramSet K) ∪ {0} := by
  classical
  ext x
  by_cases hx₀ : x = 0
  · simpa [hx₀] using zero_mem_compactSet K
  · refine ⟨fun hx ↦ Set.mem_union_left _ (compactSet_eq_union_aux₁ hx₀ hx), fun hx ↦ ?_⟩
    simp only [Set.union_singleton, Set.mem_insert_iff, hx₀, false_or] at hx
    exact compactSet_eq_union_aux₂ hx₀ hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantf9abadb377a7160d7b52609b60489e62617c90df9facb7dad4ddc8cf8c140c66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantf9abadb377a7160d7b52609b60489e62617c90df9facb7dad4ddc8cf8c140c66.lean#L791).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0aff246708fc36f4d017192c53af8418ba617fc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
