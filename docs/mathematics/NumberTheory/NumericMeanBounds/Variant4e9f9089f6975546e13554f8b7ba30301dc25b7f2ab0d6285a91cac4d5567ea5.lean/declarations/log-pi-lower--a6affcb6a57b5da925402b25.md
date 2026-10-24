# log_pi_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8dae2a01-232a-1321-899f-7d546d7238ce",
  "kind": "theorem",
  "lexical_name": "log_pi_lower",
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
  "slug": "log-pi-lower--a6affcb6a57b5da925402b25",
  "source": {
    "blob": "d8271a16aff960ad0b8cb591665a3419a7b4a20a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 23,
    "path": "GRWTSK/NumberTheory/NumericMeanBounds/Variant4e9f9089f6975546e13554f8b7ba30301dc25b7f2ab0d6285a91cac4d5567ea5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6affcb6a57b5da925402b25002ddc72bc5f27887401c6f5ad743c50cd754dec",
  "verification": {
    "reference": "docs/verification/NumberTheory/NumericMeanBounds/Variant4e9f9089f6975546e13554f8b7ba30301dc25b7f2ab0d6285a91cac4d5567ea5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8dae2a01-232a-1321-899f-7d546d7238ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_pi_lower : Real.log 3 + 1/25 < Real.log Real.pi := by
  have hp : 0 < Real.pi := Real.pi_pos
  have h := Real.one_sub_inv_le_log_of_pos (div_pos hp (by norm_num : (0:ℝ)<3))
  rw [Real.log_div hp.ne' (by norm_num : (3:ℝ)≠0)] at h
  have hir : 3 / Real.pi < (24/25:ℝ) := by
    apply (div_lt_iff₀ hp).mpr
    linarith [Real.pi_gt_d2]
  have he : (Real.pi/3)⁻¹ = 3/Real.pi := by simp [div_eq_mul_inv, mul_comm]
  rw [he] at h
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/NumericMeanBounds/Variant4e9f9089f6975546e13554f8b7ba30301dc25b7f2ab0d6285a91cac4d5567ea5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/NumericMeanBounds/Variant4e9f9089f6975546e13554f8b7ba30301dc25b7f2ab0d6285a91cac4d5567ea5.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8271a16aff960ad0b8cb591665a3419a7b4a20a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
