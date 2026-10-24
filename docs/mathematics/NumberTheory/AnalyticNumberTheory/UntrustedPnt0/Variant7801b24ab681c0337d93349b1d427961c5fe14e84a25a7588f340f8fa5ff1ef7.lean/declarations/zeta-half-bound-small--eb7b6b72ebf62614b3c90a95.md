# zeta_half_bound_small

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88ec7161-b74e-0966-52a0-b238281481ad",
  "kind": "theorem",
  "lexical_name": "zeta_half_bound_small",
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
  "slug": "zeta-half-bound-small--eb7b6b72ebf62614b3c90a95",
  "source": {
    "blob": "04dd9185ccbc06b581c8737da51066f96c86705c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1669,
    "line": 1651,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant7801b24ab681c0337d93349b1d427961c5fe14e84a25a7588f340f8fa5ff1ef7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb7b6b72ebf62614b3c90a957488b15cd16de50662ea620a920c7ef1ce43dff7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant7801b24ab681c0337d93349b1d427961c5fe14e84a25a7588f340f8fa5ff1ef7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88ec7161-b74e-0966-52a0-b238281481ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1651–1669.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_half_bound_small : ∀ t : ℝ, 0 ≤ t → t ≤ exp 1 →
    ‖riemannZeta ((1/2 : ℂ) + t * Complex.I)‖ ≤ 2.657 := by
  sorry

@[blueprint
  "art06-cheng-graham-zeta-half-large"
  (title := "Cheng--Graham 2004 bound on \\(|\\zeta(1/2 + it)|\\), large \\(t\\)")
  (statement := /-- For $t \geq e$,
    $|\zeta(1/2 + it)| \leq 3\, t^{1/6}\, \log t$.
    \textbf{Caveat.} This large-$t$ corollary of \cite{ChengGraham2004} relies on
    their Kusmin--Landau lemmas.  The same $1/\pi$ versus $2/\pi$ error that
    forced replacing Hiary's constant $0.63$ by $0.77$\,/\,$0.618$
    (cf.\ \cite{HiaryPatelYang2022}, and the annotation on the Hiary--Patel--Yang
    half-plane bound above) affects this estimate; the published constant $3$
    should be treated as provisional until a corrected derivation is recorded.
  -/)
  (proof := /-- See \cite{ChengGraham2004}; treat the constant as provisional pending
    the Kusmin--Landau correction discussed in \cite{HiaryPatelYang2022}. -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant7801b24ab681c0337d93349b1d427961c5fe14e84a25a7588f340f8fa5ff1ef7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant7801b24ab681c0337d93349b1d427961c5fe14e84a25a7588f340f8fa5ff1ef7.lean#L1651).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04dd9185ccbc06b581c8737da51066f96c86705c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
