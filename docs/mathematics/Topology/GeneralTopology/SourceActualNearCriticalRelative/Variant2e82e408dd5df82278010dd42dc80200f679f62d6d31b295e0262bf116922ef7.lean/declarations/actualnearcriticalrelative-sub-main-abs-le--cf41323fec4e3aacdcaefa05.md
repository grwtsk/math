# actualNearCriticalRelative_sub_main_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ec5b893-f6ff-aa4e-b573-2daa4d2ae112",
  "kind": "theorem",
  "lexical_name": "actualNearCriticalRelative_sub_main_abs_le",
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
  "slug": "actualnearcriticalrelative-sub-main-abs-le--cf41323fec4e3aacdcaefa05",
  "source": {
    "blob": "e85f0b8c39898f7e934d1b0af1e60466c41cfd6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 253,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant2e82e408dd5df82278010dd42dc80200f679f62d6d31b295e0262bf116922ef7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf41323fec4e3aacdcaefa05c2c14b46f525ce4ee53b39f4e702864081a65e0c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant2e82e408dd5df82278010dd42dc80200f679f62d6d31b295e0262bf116922ef7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ec5b893-f6ff-aa4e-b573-2daa4d2ae112`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNearCriticalRelative_sub_main_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualNearCriticalRelativePairing A - actualNearCriticalRelativeMain A| ≤
      10 * (Real.log 4 + 3) * (Real.log A) ^ 2 / A := by
  have hp : 0 < A := by linarith
  rw [near_main_eq_integral (by linarith : 1 ≤ A)]
  have hh := near_replacement hA
    (show 0 ≤ 2 * Real.log A by positivity [Real.log_nonneg (by linarith : 1 ≤ A)])
  unfold actualNearCriticalRelativePairing
  apply hh.trans_eq
  rw [show 2 * Real.log A / 2 = Real.log A by ring, Real.exp_log hp]
  field_simp
  ring

/-- The kernel replacement error tends to zero before any normalization of the signed pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant2e82e408dd5df82278010dd42dc80200f679f62d6d31b295e0262bf116922ef7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant2e82e408dd5df82278010dd42dc80200f679f62d6d31b295e0262bf116922ef7.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e85f0b8c39898f7e934d1b0af1e60466c41cfd6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
