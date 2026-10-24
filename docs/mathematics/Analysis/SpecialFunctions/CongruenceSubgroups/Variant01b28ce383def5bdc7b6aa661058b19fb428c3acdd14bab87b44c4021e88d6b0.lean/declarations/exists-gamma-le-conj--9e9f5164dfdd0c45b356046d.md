# exists_Gamma_le_conj'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0173f12b-702d-bb73-d0c2-ae0d33b87239",
  "kind": "theorem",
  "lexical_name": "exists_Gamma_le_conj'",
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
  "slug": "exists-gamma-le-conj--9e9f5164dfdd0c45b356046d",
  "source": {
    "blob": "35e45cd5be1fb6bb010e3aa69db7af42e5c4112a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 287,
    "path": "GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant01b28ce383def5bdc7b6aa661058b19fb428c3acdd14bab87b44c4021e88d6b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e9f5164dfdd0c45b356046dd859e45002d9121705d09d7d811e94e78f51729d",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/CongruenceSubgroups/Variant01b28ce383def5bdc7b6aa661058b19fb428c3acdd14bab87b44c4021e88d6b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0173f12b-702d-bb73-d0c2-ae0d33b87239`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_Gamma_le_conj' (g : GL (Fin 2) ℚ) (M : ℕ) [NeZero M] :
    ∃ N ≠ 0, (toConjAct <| g.map (Rat.castHom ℝ)) • (Gamma N).map (mapGL ℝ)
      ≤ (Gamma M).map (mapGL ℝ) := by
  obtain ⟨N, hN, h⟩ := exists_Gamma_le_conj g M
  refine ⟨N, hN, fun y hy ↦ ?_⟩
  simp_rw [Subgroup.mem_pointwise_smul_iff_inv_smul_mem, Subgroup.mem_map,
    eq_inv_smul_iff] at hy
  obtain ⟨x, hx, rfl⟩ := hy
  obtain ⟨z, hz, hz'⟩ := h x hx
  use z, hz
  simpa only [Subtype.ext_iff, Units.ext_iff, map_mul] using!
    congr_arg (GeneralLinearGroup.map (Rat.castHom ℝ)) hz'

open Subgroup in
/-- If `Γ` has finite index in `SL(2, ℤ)`, then so does `g⁻¹ Γ g ∩ SL(2, ℤ)` for any
`g ∈ GL(2, ℚ)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/CongruenceSubgroups/Variant01b28ce383def5bdc7b6aa661058b19fb428c3acdd14bab87b44c4021e88d6b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant01b28ce383def5bdc7b6aa661058b19fb428c3acdd14bab87b44c4021e88d6b0.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35e45cd5be1fb6bb010e3aa69db7af42e5c4112a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
