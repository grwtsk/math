# reciprocalMomentRow_cofactor_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2394f272-c8b7-08ca-263d-3e81662a2b7a",
  "kind": "theorem",
  "lexical_name": "reciprocalMomentRow_cofactor_line",
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
  "slug": "reciprocalmomentrow-cofactor-line--1fc454d35b7ba25a352f3172",
  "source": {
    "blob": "67e134dffd7ea3fa74cbbf6db37a4c8a67597dce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 73,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fc454d35b7ba25a352f31720584da56d1ca3de7a1b75cb96180f3a40bf9d130",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2394f272-c8b7-08ca-263d-3e81662a2b7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocalMomentRow_cofactor_line (c : ℂ) :
    reciprocalMomentRow (fun i => c * correctedCoordinates i) = 0 := by
  change (c * cofactorZero) * (realMultiplicativeMoment 0 : ℂ) +
    (c * cofactorOne) * (realMultiplicativeMoment 1 : ℂ) +
    (c * cofactorTwo) * (realMultiplicativeMoment 2 : ℂ) = 0
  calc
    _ = c * (cofactorZero * (realMultiplicativeMoment 0 : ℂ) +
        cofactorOne * (realMultiplicativeMoment 1 : ℂ) +
        cofactorTwo * (realMultiplicativeMoment 2 : ℂ)) := by ring
    _ = 0 := by rw [cofactor_multiplicative_balance]; ring

/-- The source-proved two-tent nonzero determinant eliminates two
coefficients once the third is fixed. No moment equation is discarded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67e134dffd7ea3fa74cbbf6db37a4c8a67597dce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
