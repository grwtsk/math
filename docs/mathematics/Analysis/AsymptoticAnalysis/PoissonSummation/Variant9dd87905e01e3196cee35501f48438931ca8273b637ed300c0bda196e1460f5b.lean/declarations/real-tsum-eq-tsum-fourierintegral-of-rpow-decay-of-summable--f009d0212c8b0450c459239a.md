# Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay_of_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e8093ce-46fc-e7f9-5118-6587c1196302",
  "kind": "theorem",
  "lexical_name": "Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay_of_summable",
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
  "slug": "real-tsum-eq-tsum-fourierintegral-of-rpow-decay-of-summable--f009d0212c8b0450c459239a",
  "source": {
    "blob": "8181ba79b818c7c1f68d9f16495945a97778fbec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 235,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant9dd87905e01e3196cee35501f48438931ca8273b637ed300c0bda196e1460f5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f009d0212c8b0450c459239ac713c9c1f54344180b93141de5f67620a1fe018e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variant9dd87905e01e3196cee35501f48438931ca8273b637ed300c0bda196e1460f5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e8093ce-46fc-e7f9-5118-6587c1196302`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay_of_summable {f : ℝ → ℂ} (hc : Continuous f)
    {b : ℝ} (hb : 1 < b) (hf : IsBigO (cocompact ℝ) f fun x : ℝ => |x| ^ (-b))
    (hFf : Summable fun n : ℤ => 𝓕 f n) : ∑' n : ℤ, f n = (∑' n : ℤ, 𝓕 f n) :=
  Real.tsum_eq_tsum_fourierIntegral
    (fun K =>
      summable_of_isBigO (Real.summable_abs_int_rpow hb)
        ((isBigO_norm_restrict_cocompact (ContinuousMap.mk _ hc) (zero_lt_one.trans hb) hf
              K).comp_tendsto
          Int.tendsto_coe_cofinite))
    hFf
#align real.tsum_eq_tsum_fourier_integral_of_rpow_decay_of_summable Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay_of_summable

/-- **Poisson's summation formula**, assuming that both `f` and its Fourier transform decay as
`|x| ^ (-b)` for some `1 < b`. (This is the one-dimensional case of Corollary VII.2.6 of Stein and
Weiss, *Introduction to Fourier analysis on Euclidean spaces*.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variant9dd87905e01e3196cee35501f48438931ca8273b637ed300c0bda196e1460f5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant9dd87905e01e3196cee35501f48438931ca8273b637ed300c0bda196e1460f5b.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8181ba79b818c7c1f68d9f16495945a97778fbec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
