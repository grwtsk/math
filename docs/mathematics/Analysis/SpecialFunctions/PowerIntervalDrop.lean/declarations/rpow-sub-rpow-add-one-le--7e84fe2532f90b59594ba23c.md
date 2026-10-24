# rpow_sub_rpow_add_one_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7796a9d4-13de-7954-97a2-099ada4b2600",
  "kind": "theorem",
  "lexical_name": "rpow_sub_rpow_add_one_le",
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
  "slug": "rpow-sub-rpow-add-one-le--7e84fe2532f90b59594ba23c",
  "source": {
    "blob": "93433a858f7010e98178635423523a8442135c41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 24,
    "path": "GRWTSK/Analysis/SpecialFunctions/PowerIntervalDrop.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e84fe2532f90b59594ba23c595aefd63cdda5d428cc0e2de1cbed632efc1435",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/PowerIntervalDrop.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7796a9d4-13de-7954-97a2-099ada4b2600`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rpow_sub_rpow_add_one_le {x a : ℝ} (hx : 0 < x) (ha : 0 ≤ a) :
    x ^ (-a) - (x + 1) ^ (-a) ≤ a * x ^ (-a - 1) := by
  have hxx : x < x + 1 := by linarith
  have hcont : ContinuousOn (fun y : ℝ => y ^ (-a)) (Icc x (x + 1)) := by
    intro y hy
    have hypos : 0 < y := hx.trans_le hy.1
    exact (continuousAt_id.rpow_const (Or.inl hypos.ne')).continuousWithinAt
  have hder : ∀ y ∈ Ioo x (x + 1),
      HasDerivAt (fun z : ℝ => z ^ (-a))
        ((-a) * y ^ (-a - 1)) y := by
    intro y hy
    exact Real.hasDerivAt_rpow_const (Or.inl (hx.trans hy.1).ne')
  obtain ⟨c, hc, hmean⟩ :=
    exists_hasDerivAt_eq_slope (fun y : ℝ => y ^ (-a))
      (fun y : ℝ => (-a) * y ^ (-a - 1)) hxx hcont hder
  have hmean' : (-a) * c ^ (-a - 1) =
      (x + 1) ^ (-a) - x ^ (-a) := by
    simpa using hmean
  have hdrop : x ^ (-a) - (x + 1) ^ (-a) =
      a * c ^ (-a - 1) := by
    linarith
  have hpow : c ^ (-a - 1) ≤ x ^ (-a - 1) :=
    Real.rpow_le_rpow_of_nonpos hx hc.1.le (by linarith)
  rw [hdrop]
  exact mul_le_mul_of_nonneg_left hpow ha

end GRWTSK.Analysis.SpecialFunctions.PowerIntervalDrop

#print axioms GRWTSK.Analysis.SpecialFunctions.PowerIntervalDrop.rpow_sub_rpow_add_one_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SpecialFunctions/PowerIntervalDrop.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/PowerIntervalDrop.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93433a858f7010e98178635423523a8442135c41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
