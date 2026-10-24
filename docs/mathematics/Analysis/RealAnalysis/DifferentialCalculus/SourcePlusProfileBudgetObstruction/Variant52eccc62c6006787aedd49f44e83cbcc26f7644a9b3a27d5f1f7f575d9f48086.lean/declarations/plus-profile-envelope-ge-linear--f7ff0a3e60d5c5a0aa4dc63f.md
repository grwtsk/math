# plus_profile_envelope_ge_linear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25f3cde3-65b0-c990-78d6-00454bc1d415",
  "kind": "theorem",
  "lexical_name": "plus_profile_envelope_ge_linear",
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
  "slug": "plus-profile-envelope-ge-linear--f7ff0a3e60d5c5a0aa4dc63f",
  "source": {
    "blob": "1ee10f5d18ad1ceab0155203d375e200a28f5125",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 97,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePlusProfileBudgetObstruction/Variant52eccc62c6006787aedd49f44e83cbcc26f7644a9b3a27d5f1f7f575d9f48086.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7ff0a3e60d5c5a0aa4dc63f4fd817246146640da81d69c60e0e84a21419854f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePlusProfileBudgetObstruction/Variant52eccc62c6006787aedd49f44e83cbcc26f7644a9b3a27d5f1f7f575d9f48086.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25f3cde3-65b0-c990-78d6-00454bc1d415`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem plus_profile_envelope_ge_linear (A : ℝ) (hA : 40 ≤ A) :
    A / 256 ≤ plusProfileEnvelope A := by
  have hx : 0 ≤ A / 32 := by linarith
  have hz : 1 ≤ Real.exp (A / 32) := Real.one_le_exp hx
  have he := Real.add_one_le_exp (A / 32)
  have hs : Real.exp (A / 16) = (Real.exp (A / 32)) ^ 2 := by
    rw [show A / 16 = A / 32 + A / 32 by ring, Real.exp_add]
    ring
  have hprod := mul_nonneg (by linarith : 0 ≤ Real.exp (A / 32) - 1)
    (by linarith : 0 ≤ Real.exp (A / 32) - 1)
  have hlow := plus_profile_envelope_lower A hA
  rw [hs] at hlow
  nlinarith

/-- The probe interval lies strictly after seven for every sufficiently large real scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePlusProfileBudgetObstruction/Variant52eccc62c6006787aedd49f44e83cbcc26f7644a9b3a27d5f1f7f575d9f48086.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePlusProfileBudgetObstruction/Variant52eccc62c6006787aedd49f44e83cbcc26f7644a9b3a27d5f1f7f575d9f48086.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ee10f5d18ad1ceab0155203d375e200a28f5125` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
