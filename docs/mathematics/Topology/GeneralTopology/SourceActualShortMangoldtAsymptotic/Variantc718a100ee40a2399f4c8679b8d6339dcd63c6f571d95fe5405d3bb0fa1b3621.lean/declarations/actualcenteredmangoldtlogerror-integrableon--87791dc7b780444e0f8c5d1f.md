# actualCenteredMangoldtLogError_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:323af2ee-006d-8f0b-1003-6238fb3c83cd",
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
  "slug": "actualcenteredmangoldtlogerror-integrableon--87791dc7b780444e0f8c5d1f",
  "source": {
    "blob": "c082dc20bb647b747e02bf2f408d11f0fdb6ed9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 34,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualShortMangoldtAsymptotic/Variantc718a100ee40a2399f4c8679b8d6339dcd63c6f571d95fe5405d3bb0fa1b3621.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87791dc7b780444e0f8c5d1fa463f19ba370d98737431196a2c2923e25c9bf40",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualShortMangoldtAsymptotic/Variantc718a100ee40a2399f4c8679b8d6339dcd63c6f571d95fe5405d3bb0fa1b3621.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:323af2ee-006d-8f0b-1003-6238fb3c83cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–58.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualShortMangoldtAsymptotic/Variantc718a100ee40a2399f4c8679b8d6339dcd63c6f571d95fe5405d3bb0fa1b3621.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualShortMangoldtAsymptotic/Variantc718a100ee40a2399f4c8679b8d6339dcd63c6f571d95fe5405d3bb0fa1b3621.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c082dc20bb647b747e02bf2f408d11f0fdb6ed9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
