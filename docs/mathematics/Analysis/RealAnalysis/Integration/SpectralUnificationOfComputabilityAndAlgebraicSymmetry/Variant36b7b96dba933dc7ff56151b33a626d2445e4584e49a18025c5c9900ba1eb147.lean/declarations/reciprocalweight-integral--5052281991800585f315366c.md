# reciprocalWeight_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c945207b3057821a4c54fd95f31eef05b1d1d3bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/36b7b96dba933dc7ff56151b33a626d2445e4584e49a18025c5c9900ba1eb147.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f841637-edb2-1207-ace2-2507b30f220e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5e440a7-2031-187a-c79a-766349ab02b9",
  "kind": "theorem",
  "lexical_name": "reciprocalWeight_integral",
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
  "slug": "reciprocalweight-integral--5052281991800585f315366c",
  "source": {
    "blob": "c945207b3057821a4c54fd95f31eef05b1d1d3bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 57,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant36b7b96dba933dc7ff56151b33a626d2445e4584e49a18025c5c9900ba1eb147.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5052281991800585f315366c1bfd19cdba5350209da3ad16b4e71f3d25e89aff",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant36b7b96dba933dc7ff56151b33a626d2445e4584e49a18025c5c9900ba1eb147.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5e440a7-2031-187a-c79a-766349ab02b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocalWeight_integral (a b : ℝ) (ha : 0 < a) (hab : a ≤ b) :
    (∫ x in Ioc a b, 1/(x*Real.sqrt x)) = 2*(1/Real.sqrt a-1/Real.sqrt b) := by
  have hc : ContinuousOn (fun x : ℝ ↦ 1/(x*Real.sqrt x)) (Ioi 0) := by
    apply continuousOn_const.div (continuousOn_id.mul Real.continuous_sqrt.continuousOn)
    intro x hx
    exact (mul_pos hx (Real.sqrt_pos.2 hx)).ne'
  have hi : IntegrableOn (fun x : ℝ ↦ 1/(x*Real.sqrt x)) (Icc a b) :=
    (hc.mono (fun x hx ↦ ha.trans_le hx.1)).integrableOn_Icc
  have hs := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x hx ↦ invSqrtPrimitive_hasDerivAt x (ha.trans_le ((uIcc_of_le hab) ▸ hx).1))
    ((intervalIntegrable_iff_integrableOn_Icc_of_le hab).2 hi)
  rw [intervalIntegral.integral_of_le hab] at hs
  exact hs.trans (by ring)

/-- Pure source variation bound supplied by a proved regularity witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant36b7b96dba933dc7ff56151b33a626d2445e4584e49a18025c5c9900ba1eb147.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant36b7b96dba933dc7ff56151b33a626d2445e4584e49a18025c5c9900ba1eb147.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c945207b3057821a4c54fd95f31eef05b1d1d3bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
