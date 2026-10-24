# finite_count_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffd05369-e9df-39a9-5e93-0d43802c8777",
  "kind": "theorem",
  "lexical_name": "finite_count_comparison",
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
  "slug": "finite-count-comparison--0ed287c0a6ca4b7521864c5f",
  "source": {
    "blob": "ba2acf4237b1f2c5cf7146a727d841a42dcdb030",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 106,
    "path": "GRWTSK/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ed287c0a6ca4b7521864c5f2d5d7b482e484501f3df8e63713932715a96de5d",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence601e505310a970b18bd9abb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffd05369-e9df-39a9-5e93-0d43802c8777`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_count_comparison (N : ℕ) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    freeCount N (E - max V 0) ≤ sturmianCount N α V ξ origin E ∧
      sturmianCount N α V ξ origin E ≤ freeCount N (E - min V 0) := by
  constructor
  · apply eigenvalueCount_le_of_quadratic
      (hamiltonian_isHermitian N α V ξ origin) (freeDirichlet_isHermitian N)
    intro v
    have h := (hamiltonian_quadratic_bounds N α V ξ origin v).2
    convert h using 1
    ring
  · apply eigenvalueCount_le_of_quadratic
      (freeDirichlet_isHermitian N) (hamiltonian_isHermitian N α V ξ origin)
    intro v
    have h := (hamiltonian_quadratic_bounds N α V ξ origin v).1
    nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence601e505310a970b18bd9abb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba2acf4237b1f2c5cf7146a727d841a42dcdb030` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
