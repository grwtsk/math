# zero_coordinate_no_independent_linear_mix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb47c7ca-06e2-2f38-ca4f-d2bb2812333e",
  "kind": "theorem",
  "lexical_name": "zero_coordinate_no_independent_linear_mix",
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
  "slug": "zero-coordinate-no-independent-linear-mix--d00f6a7a6c25ad389c7fe8de",
  "source": {
    "blob": "64628d3e27638a1eec8c1abb350e8ed8e05938dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 75,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/FiniteMixingObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d00f6a7a6c25ad389c7fe8de1b94e667a8064bd4bf37a68ba8d9e53469fcc2a4",
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

Occurrence: `result:eb47c7ca-06e2-2f38-ca4f-d2bb2812333e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_coordinate_no_independent_linear_mix (input : ι → E) (target : ι → F)
    (independent : LinearIndependent K target) (contact : ι) (atContact : input contact = 0)
    (mix : (ι → K) →ₗ[K] (ι → K)) (map : E →ₗ[K] F) :
    ¬ ∀ i, map (Fintype.linearCombination K input (mix (Pi.single i (1 : K)))) =
      target i := by
  intro realization
  have inputIndependent := independent_linear_mix_requires_independent_input
    input target independent mix map realization
  exact (LinearIndependent.ne_zero contact inputIndependent) atContact

end

end GRWTSK.LinearAlgebra.LinearMap.FiniteMixingObstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/FiniteMixingObstruction__SourceOccurrence962c388bb394d70603721d67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearMap/FiniteMixingObstruction.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64628d3e27638a1eec8c1abb350e8ed8e05938dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
