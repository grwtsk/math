# compatible_readout_is_anchor_independent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2ef8453-8e97-f2de-fb56-8d576fcd9c5b",
  "kind": "theorem",
  "lexical_name": "compatible_readout_is_anchor_independent",
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
  "slug": "compatible-readout-is-anchor-independent--c90924c9a7301b81d6a92e64",
  "source": {
    "blob": "2c58d9a829fbdd989d190e5dfe0343fe51bf3b3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 82,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c90924c9a7301b81d6a92e64a1d0b23fa2a8408cec187e931eb5ac565a7e0c93",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2ef8453-8e97-f2de-fb56-8d576fcd9c5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compatible_readout_is_anchor_independent
    (T : Fin 7 → Fin 7 → E ≃ₗ[ℚ] E) (v : Fin 7 → E) (hv : Coherent T v)
    (readout : Fin 7 → E →ₗ[ℚ] ℚ)
    (hread : ∀ i j x, readout j (T i j x) = readout i x) (i j : Fin 7) :
    readout i (v i) = readout j (v j) := by
  rw [← hv i j]
  exact (hread i j (v i)).symm

/-- The negation transitions in this module, with the following exact parameterization.

def negationTransitions : Fin 7 → Fin 7 → ℚ ≃ₗ[ℚ] ℚ := fun _ _ ↦ LinearEquiv.neg ℚ
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c58d9a829fbdd989d190e5dfe0343fe51bf3b3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
