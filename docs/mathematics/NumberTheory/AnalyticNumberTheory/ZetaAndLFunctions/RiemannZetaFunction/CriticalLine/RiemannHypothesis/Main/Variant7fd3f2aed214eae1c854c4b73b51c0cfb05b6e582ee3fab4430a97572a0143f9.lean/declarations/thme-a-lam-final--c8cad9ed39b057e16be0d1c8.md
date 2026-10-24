# thmE_A_lam_final

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "04b1fb17f416b15ab6948debfd8585a9821e2d24",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7fd3f2aed214eae1c854c4b73b51c0cfb05b6e582ee3fab4430a97572a0143f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9db4dda1-6771-7d71-a58f-662ad70e43e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1927fbb8-b317-84c6-12f9-e96f1bd5884f",
  "kind": "theorem",
  "lexical_name": "thmE_A_lam_final",
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
  "slug": "thme-a-lam-final--c8cad9ed39b057e16be0d1c8",
  "source": {
    "blob": "04b1fb17f416b15ab6948debfd8585a9821e2d24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 201,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant7fd3f2aed214eae1c854c4b73b51c0cfb05b6e582ee3fab4430a97572a0143f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8cad9ed39b057e16be0d1c84d3f49a4afac3737c0e41621a06f52736f582530",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant7fd3f2aed214eae1c854c4b73b51c0cfb05b6e582ee3fab4430a97572a0143f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1927fbb8-b317-84c6-12f9-e96f1bd5884f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thmE_A_lam_final (hq : 1 < q) (hprim : χ.IsPrimitive)
    {ϱ : ℝ → ℝ} (hϱ : TaperProfile ϱ) {lam : ℝ} (h0 : 0 < lam) (h1 : lam < 1)
    (hEF : ExplicitFormulaPaperChi (parity χ) q (coeff χ) (LZeros (LSeam_of hq hprim)))
    (hRvM : RiemannVonMangoldtChi q (LZeros (LSeam_of hq hprim)))
    (hTr : ThmTracesHypChi (paramsOf ϱ lam) (parity χ) q (coeff χ) (LZeros (LSeam_of hq hprim))) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (Hfun lam - ε) * (NcountL χ T (2 * T) : ℝ) ≤ N0starL χ T (2 * T) := by
  have hP := paramsOf_valid hϱ h0 h1.le
  exact thmE_A_lam_of_traces' hq hprim hϱ h0 h1 hRvM hTr
    (eventually_GzGpChi _ hP hEF)
    (Assembly.calE_tendsto_zero _ hP.lam_pos hP.lam_le_one (zero_le_one.trans hP.one_le_w))

/-- same, bound 2 (simple on-line). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant7fd3f2aed214eae1c854c4b73b51c0cfb05b6e582ee3fab4430a97572a0143f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant7fd3f2aed214eae1c854c4b73b51c0cfb05b6e582ee3fab4430a97572a0143f9.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04b1fb17f416b15ab6948debfd8585a9821e2d24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
