# _root_.GRWTSK.Analysis.RealAnalysis.Integration.Lmarginal.Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.Measurable.lmarginal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:117fe0b1-d7f5-423a-204a-c716f710ced3",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.Integration.Lmarginal.Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.Measurable.lmarginal",
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
  "slug": "root-grwtsk-analysis-realanalysis-integration-lmarginal-variant49112b41e--6d171644fd939f4fd681baed",
  "source": {
    "blob": "861aa70fbfb0b2c6f4005a278ff14a91d6e94654",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d171644fd939f4fd681baedd8b60e082f44930ad140e661422fefb505cc6414",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:117fe0b1-d7f5-423a-204a-c716f710ced3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.RealAnalysis.Integration.Lmarginal.Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.Measurable.lmarginal [∀ i, SigmaFinite (μ i)] (hf : Measurable f) :
    Measurable (∫⋯∫⁻_s, f ∂μ) := by
  refine Measurable.lintegral_prod_right ?_
  refine hf.comp ?_
  rw [measurable_pi_iff]; intro i
  by_cases hi : i ∈ s
  · simpa [hi, updateFinset] using measurable_pi_iff.1 measurable_snd _
  · simpa [hi, updateFinset] using measurable_pi_iff.1 measurable_fst _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Marginal/Variant76c52ddfa370801e6bb6cb57e0bc2b0b6134ec2d3c53506f3b9e7912de5fecc8.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `861aa70fbfb0b2c6f4005a278ff14a91d6e94654` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
