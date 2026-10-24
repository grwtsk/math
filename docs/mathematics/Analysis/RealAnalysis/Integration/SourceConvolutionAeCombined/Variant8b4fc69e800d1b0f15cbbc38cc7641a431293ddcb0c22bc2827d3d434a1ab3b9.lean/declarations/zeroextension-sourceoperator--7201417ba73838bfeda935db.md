# zeroExtension_sourceOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32642bcc-a132-a6a2-a55c-ba4a9870b1d9",
  "kind": "theorem",
  "lexical_name": "zeroExtension_sourceOperator",
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
  "slug": "zeroextension-sourceoperator--7201417ba73838bfeda935db",
  "source": {
    "blob": "51486d0525e45d9cee708006d090b5b2cb14193d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 479,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant8b4fc69e800d1b0f15cbbc38cc7641a431293ddcb0c22bc2827d3d434a1ab3b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7201417ba73838bfeda935dbadcc2cee75190d8ffb411bab9b2d40948bf42f2c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant8b4fc69e800d1b0f15cbbc38cc7641a431293ddcb0c22bc2827d3d434a1ab3b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32642bcc-a132-a6a2-a55c-ba4a9870b1d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeroExtension_sourceOperator (f : H) :
    zeroExtension (sourceOperator f) = actualFull (zeroExtension f) := by
  have hR : sourceOperator f =ᵐ[volume.restrict (Ioi (0 : ℝ))]
      actualFull (zeroExtension f) := restriction_ae (actualFull (zeroExtension f))
  have hI := (ae_eq_restrict_iff_indicator_ae_eq measurableSet_Ioi).mp hR
  have hzero : actualFull (zeroExtension f) =ᵐ[volume.restrict (Ioi (0 : ℝ))ᶜ] 0 := by
    simpa only [compl_Ioi, Pi.zero_def] using full_sourceOperator_causal f
  apply Lp.ext
  exact Filter.EventuallyEq.trans (zeroExtension_ae (sourceOperator f))
    (hI.trans (indicator_ae_eq_of_restrict_compl_ae_eq_zero measurableSet_Ioi hzero))

end
end SourceConvolutionAEScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant8b4fc69e800d1b0f15cbbc38cc7641a431293ddcb0c22bc2827d3d434a1ab3b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant8b4fc69e800d1b0f15cbbc38cc7641a431293ddcb0c22bc2827d3d434a1ab3b9.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51486d0525e45d9cee708006d090b5b2cb14193d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
