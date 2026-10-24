# thmE_C_mult_lam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5cd648bfc6d095b350048a2f9aadaad3219b6219",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 310,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2f75e48a77ccfa01d0d5ae5527dea85fa9f923ee5b1b7874219b2a49c2c624e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bbe78d9f-85c8-8c83-acc0-9afb74de464a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6eac31cf-1905-ea4b-fa0e-42fc635ac812",
  "kind": "theorem",
  "lexical_name": "thmE_C_mult_lam",
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
  "slug": "thme-c-mult-lam--cd43240fd72db93369d69203",
  "source": {
    "blob": "5cd648bfc6d095b350048a2f9aadaad3219b6219",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 310,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variantb2f75e48a77ccfa01d0d5ae5527dea85fa9f923ee5b1b7874219b2a49c2c624e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd43240fd72db93369d692039ac0855e4da3333cd830f07aae175bea31e82aa3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variantb2f75e48a77ccfa01d0d5ae5527dea85fa9f923ee5b1b7874219b2a49c2c624e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6eac31cf-1905-ea4b-fa0e-42fc635ac812`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thmE_C_mult_lam (hq : 1 < q) (hprim : χ.IsPrimitive) {lam : ℝ} (h0 : 0 < lam)
    (h1 : lam < 1) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (Gfun lam - ε) * (NcountL χ T (2 * T) : ℝ) ≤ NdistL χ T (2 * T) := by
  have hP := paramsOf_valid taperProfile_stdProfile h0 h1.le
  have H := paperInputsChi_L hq hprim
  have hTr := thm_traces_chi hP (by omega) (coeffUnimodular_of_primitive hq hprim) H
    (PrimeSide.localHypsEventually hP)
  have hGzGp := eventually_GzGpChi _ hP H.EF
  simpa [paramsOf] using thmCmult_chi_abstract (LZeros (LSeam_of hq hprim)) (parity χ) (by omega) (coeff χ)
    H.RvM (paramsOf stdProfile lam) hP h1 hTr hGzGp

/-- **At least 2/3 of the zeros of L(s,χ) are SIMPLE AND ON THE CRITICAL LINE, UNCONDITIONAL**
(every primitive χ mod q > 1; as stated in [thm:E]). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variantb2f75e48a77ccfa01d0d5ae5527dea85fa9f923ee5b1b7874219b2a49c2c624e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variantb2f75e48a77ccfa01d0d5ae5527dea85fa9f923ee5b1b7874219b2a49c2c624e.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cd648bfc6d095b350048a2f9aadaad3219b6219` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
