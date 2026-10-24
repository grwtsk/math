# overlapPolynomial0_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c9f777f-3d6a-229e-e3ca-36e675de7fb6",
  "kind": "theorem",
  "lexical_name": "overlapPolynomial0_upper",
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
  "slug": "overlappolynomial0-upper--4c1ee41166426dbf37237ea1",
  "source": {
    "blob": "45b1e8c292c6a2f696278fa612dad27c46b93f17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 58,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt04/Variant8385364d652e7d6f5e51d3f2ac0c350fd4d17c8e365e80baf59897b307a4619a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c1ee41166426dbf37237ea1037d94b2d72cb496fba1c2f5e6f787a340550107",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt04/Variant8385364d652e7d6f5e51d3f2ac0c350fd4d17c8e365e80baf59897b307a4619a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c9f777f-3d6a-229e-e3ca-36e675de7fb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem overlapPolynomial0_upper {u : ℝ} (hu : u∈Icc (0:ℝ) 2) :
    overlapPolynomial0 u≤(128/315:ℝ)*(2-u)^9 := by
  rw [overlapPolynomial0_factor]
  change (2-u)^9*overlapFactor0 u/1531530≤_
  have hp := mul_le_mul_of_nonneg_left (overlapFactor0_bound hu)
    (pow_nonneg (by linarith [hu.2] : 0≤2-u) 9)
  have hq := div_le_div_of_nonneg_right hp (by norm_num : (0:ℝ)≤1531530)
  calc
    _ ≤ (2-u)^9*622336/1531530 := hq
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt04/Variant8385364d652e7d6f5e51d3f2ac0c350fd4d17c8e365e80baf59897b307a4619a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt04/Variant8385364d652e7d6f5e51d3f2ac0c350fd4d17c8e365e80baf59897b307a4619a.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45b1e8c292c6a2f696278fa612dad27c46b93f17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
