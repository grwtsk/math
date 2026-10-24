# source_polynomial_expansion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f03f19c5-7747-7fac-c600-e1e7e9e0c896",
  "kind": "theorem",
  "lexical_name": "source_polynomial_expansion",
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
  "slug": "source-polynomial-expansion--a14e41f31ca761770a7bf746",
  "source": {
    "blob": "20f926a3845ffd4086fcadc057360a2279921b89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 60,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FiveModeSourceAudit/Variant6be9af073f9fc00e82d1c113fc27a9bc63f1b4a715f994caf59e4e604b7e6c00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a14e41f31ca761770a7bf7469570ffc21daa79a0013ad1204726e4e6f9082cec",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FiveModeSourceAudit/Variant6be9af073f9fc00e82d1c113fc27a9bc63f1b4a715f994caf59e4e604b7e6c00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f03f19c5-7747-7fac-c600-e1e7e9e0c896`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_polynomial_expansion (A y : ℝ) :
    unitSecond y / A ^ 2 - unitBump y / 4 =
      ∑ i : Fin 5, sourceCoefficient A i * mode i y := by
  rw [bump_expansion, second_expansion]
  simp only [sourceCoefficient, sub_mul, div_mul_eq_mul_div, Finset.sum_sub_distrib,
    Finset.sum_div]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FiveModeSourceAudit/Variant6be9af073f9fc00e82d1c113fc27a9bc63f1b4a715f994caf59e4e604b7e6c00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FiveModeSourceAudit/Variant6be9af073f9fc00e82d1c113fc27a9bc63f1b4a715f994caf59e4e604b7e6c00.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20f926a3845ffd4086fcadc057360a2279921b89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
