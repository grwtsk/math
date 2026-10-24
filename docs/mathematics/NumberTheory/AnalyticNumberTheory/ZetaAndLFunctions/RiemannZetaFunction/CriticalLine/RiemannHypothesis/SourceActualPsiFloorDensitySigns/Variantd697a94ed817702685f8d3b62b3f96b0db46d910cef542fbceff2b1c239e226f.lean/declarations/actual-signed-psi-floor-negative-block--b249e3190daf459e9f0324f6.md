# actual_signed_psi_floor_negative_block

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec2aa8d4-647c-4065-fc7d-e30372371e69",
  "kind": "theorem",
  "lexical_name": "actual_signed_psi_floor_negative_block",
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
  "slug": "actual-signed-psi-floor-negative-block--b249e3190daf459e9f0324f6",
  "source": {
    "blob": "47cdb1523e3422d5fbbf28f2692a74a7c9dcf038",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorDensitySigns/Variantd697a94ed817702685f8d3b62b3f96b0db46d910cef542fbceff2b1c239e226f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b249e3190daf459e9f0324f68d716eceb9449864cd91792d9164cf05e41e0062",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorDensitySigns/Variantd697a94ed817702685f8d3b62b3f96b0db46d910cef542fbceff2b1c239e226f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec2aa8d4-647c-4065-fc7d-e30372371e69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_signed_psi_floor_negative_block {A x : ℝ}
    (hA : 91 ≤ A) (hx : 6 ≤ x) (hx7 : x < 7) :
    -actualPsiFloorDensity A x < 0 := by
  have hd := actual_plain_profile_derivative_neg_on_twenty hA
    (by linarith : 1 ≤ x) (by linarith : x ≤ 20)
  have hp := actual_psi_floor_negative_block x hx hx7
  have hm : 0 < actualPsiFloorDensity A x := by
    change 0 < actualPsiFloorDiscrepancy x * deriv (plainProfile A 1) x
    exact mul_pos_of_neg_of_neg (by linarith) hd
  linarith

/-- The true closed nineteen atom makes this real block strictly positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorDensitySigns/Variantd697a94ed817702685f8d3b62b3f96b0db46d910cef542fbceff2b1c239e226f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorDensitySigns/Variantd697a94ed817702685f8d3b62b3f96b0db46d910cef542fbceff2b1c239e226f.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47cdb1523e3422d5fbbf28f2692a74a7c9dcf038` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
