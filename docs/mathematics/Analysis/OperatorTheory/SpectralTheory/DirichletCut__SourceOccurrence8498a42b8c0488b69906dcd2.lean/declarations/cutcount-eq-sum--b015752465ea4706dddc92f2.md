# cutCount_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8aeb7c5d-402c-95ce-067f-6641750e9302",
  "kind": "theorem",
  "lexical_name": "cutCount_eq_sum",
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
  "slug": "cutcount-eq-sum--b015752465ea4706dddc92f2",
  "source": {
    "blob": "34190c193433b7b9fa7cd8c46beade45352fcd18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 165,
    "path": "GRWTSK/Spectral/DirichletCut.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b015752465ea4706dddc92f2303c8ade48ed466d55d86c98ff492e7eebfaf586",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence8498a42b8c0488b69906dcd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8aeb7c5d-402c-95ce-067f-6641750e9302`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutCount_eq_sum (N M : ℕ) (hN : 0 < N)
    (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    cutCount (N+M) α V ξ origin (N-1) E =
      sturmianCount N α V ξ origin E +
      sturmianCount M α V ξ (origin+(N:ℤ)) E :=
  eigenvalueCount_add_of_charpoly_mul (hamiltonian_isHermitian N α V ξ origin)
    (hamiltonian_isHermitian M α V ξ (origin+(N:ℤ)))
    (cutHamiltonian_isHermitian (N+M) α V ξ origin (N-1))
    (cut_charpoly N M hN α V ξ origin) E

/-- Almost additivity for the actual inclusive counts of consecutive volumes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence8498a42b8c0488b69906dcd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Spectral/DirichletCut.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34190c193433b7b9fa7cd8c46beade45352fcd18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
