# integer_le_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96414ac5-2cf0-2421-9471-223037a2dada",
  "kind": "theorem",
  "lexical_name": "integer_le_residual",
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
  "slug": "integer-le-residual--fb8cc5e05806c5d45a17145c",
  "source": {
    "blob": "e15a99ad92fb3c9217e2e798f843ae4b7735d31c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/C89e9350ee4bbf1c33d5IntegerWitnessTransfer/Variant7b9c163dcb30eb911f50016893779976f2d1c3394fd70d7a2f3b0bc9b8a9dc3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb8cc5e05806c5d45a17145c672c3fd45805a32b1d88cea6cd29f9c493f37d52",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/C89e9350ee4bbf1c33d5IntegerWitnessTransfer/Variant7b9c163dcb30eb911f50016893779976f2d1c3394fd70d7a2f3b0bc9b8a9dc3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96414ac5-2cf0-2421-9471-223037a2dada`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integer_le_residual {R A : ℝ} (hR : 1 ≤ R) (hRA : R ≤ A) :
    integerJ A ≤ mertensResidual A-(riemannZeta (1/2)).re+260/R^2 := by
  have h := (abs_le.mp (calibration_at_radius hR hRA)).1
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/C89e9350ee4bbf1c33d5IntegerWitnessTransfer/Variant7b9c163dcb30eb911f50016893779976f2d1c3394fd70d7a2f3b0bc9b8a9dc3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/C89e9350ee4bbf1c33d5IntegerWitnessTransfer/Variant7b9c163dcb30eb911f50016893779976f2d1c3394fd70d7a2f3b0bc9b8a9dc3c.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e15a99ad92fb3c9217e2e798f843ae4b7735d31c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
