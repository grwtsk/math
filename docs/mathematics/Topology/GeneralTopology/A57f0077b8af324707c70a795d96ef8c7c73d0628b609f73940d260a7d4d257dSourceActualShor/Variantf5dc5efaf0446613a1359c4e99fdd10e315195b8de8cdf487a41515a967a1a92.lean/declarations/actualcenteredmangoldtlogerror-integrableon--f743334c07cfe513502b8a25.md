# actualCenteredMangoldtLogError_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48e6d139-6dc8-a151-9838-e69b49bc8afd",
  "kind": "theorem",
  "lexical_name": "actualCenteredMangoldtLogError_integrableOn",
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
  "slug": "actualcenteredmangoldtlogerror-integrableon--f743334c07cfe513502b8a25",
  "source": {
    "blob": "c136216e0a0a18c23ee68387c963d18472f3dd61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 35,
    "path": "GRWTSK/Topology/GeneralTopology/A57f0077b8af324707c70a795d96ef8c7c73d0628b609f73940d260a7d4d257dSourceActualShor/Variantf5dc5efaf0446613a1359c4e99fdd10e315195b8de8cdf487a41515a967a1a92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f743334c07cfe513502b8a25ee7d6741c2d1e39c9ccc0c25555414c62d1a72aa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/A57f0077b8af324707c70a795d96ef8c7c73d0628b609f73940d260a7d4d257dSourceActualShor/Variantf5dc5efaf0446613a1359c4e99fdd10e315195b8de8cdf487a41515a967a1a92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48e6d139-6dc8-a151-9838-e69b49bc8afd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredMangoldtLogError_integrableOn :
    IntegrableOn actualCenteredMangoldtLogError (Ici 0) := by
  have hloc : LocallyIntegrableOn actualCenteredMangoldtLogError (Ici 0) := by
    intro x hx
    have hx0 : 0 ≤ x := hx
    refine ⟨Icc 0 (x + 1), ?_, ?_⟩
    · change Ici 0 ∩ Iic (x + 1) ∈ nhdsWithin x (Ici 0)
      exact inter_mem self_mem_nhdsWithin
        (mem_nhdsWithin_of_mem_nhds (Iic_mem_nhds (by linarith)))
    · have he : IntervalIntegrable mangoldtLogError volume 0 (x + 1) := by
        simpa only [deriv_id, mul_one] using
          mangoldtLogError_mul_deriv_intervalIntegrable 0 (x + 1) (by linarith)
            id (by fun_prop)
      exact (intervalIntegrable_iff_integrableOn_Icc_of_le (by linarith)).mp
        (he.add intervalIntegrable_const)
  obtain ⟨c, hc, hp⟩ := actualCenteredMangoldtLogError_isBigO
  have hex := actualPntHalfRate_integrable (show 0 < 2 * c by positivity)
  have hex' : IntegrableOn (fun t : ℝ => Real.exp (-c * t ^ ((1 : ℝ) / 10)))
      (Ioi 0) := by
    simpa only [show (2 * c) / 2 = c by ring] using hex
  have hexTop : IntegrableAtFilter
      (fun t : ℝ => Real.exp (-c * t ^ ((1 : ℝ) / 10))) atTop volume :=
    ⟨Ioi 0, Ioi_mem_atTop 0, hex'⟩
  exact hloc.integrableOn_of_isBigO_atTop hp hexTop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/A57f0077b8af324707c70a795d96ef8c7c73d0628b609f73940d260a7d4d257dSourceActualShor/Variantf5dc5efaf0446613a1359c4e99fdd10e315195b8de8cdf487a41515a967a1a92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/A57f0077b8af324707c70a795d96ef8c7c73d0628b609f73940d260a7d4d257dSourceActualShor/Variantf5dc5efaf0446613a1359c4e99fdd10e315195b8de8cdf487a41515a967a1a92.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c136216e0a0a18c23ee68387c963d18472f3dd61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
