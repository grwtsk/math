# cauchySeq_Lp_iff_cauchySeq_eLpNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5158bee8-cd5c-d9f6-2cf3-cc1bf70a172d",
  "kind": "theorem",
  "lexical_name": "cauchySeq_Lp_iff_cauchySeq_eLpNorm",
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
  "slug": "cauchyseq-lp-iff-cauchyseq-elpnorm--be9f2435899523154ab8b0f9",
  "source": {
    "blob": "79cc2c523cfab60ab98b85956c422f658b0883de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 144,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be9f2435899523154ab8b0f96e0f101cd43428c1dc3f282877c2bed186b2cf7e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5158bee8-cd5c-d9f6-2cf3-cc1bf70a172d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchySeq_Lp_iff_cauchySeq_eLpNorm {ι} [Nonempty ι] [SemilatticeSup ι] [hp : Fact (1 ≤ p)]
    (f : ι → Lp E p μ) :
    CauchySeq f ↔ Tendsto (fun n : ι × ι => eLpNorm (⇑(f n.fst) - ⇑(f n.snd)) p μ) atTop (𝓝 0) := by
  simp_rw [cauchySeq_iff_tendsto_dist_atTop_0, dist_def]
  rw [← ENNReal.toReal_zero, ENNReal.tendsto_toReal_iff (fun n => ?_) ENNReal.zero_ne_top]
  rw [eLpNorm_congr_ae (Lp.coeFn_sub _ _).symm]
  exact eLpNorm_ne_top _

@[deprecated (since := "2025-02-21")]
alias cauchySeq_Lp_iff_cauchySeq_ℒp := cauchySeq_Lp_iff_cauchySeq_eLpNorm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Complete/Variantbcc7da4a0b7a95edb991f6134e871ba197ef7cf2da28e11ab2db1f2a593c2c3f.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79cc2c523cfab60ab98b85956c422f658b0883de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
