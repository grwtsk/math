# xiEF_flat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e7269ae-e6e7-2af1-1dfb-643abc612254",
  "kind": "theorem",
  "lexical_name": "xiEF_flat",
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
  "slug": "xief-flat--a9ccfe33d9e55da064c30e42",
  "source": {
    "blob": "78c32ce3fb65e3ec681a110d62a62c1070edd465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 104,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantfba573add52626ba19d0051bb0507f6a523df653dba30354a551e6280adf9f19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9ccfe33d9e55da064c30e42cd8b3198ba19bc882171be12e5741876346b0105",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantfba573add52626ba19d0051bb0507f6a523df653dba30354a551e6280adf9f19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e7269ae-e6e7-2af1-1dfb-643abc612254`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xiEF_flat {ϱ : ℝ → ℝ} (hϱ : TaperProfile ϱ) {lam : ℝ} (h0 : 0 < lam) (h1 : lam < 1) :
    XiEF xiDerivZeros₀ (fun _ => paramsOf ϱ lam) :=
  xiEF_xiDerivZeros _ _ (familyHyps_flat (paramsOf_valid hϱ h0 h1.le) h1)

section Flat

variable {ϱ : ℝ → ℝ} (hϱ : TaperProfile ϱ)

include hϱ in
/-- **[XF′ Thm 8.2] — ξ′, flat window, dyadic heights, certified ε-free decimals.**
There is T₀ such that for every T ≥ T₀:
  0.85838 · N_{ξ′}(T,2T) ≤ N⁰ˢ_{ξ′}(T,2T)  — at least 85.838 % of the zeros ρ₁ of ξ′ with T < Im ρ₁ ≤ 2T,
      counted with multiplicity and with no condition on Re ρ₁, are simple and satisfy Re ρ₁ = 1/2;
  0.92919 · N_{ξ′}(T,2T) ≤ N_{d,ξ′}(T,2T) — at least 92.919 % of them are distinct.
No hypotheses beyond "ϱ is a C³ taper profile" (the test-function family's shape parameter; the conclusion does not
mention ϱ).  See xiDeriv_simple_on_line / _flat_std below for binder-free instances. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantfba573add52626ba19d0051bb0507f6a523df653dba30354a551e6280adf9f19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantfba573add52626ba19d0051bb0507f6a523df653dba30354a551e6280adf9f19.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78c32ce3fb65e3ec681a110d62a62c1070edd465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
