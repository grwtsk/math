# twoSiteJacobi_not_conjugate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7959688-31d6-2664-4262-083fc2c008d7",
  "kind": "theorem",
  "lexical_name": "twoSiteJacobi_not_conjugate",
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
  "slug": "twositejacobi-not-conjugate--2a00c7e40bfae899c0d3d0c3",
  "source": {
    "blob": "8390b8781c489e6258c91c64ce4d235f8ae72639",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 302,
    "path": "GRWTSK/Algebra/LinearAlgebra/JacobiTransfer.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a00c7e40bfae899c0d3d0c38508b9d87f9f89fa6af7f324c6d0409099197c54",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7959688-31d6-2664-4262-083fc2c008d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoSiteJacobi_not_conjugate :
    ¬ ∃ P : (Matrix (Fin 2) (Fin 2) ℚ)ˣ,
      (P : Matrix (Fin 2) (Fin 2) ℚ) * twoSiteJacobi 0 *
        (↑P⁻¹ : Matrix (Fin 2) (Fin 2) ℚ) = twoSiteJacobi 1 := by
  rintro ⟨P, hP⟩
  have htrace := Matrix.trace_units_conj P (twoSiteJacobi 0)
  rw [hP] at htrace
  norm_num [twoSiteJacobi, Matrix.trace, Fin.sum_univ_two] at htrace




end GRWTSK.LinearAlgebra.JacobiTransfer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JacobiTransfer.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8390b8781c489e6258c91c64ce4d235f8ae72639` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
