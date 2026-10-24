# linearCombination_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e5f8222-4c2e-b627-a283-99b7b4171c53",
  "kind": "theorem",
  "lexical_name": "linearCombination_range",
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
  "slug": "linearcombination-range--6ebd97fa214e02db956727ac",
  "source": {
    "blob": "67dba10a16adc1d18cff5cfc7e80a6d2d8366986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 116,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearCombination/Variantdd5603a346ca04ed14e4b00a778db3781079985d452813eab56b74518469e332.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ebd97fa214e02db956727accffa75dddbb4489e210c82c7cb42bb0cfcb0d868",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearCombination/Variantdd5603a346ca04ed14e4b00a778db3781079985d452813eab56b74518469e332.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e5f8222-4c2e-b627-a283-99b7b4171c53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearCombination_range (h : Function.Surjective v) :
    LinearMap.range (linearCombination R v) = ⊤ :=
  range_eq_top.2 <| linearCombination_surjective R h

/-- Any module is a quotient of a free module. This is stated as surjectivity of
`Finsupp.linearCombination R id : (M →₀ R) →ₗ[R] M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearCombination/Variantdd5603a346ca04ed14e4b00a778db3781079985d452813eab56b74518469e332.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearCombination/Variantdd5603a346ca04ed14e4b00a778db3781079985d452813eab56b74518469e332.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67dba10a16adc1d18cff5cfc7e80a6d2d8366986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
