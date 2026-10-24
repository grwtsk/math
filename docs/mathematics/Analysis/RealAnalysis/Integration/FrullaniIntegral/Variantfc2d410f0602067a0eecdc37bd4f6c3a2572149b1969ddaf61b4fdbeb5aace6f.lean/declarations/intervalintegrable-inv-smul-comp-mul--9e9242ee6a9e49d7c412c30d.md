# intervalIntegrable_inv_smul_comp_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d35002c5-133c-a782-f47e-59f9d582b94f",
  "kind": "lemma",
  "lexical_name": "intervalIntegrable_inv_smul_comp_mul",
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
  "slug": "intervalintegrable-inv-smul-comp-mul--9e9242ee6a9e49d7c412c30d",
  "source": {
    "blob": "6949aa03505a1c311f4958a50424faa58050f557",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 50,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantfc2d410f0602067a0eecdc37bd4f6c3a2572149b1969ddaf61b4fdbeb5aace6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e9242ee6a9e49d7c412c30d28d4e9d23b19556f6788c422fc3f6a54a215ba11",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantfc2d410f0602067a0eecdc37bd4f6c3a2572149b1969ddaf61b4fdbeb5aace6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d35002c5-133c-a782-f47e-59f9d582b94f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma intervalIntegrable_inv_smul_comp_mul (hf : LocallyIntegrableOn f (Ioi 0)) (ha : 0 < a)
    (hb : 0 < b) (hc : 0 < c) :
    IntervalIntegrable (fun x ↦ x⁻¹ • f (c * x)) volume a b := by
  have hsub : uIcc a b ⊆ Ioi 0 := by simp [uIcc, Icc_subset_Ioi_iff, ha, hb]
  have hf_cint : IntervalIntegrable f volume (c * a) (c * b) :=
    intervalIntegrable_iff.mpr
      ((hf.integrableOn_compact_subset (by simp [uIcc, Icc_subset_Ioi_iff, mul_pos hc ha,
        mul_pos hc hb]) isCompact_uIcc).mono_set uIoc_subset_uIcc)
  have hf_comp : IntervalIntegrable (fun x ↦ f (c * x)) volume a b := by
    have h := hf_cint.comp_mul_left (c := c)
    rwa [mul_div_cancel_left₀ a hc.ne', mul_div_cancel_left₀ b hc.ne'] at h
  exact hf_comp.continuousOn_smul (continuousOn_inv₀.mono fun x hx ↦ ne_of_gt (hsub hx))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantfc2d410f0602067a0eecdc37bd4f6c3a2572149b1969ddaf61b4fdbeb5aace6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantfc2d410f0602067a0eecdc37bd4f6c3a2572149b1969ddaf61b4fdbeb5aace6f.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6949aa03505a1c311f4958a50424faa58050f557` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
