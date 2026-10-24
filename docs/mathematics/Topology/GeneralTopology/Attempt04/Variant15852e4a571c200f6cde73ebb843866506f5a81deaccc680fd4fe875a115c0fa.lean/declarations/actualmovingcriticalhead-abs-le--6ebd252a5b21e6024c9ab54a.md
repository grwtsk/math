# actualMovingCriticalHead_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b94f877d-4816-8fa0-37a6-c907a7a3e7fc",
  "kind": "theorem",
  "lexical_name": "actualMovingCriticalHead_abs_le",
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
  "slug": "actualmovingcriticalhead-abs-le--6ebd252a5b21e6024c9ab54a",
  "source": {
    "blob": "90508c716e5dd28b2cc45f55b18062c36d54ca68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 198,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt04/Variant15852e4a571c200f6cde73ebb843866506f5a81deaccc680fd4fe875a115c0fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ebd252a5b21e6024c9ab54a0ee7ffce274245e1e292c91291e61d7c685cd510",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt04/Variant15852e4a571c200f6cde73ebb843866506f5a81deaccc680fd4fe875a115c0fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b94f877d-4816-8fa0-37a6-c907a7a3e7fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMovingCriticalHead_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |actualMovingCriticalHead A| ≤
      Real.sqrt 7 / 2 * |actualCenteredMangoldtLogError (2 * A)| := by
  have hc := actual_correlation_abs_le_one A (Real.log 7) hA
  unfold actualMovingCriticalHead
  rw [abs_div, abs_mul, abs_mul, abs_of_nonneg (Real.sqrt_nonneg _)]
  rw [abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  calc
    _ ≤ (|actualCenteredMangoldtLogError (2 * A)| * Real.sqrt 7) * 1 / 2 :=
      div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hc
        (mul_nonneg (abs_nonneg _) (Real.sqrt_nonneg _))) (by norm_num)
    _ = _ := by ring

/-- Genuine ordinary gamma centering removes this boundary, with its source unchanged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt04/Variant15852e4a571c200f6cde73ebb843866506f5a81deaccc680fd4fe875a115c0fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt04/Variant15852e4a571c200f6cde73ebb843866506f5a81deaccc680fd4fe875a115c0fa.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90508c716e5dd28b2cc45f55b18062c36d54ca68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
