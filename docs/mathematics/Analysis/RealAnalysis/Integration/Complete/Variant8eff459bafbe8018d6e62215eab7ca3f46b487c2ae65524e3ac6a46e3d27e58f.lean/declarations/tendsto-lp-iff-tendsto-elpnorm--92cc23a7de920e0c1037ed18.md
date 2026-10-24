# tendsto_Lp_iff_tendsto_eLpNorm''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "653ef99a7abe7c1c5ab822e6100c93216680624b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc59bca7-64bd-8f21-61c4-1376a4b8fc9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f3cb1bb6-9a27-77d1-4792-e6e383eb65c7",
  "kind": "theorem",
  "lexical_name": "tendsto_Lp_iff_tendsto_eLpNorm''",
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
  "slug": "tendsto-lp-iff-tendsto-elpnorm--92cc23a7de920e0c1037ed18",
  "source": {
    "blob": "653ef99a7abe7c1c5ab822e6100c93216680624b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 111,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92cc23a7de920e0c1037ed184f424d2bd832f07defb7055252d1423630a5bebf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3cb1bb6-9a27-77d1-4792-e6e383eb65c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_Lp_iff_tendsto_eLpNorm'' {ι} {fi : Filter ι} [Fact (1 ≤ p)] (f : ι → α → E)
    (f_ℒp : ∀ n, MemLp (f n) p μ) (f_lim : α → E) (f_lim_ℒp : MemLp f_lim p μ) :
    fi.Tendsto (fun n => (f_ℒp n).toLp (f n)) (𝓝 (f_lim_ℒp.toLp f_lim)) ↔
      fi.Tendsto (fun n => eLpNorm (f n - f_lim) p μ) (𝓝 0) := by
  rw [Lp.tendsto_Lp_iff_tendsto_eLpNorm' (fun n => (f_ℒp n).toLp (f n)) (f_lim_ℒp.toLp f_lim)]
  refine Filter.tendsto_congr fun n => ?_
  apply eLpNorm_congr_ae
  filter_upwards [((f_ℒp n).sub f_lim_ℒp).coeFn_toLp,
    Lp.coeFn_sub ((f_ℒp n).toLp (f n)) (f_lim_ℒp.toLp f_lim)] with _ hx₁ hx₂
  rw [← hx₂]
  exact hx₁

@[deprecated (since := "2025-02-21")]
alias tendsto_Lp_iff_tendsto_ℒp'' := tendsto_Lp_iff_tendsto_eLpNorm''


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `653ef99a7abe7c1c5ab822e6100c93216680624b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
