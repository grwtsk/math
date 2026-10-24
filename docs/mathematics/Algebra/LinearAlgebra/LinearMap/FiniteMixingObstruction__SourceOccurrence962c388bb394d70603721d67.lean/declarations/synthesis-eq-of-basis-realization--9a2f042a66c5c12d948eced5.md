# synthesis_eq_of_basis_realization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e15573d-2ebe-4bb5-17e3-0122e708af27",
  "kind": "theorem",
  "lexical_name": "synthesis_eq_of_basis_realization",
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
  "slug": "synthesis-eq-of-basis-realization--9a2f042a66c5c12d948eced5",
  "source": {
    "blob": "64628d3e27638a1eec8c1abb350e8ed8e05938dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 34,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/FiniteMixingObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a2f042a66c5c12d948eced5b3ffa20ec94655cb05655d61af184d9f71b00e88",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearMap/FiniteMixingObstruction__SourceOccurrence962c388bb394d70603721d67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e15573d-2ebe-4bb5-17e3-0122e708af27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem synthesis_eq_of_basis_realization (input : ι → E) (target : ι → F)
    (mix : (ι → K) →ₗ[K] (ι → K)) (map : E →ₗ[K] F)
    (realization : ∀ i, map (Fintype.linearCombination K input
      (mix (Pi.single i (1 : K)))) = target i) :
    Fintype.linearCombination K target =
      map.comp ((Fintype.linearCombination K input).comp mix) := by
  apply LinearMap.pi_ext
  intro i c
  rw [Fintype.linearCombination_apply_single]
  change c • target i = map (Fintype.linearCombination K input (mix (Pi.single i c)))
  have singleScale : Pi.single i c = c • Pi.single i (1 : K) := by
    simpa only [smul_eq_mul, mul_one] using Pi.single_smul' i c (1 : K)
  rw [singleScale, mix.map_smul, (Fintype.linearCombination K input).map_smul,
    map.map_smul, realization i]

/-- Independent outputs force independent inputs for a finite square coefficient map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/FiniteMixingObstruction__SourceOccurrence962c388bb394d70603721d67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearMap/FiniteMixingObstruction.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64628d3e27638a1eec8c1abb350e8ed8e05938dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
