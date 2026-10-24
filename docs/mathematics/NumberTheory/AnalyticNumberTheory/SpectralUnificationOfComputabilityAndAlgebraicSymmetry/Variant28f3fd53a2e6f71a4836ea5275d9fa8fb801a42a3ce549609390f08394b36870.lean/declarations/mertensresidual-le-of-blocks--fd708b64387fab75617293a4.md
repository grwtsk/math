# mertensResidual_le_of_blocks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbf8b077-4b23-e058-cc3c-455c6a5eaddb",
  "kind": "theorem",
  "lexical_name": "mertensResidual_le_of_blocks",
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
  "slug": "mertensresidual-le-of-blocks--fd708b64387fab75617293a4",
  "source": {
    "blob": "bbbe0236fbd01a4f6eb5133a2506a5f9a7a94194",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 227,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant28f3fd53a2e6f71a4836ea5275d9fa8fb801a42a3ce549609390f08394b36870.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd708b64387fab75617293a4f667a7e6ed342cf52ebcf5b3636aa4d4f3979053",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant28f3fd53a2e6f71a4836ea5275d9fa8fb801a42a3ce549609390f08394b36870.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbf8b077-4b23-e058-cc3c-455c6a5eaddb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_le_of_blocks (K R A : ℝ) (p : ℕ) (hR : 1 ≤ R)
    (hB : SquareRootLogBlockEstimate K p R) (hRA : R ≤ A) :
    mertensResidual A ≤ typeTwoDiagonal A + shortMangoldtSource A + shortLogSource A -
      shortPlainSource A + K * (1+2*A)^p * densityBlockBudget A := by
  rw [mertensResidual_eq_coupledOffDiagonalRemainder A (hR.trans hRA)]
  unfold coupledOffDiagonalRemainder
  linarith [typeTwoOffDiagonal_le_of_blocks K R A p hR hB hRA]

/-- The coarser scale audit leaves A^(p+2), with all signed counterterms retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant28f3fd53a2e6f71a4836ea5275d9fa8fb801a42a3ce549609390f08394b36870.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant28f3fd53a2e6f71a4836ea5275d9fa8fb801a42a3ce549609390f08394b36870.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbbe0236fbd01a4f6eb5133a2506a5f9a7a94194` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
