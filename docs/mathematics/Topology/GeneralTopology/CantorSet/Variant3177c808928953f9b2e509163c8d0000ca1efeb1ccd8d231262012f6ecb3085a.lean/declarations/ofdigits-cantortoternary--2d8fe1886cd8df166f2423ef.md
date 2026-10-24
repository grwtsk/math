# ofDigits_cantorToTernary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d52680f9-d330-82d6-1650-6378a9938dc3",
  "kind": "theorem",
  "lexical_name": "ofDigits_cantorToTernary",
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
  "slug": "ofdigits-cantortoternary--2d8fe1886cd8df166f2423ef",
  "source": {
    "blob": "79fd5f67185e532e62fc157dbb2ade711ec62428",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 300,
    "path": "GRWTSK/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d8fe1886cd8df166f2423eff97aa0a6ff314a242a0d8ca87f4a86a93fc3d3e5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d52680f9-d330-82d6-1650-6378a9938dc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofDigits_cantorToTernary {x : ℝ} (hx : x ∈ cantorSet) :
    ofDigits (cantorToTernary x).get = x := by
  simp only [ofDigits]
  rw [HasSum.tsum_eq]
  rw [hasSum_iff_tendsto_nat_of_summable_norm]
  swap
  · simpa only [norm_of_nonneg ofDigitsTerm_nonneg] using summable_ofDigitsTerm
  apply tendsto_of_tendsto_of_tendsto_of_le_of_le (g := fun n ↦ x - (3⁻¹ : ℝ) ^ n) (h := fun _ ↦ x)
  · rw [← tendsto_sub_nhds_zero_iff]
    simp only [sub_sub_cancel_left]
    rw [show 0 = -(0 : ℝ) by simp]
    exact (tendsto_pow_atTop_nhds_zero_of_abs_lt_one (by norm_num)).neg
  · exact tendsto_const_nhds
  · exact fun _ ↦ le_ofDigits_cantorToTernary_sum hx
  · exact fun _ ↦ ofDigits_cantorToTernary_sum_le hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79fd5f67185e532e62fc157dbb2ade711ec62428` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
