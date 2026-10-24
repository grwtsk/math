# residual_bound_at_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a29d8328-f9c4-9e78-9999-fbbb5aecbcdf",
  "kind": "theorem",
  "lexical_name": "residual_bound_at_radius",
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
  "slug": "residual-bound-at-radius--c3459c945fa1ad6fa86b9cbd",
  "source": {
    "blob": "e15a99ad92fb3c9217e2e798f843ae4b7735d31c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/C89e9350ee4bbf1c33d5IntegerWitnessTransfer/Variant7b9c163dcb30eb911f50016893779976f2d1c3394fd70d7a2f3b0bc9b8a9dc3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3459c945fa1ad6fa86b9cbdabac736863e472b3e514be4f32c8021798c61250",
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

Occurrence: `result:a29d8328-f9c4-9e78-9999-fbbb5aecbcdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_bound_at_radius {K R : ℝ} (hR : 1 ≤ R)
    (hJ : ∀ A : ℝ, R ≤ A → integerJ A ≤ K) :
    ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ K+(riemannZeta (1/2)).re+260/R^2 := by
  intro A hRA
  have h := residual_le_integer hR hRA
  linarith [hJ A hRA]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/C89e9350ee4bbf1c33d5IntegerWitnessTransfer/Variant7b9c163dcb30eb911f50016893779976f2d1c3394fd70d7a2f3b0bc9b8a9dc3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/C89e9350ee4bbf1c33d5IntegerWitnessTransfer/Variant7b9c163dcb30eb911f50016893779976f2d1c3394fd70d7a2f3b0bc9b8a9dc3c.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e15a99ad92fb3c9217e2e798f843ae4b7735d31c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
