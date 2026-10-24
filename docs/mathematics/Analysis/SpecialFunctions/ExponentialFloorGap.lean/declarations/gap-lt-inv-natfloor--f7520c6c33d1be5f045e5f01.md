# gap_lt_inv_natFloor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f34f95bd-36db-49e2-35d3-be877d6d0a14",
  "kind": "theorem",
  "lexical_name": "gap_lt_inv_natFloor",
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
  "slug": "gap-lt-inv-natfloor--f7520c6c33d1be5f045e5f01",
  "source": {
    "blob": "85008d082fb3322f496501cefaad022547c7c71e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 59,
    "path": "GRWTSK/Analysis/SpecialFunctions/ExponentialFloorGap.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7520c6c33d1be5f045e5f012c5d6f7a6b3da7d839df5ba81eb84440cee5ee6b",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/ExponentialFloorGap.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f34f95bd-36db-49e2-35d3-be877d6d0a14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gap_lt_inv_natFloor (T : ℝ) (hT : 0 ≤ T) :
    T - Real.log (Nat.floor (Real.exp T) : ℝ) <
      1 / (Nat.floor (Real.exp T) : ℝ) := by
  let m : ℝ := Nat.floor (Real.exp T)
  have hm : 0 < m := natFloor_exp_cast_pos T hT
  have hm1 : 0 < m + 1 := by linarith
  have hupper : T < Real.log (m + 1) := by
    have hlog := Real.log_lt_log (Real.exp_pos T) (exp_lt_natFloor_add_one T)
    simpa only [Real.log_exp] using hlog
  have hgap : T - Real.log m < Real.log ((m + 1) / m) := by
    rw [Real.log_div hm1.ne' hm.ne']
    linarith
  have htangent : Real.log ((m + 1) / m) ≤ 1 / m := by
    calc
      Real.log ((m + 1) / m) ≤ (m + 1) / m - 1 :=
        Real.log_le_sub_one_of_pos (div_pos hm1 hm)
      _ = (m + 1) / m - m / m := by rw [div_self hm.ne']
      _ = ((m + 1) - m) / m := (sub_div (m + 1) m m).symm
      _ = 1 / m := by rw [add_sub_cancel_left]
  exact hgap.trans_le htangent

/-- Every nonnegative-horizon exponential is strictly below twice its natural floor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SpecialFunctions/ExponentialFloorGap.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/ExponentialFloorGap.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85008d082fb3322f496501cefaad022547c7c71e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
