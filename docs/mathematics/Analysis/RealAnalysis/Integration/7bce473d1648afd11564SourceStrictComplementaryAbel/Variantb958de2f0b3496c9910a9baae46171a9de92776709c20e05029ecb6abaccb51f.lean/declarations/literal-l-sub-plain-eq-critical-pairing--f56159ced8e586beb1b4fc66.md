# literal_L_sub_plain_eq_critical_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9420c0c7-8108-b1e0-14e2-4ee87330bee0",
  "kind": "theorem",
  "lexical_name": "literal_L_sub_plain_eq_critical_pairing",
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
  "slug": "literal-l-sub-plain-eq-critical-pairing--f56159ced8e586beb1b4fc66",
  "source": {
    "blob": "957b2c2af82d0fc2b342824ac33003ecadd4612d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 248,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb958de2f0b3496c9910a9baae46171a9de92776709c20e05029ecb6abaccb51f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f56159ced8e586beb1b4fc66441b5fddf38e7f1eb551b188ee1fa98bf1e038a2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb958de2f0b3496c9910a9baae46171a9de92776709c20e05029ecb6abaccb51f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9420c0c7-8108-b1e0-14e2-4ee87330bee0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_L_sub_plain_eq_critical_pairing {A : ℝ} (hA : 1 ≤ A) :
    literalOmegaComplementarySector A - plainInventory A =
      ∫ t in Ioi (0 : ℝ), complementaryCriticalKernel A t := by
  rw [literal_L_sub_plain_eq_full_Abel hA]
  have he := integral_comp_exp_Ioi (fun x =>
    complementaryCumulative (vaughanCutoff A) x * deriv (plainProfile A 1) x) 0
  simp only [Real.exp_zero] at he
  rw [← he]
  have hn : (∫ t in Ioi (0 : ℝ), Real.exp t •
      (complementaryCumulative (vaughanCutoff A) (Real.exp t) *
        deriv (plainProfile A 1) (Real.exp t))) =
      ∫ t in Ioi (0 : ℝ), -complementaryCriticalKernel A t :=
    setIntegral_congr_fun measurableSet_Ioi (fun t _ => complementary_log_kernel_eq hA t)
  rw [hn, integral_neg, neg_neg]

end
end FormalResearch.RiemannHypothesis.SourceStrictComplementaryAbel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb958de2f0b3496c9910a9baae46171a9de92776709c20e05029ecb6abaccb51f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb958de2f0b3496c9910a9baae46171a9de92776709c20e05029ecb6abaccb51f.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `957b2c2af82d0fc2b342824ac33003ecadd4612d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
