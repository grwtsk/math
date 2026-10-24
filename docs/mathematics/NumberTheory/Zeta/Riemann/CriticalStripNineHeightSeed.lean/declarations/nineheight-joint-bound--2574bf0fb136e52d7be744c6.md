# nineHeight_joint_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa84cf80-8bf1-afc3-2ceb-aaa4b7cec40d",
  "kind": "theorem",
  "lexical_name": "nineHeight_joint_bound",
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
  "slug": "nineheight-joint-bound--2574bf0fb136e52d7be744c6",
  "source": {
    "blob": "27a73d8d2cdea5a84ae16359a6aef453eb5d8b85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 23,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2574bf0fb136e52d7be744c6d33def252623aae04b5673d129f90bb4b5178368",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa84cf80-8bf1-afc3-2ceb-aaa4b7cec40d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nineHeight_joint_bound {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (9 : ℝ)) :
    jointNumerator s ≤ (155 / 132 : ℝ) * jointDenominator s := by
  have hy2 : s.im ^ 2 ≤ (81 : ℝ) := by
    have h := mul_le_mul hy hy (abs_nonneg s.im) (by norm_num : (0 : ℝ) ≤ 9)
    nlinarith [sq_abs s.im]
  have hc := NineHeightCertificate.squared_ratio_bound hx hx1 (sq_nonneg s.im) hy2
  rw [← jointNumerator_sq, ← jointDenominator_sq] at hc
  have hn : 0 ≤ jointNumerator s := by unfold jointNumerator; positivity
  have hd : 0 ≤ (155 / 132 : ℝ) * jointDenominator s := by
    have h5 : 0 ≤ s.re + 5 := by linarith
    unfold jointDenominator
    positivity
  apply (sq_le_sq₀ hn hd).mp
  nlinarith

/-- Restore both shared factors before applying the original-source remainder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27a73d8d2cdea5a84ae16359a6aef453eb5d8b85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
