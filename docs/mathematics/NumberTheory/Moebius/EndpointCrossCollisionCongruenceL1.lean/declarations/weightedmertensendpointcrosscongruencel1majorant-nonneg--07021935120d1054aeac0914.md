# weightedMertensEndpointCrossCongruenceL1Majorant_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc1eacb5-2245-b1f6-dd79-09e6da70e3dd",
  "kind": "theorem",
  "lexical_name": "weightedMertensEndpointCrossCongruenceL1Majorant_nonneg",
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
  "slug": "weightedmertensendpointcrosscongruencel1majorant-nonneg--07021935120d1054aeac0914",
  "source": {
    "blob": "251309b0060626a7f04dc7e64215d9076402c568",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 112,
    "path": "GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07021935120d1054aeac091407830bf178f35c1dfb472c472ce1d61fd3d36b05",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc1eacb5-2245-b1f6-dd79-09e6da70e3dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMertensEndpointCrossCongruenceL1Majorant_nonneg
    (j : ℕ) :
    0 ≤ weightedMertensEndpointCrossCongruenceL1Majorant j := by
  unfold weightedMertensEndpointCrossCongruenceL1Majorant
  apply mul_nonneg (by norm_num)
  apply Finset.sum_nonneg
  intro b hb
  have hb' := Finset.mem_Ico.mp hb
  have hbpos : 0 < b := by
    have hx : 0 < 2 ^ j := by positivity
    omega
  exact mul_nonneg
    (reciprocalEndpointDrop_nonneg hbpos)
    (mertensEndpointCrossCongruenceL1Mass_nonneg b)

/-- The original signed weighted cross-collision contribution is bounded by
the congruence-fibre L1 majorant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `251309b0060626a7f04dc7e64215d9076402c568` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
