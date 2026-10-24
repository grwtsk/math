# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b6317a05c3fd0df04b07824c2eec73b6e1f16bc31ccf8a8c24e7858697996d7",
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
  "slug": "example--b99bd3c76d19b09a55e52c75",
  "source": {
    "blob": "936da56531996239c06fd617d5338836d1e582eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 7,
    "line": 3,
    "path": "GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/MissingDefectEquality.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b99bd3c76d19b09a55e52c7597dd1649ab6a34c586905397bf6068ec59b88b83",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/MissingDefectEquality__SourceOccurrence3fe1f2552922d5cd793efe2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b6317a05c3fd0df04b07824c2eec73b6e1f16bc31ccf8a8c24e7858697996d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3–7.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {ι : Type*} [Fintype ι] [DecidableEq ι] {A B : Matrix ι ι ℝ}
    (hA : A.IsHermitian) (hB : B.IsHermitian)
    (K : EuclideanSpace ℝ ι →ₗ[ℝ] ℝ) (E : ℝ) :
    eigenvalueCount hB E ≤ eigenvalueCount hA E + Module.finrank ℝ ℝ := by
  exact eigenvalueCount_le_add_finrank_of_kernel hA hB K E
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/MissingDefectEquality__SourceOccurrence3fe1f2552922d5cd793efe2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/MissingDefectEquality.lean#L3).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `936da56531996239c06fd617d5338836d1e582eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
