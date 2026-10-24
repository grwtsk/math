# counting_chebyshev

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b62d64e0-8a54-578a-f372-27224b3baba1",
  "kind": "theorem",
  "lexical_name": "counting_chebyshev",
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
  "slug": "counting-chebyshev--d7be0b99a270f4e23d849f99",
  "source": {
    "blob": "a20891b6fd74ae495aa25635f625364890d6e760",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 371,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneMatchingMeasure/Varianta29b193389ffa878ae42ebd3ca68277e7618100b10f363f798e89cf657b529d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7be0b99a270f4e23d849f996840346d79f362250d3d816c09a124c31c9990a2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MonotoneMatchingMeasure/Varianta29b193389ffa878ae42ebd3ca68277e7618100b10f363f798e89cf657b529d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b62d64e0-8a54-578a-f372-27224b3baba1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem counting_chebyshev (x : ℝ) (hx : 1 ≤ x) :
    weightedPrefix (Real.log x) < 4 * Real.log 2 * x := by
  have hx0 : 0 < x := by linarith
  have hlog : 0 ≤ Real.log x := Real.log_nonneg hx
  have hm := weightedPrefix_upper (Real.log x) hlog
  rw [Real.exp_log hx0] at hm
  have hg : gap < (1 / 5 : ℝ) := by
    unfold gap onset
    linarith [Real.log_two_lt_d9, Real.one_half_lt_eulerMascheroniConstant]
  have hc : 1 + gap / 4 < 4 * Real.log 2 := by linarith [Real.log_two_gt_d9]
  have hx1 : 0 ≤ x - 1 := by linarith
  have hp := mul_lt_mul_of_pos_right hc hx0
  nlinarith [gap_pos]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneMatchingMeasure/Varianta29b193389ffa878ae42ebd3ca68277e7618100b10f363f798e89cf657b529d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneMatchingMeasure/Varianta29b193389ffa878ae42ebd3ca68277e7618100b10f363f798e89cf657b529d2.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a20891b6fd74ae495aa25635f625364890d6e760` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
