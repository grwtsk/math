# GpCW_two_sub_GpC_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "812c26bf4f3b41e667569f13aaee85f1df82df1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba3ab7f2-e610-a99e-5672-0b7cf50e6c05",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:544d846c-d775-7209-06ea-53436c25ee38",
  "kind": "lemma",
  "lexical_name": "GpCW_two_sub_GpC_apply",
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
  "slug": "gpcw-two-sub-gpc-apply--75f165ed9aa3bda9a07322bd",
  "source": {
    "blob": "812c26bf4f3b41e667569f13aaee85f1df82df1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 76,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75f165ed9aa3bda9a07322bd460aa12dc4a76dc38fa1e96872bcbaf1f0bcc9bb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:544d846c-d775-7209-06ea-53436c25ee38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma GpCW_two_sub_GpC_apply (P : Params) (T : ℝ) {cϱ : ℝ} (hΓ : GammaFacts)
    (hF : LocalHypsCore cϱ (P.toSetting T) (P.localFun T)) (hX : 0 < P.X T) (hT : 0 < T)
    (hh : 0 ≤ P.hgrid T) (c : ℕ → ℂ) (k l : Fin (P.d T)) :
    (P.GpCW T 2 c - P.GpC T c) k l
      = ((GentryNu (Zeta23.PiX (P.toSetting T).X) (P.toSetting T) (P.localFun T) k l : ℝ) : ℂ) := by
  have hk := tau_pos P T (k := k) hT hh
  have hl := tau_pos P T (k := l) hT hh
  rw [XiPrime.GpC_eq_GpCW, Matrix.sub_apply]
  simp only [Params.GpCW]
  rw [← Complex.ofReal_sub, Params.GentryCW_eq_GentryW, Params.GentryCW_eq_GentryW,
    Transfer.gentryW_weight_sub hΓ hF hX 2 1 c hk hl]
  norm_num

/-! ### The Π-part entries are uniformly small -/

section PiPart
variable {cϱ : ℝ} {p : Setting} {Fn : LocalFun}

/-- ∫ φ̂(τ−t)² |Π_X(τ)| dτ ≤ 6√X·2πaL/t + 12√X(8+2(cϱ/w)²)/t²  for t ≥ 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant301c96a78c3010ab86759740fe759b91d3632648a2b5f2eb2d429b095a8c74d1.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `812c26bf4f3b41e667569f13aaee85f1df82df1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
