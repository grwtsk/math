# actual_critical_absolute_full_tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f37ac48-0b66-8268-5979-a1621025ab4a",
  "kind": "theorem",
  "lexical_name": "actual_critical_absolute_full_tendsto_atTop",
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
  "slug": "actual-critical-absolute-full-tendsto-attop--376e7514e3ab95523e52cadd",
  "source": {
    "blob": "8b34e870707a406e0c41c798cd6dc2f8a492f661",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 112,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCriticalAbsoluteGrowth/Variant6ff948e42616288b1169f222321870fc5a33d0fa40afc9a9d9ba383435c01723.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:376e7514e3ab95523e52cadd6b0c2916d6366215e496e06b73011c2097b81e4d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCriticalAbsoluteGrowth/Variant6ff948e42616288b1169f222321870fc5a33d0fa40afc9a9d9ba383435c01723.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f37ac48-0b66-8268-5979-a1621025ab4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_critical_absolute_full_tendsto_atTop :
    Tendsto (fun A : ℝ => ∫ t in Ioi (0 : ℝ),
      Real.exp (t / 2) * |criticalWeight A t|) atTop atTop := by
  have he : (fun A : ℝ => Real.exp (A - 1 / 2) / (30 * A ^ 9)) =
      fun A => ((Real.exp (-1 / 2) / 30) * Real.exp A + 0) / A ^ 9 := by
    funext A
    rw [show A - 1 / 2 = A + (-1 / 2) by ring, Real.exp_add]
    ring
  have ht : Tendsto (fun A : ℝ => Real.exp (A - 1 / 2) / (30 * A ^ 9))
      atTop atTop := by
    rw [he]
    exact Real.tendsto_mul_exp_add_div_pow_atTop _ _ 9 (by positivity)
  apply tendsto_atTop_mono' atTop _ ht
  filter_upwards [eventually_ge_atTop (4 : ℝ)] with A hA
  exact actual_critical_absolute_full_lower A hA

end
end RH16IndependentChallengeNext
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCriticalAbsoluteGrowth/Variant6ff948e42616288b1169f222321870fc5a33d0fa40afc9a9d9ba383435c01723.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCriticalAbsoluteGrowth/Variant6ff948e42616288b1169f222321870fc5a33d0fa40afc9a9d9ba383435c01723.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b34e870707a406e0c41c798cd6dc2f8a492f661` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
