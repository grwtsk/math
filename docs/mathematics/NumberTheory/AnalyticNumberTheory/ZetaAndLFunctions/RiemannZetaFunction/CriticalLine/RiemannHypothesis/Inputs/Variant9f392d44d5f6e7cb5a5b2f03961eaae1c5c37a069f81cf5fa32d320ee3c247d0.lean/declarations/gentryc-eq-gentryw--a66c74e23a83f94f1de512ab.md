# GentryC_eq_GentryW

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6826896f-d2ec-64f9-91a8-0a80557c36f9",
  "kind": "lemma",
  "lexical_name": "GentryC_eq_GentryW",
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
  "slug": "gentryc-eq-gentryw--a66c74e23a83f94f1de512ab",
  "source": {
    "blob": "8b65cddb229f721bfeeb2eb721a35e01eaf4dca6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant9f392d44d5f6e7cb5a5b2f03961eaae1c5c37a069f81cf5fa32d320ee3c247d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a66c74e23a83f94f1de512ab80bdff28811b3bbf9815d1f6bd5c1750bffae4d3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant9f392d44d5f6e7cb5a5b2f03961eaae1c5c37a069f81cf5fa32d320ee3c247d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6826896f-d2ec-64f9-91a8-0a80557c36f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma GentryC_eq_GentryW (c : ℕ → ℂ) (k l : ℤ) :
    P.GentryC T c k l = XiPrime.GentryW 1 c (P.toSetting T) (P.localFun T) k l := rfl

end Params

namespace XiPrime
open PrimeSide

/-- **The re-expansion input** [XF′ §6], for
F = xiCoeffFamily with e T r N = e_r(N) = Σ_{j<Ω(N)} binom(−(j+1), r) L_T^{−(j+1)−r} [(Λ·log)∗Λ^{∗j}](N)
(supplied by theorem xiReexpansion).
Constants are T-uniform; the δ-range [0, 1/2] ⊇ [0, ½ log 2] ∋ δ_{kl}; sums over N ∈ Finset.Ioc 0 ⌊x⌋₊
(tree convention) for 2 ≤ x ≤ e^{l(T)} ⊇ the only point used downstream, x = X = e^{λl}.
BASE POINT: the expansion is about L_T = ½l + iπ/4 (XiPrime.LT), the ξ′ base —
so this is the right sentence for F = xiCoeffFamily (F.c T N = xiCoeff (LT T) N by rfl) and for nothing else; the
Z′ analogue (real base ½l, Defs.L2star) needs its own structure/consumer (the Z′ Gp1 differs too).  One should not
read 0 ≤ A into this structure: it is derivable from H3 but not carried. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant9f392d44d5f6e7cb5a5b2f03961eaae1c5c37a069f81cf5fa32d320ee3c247d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant9f392d44d5f6e7cb5a5b2f03961eaae1c5c37a069f81cf5fa32d320ee3c247d0.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b65cddb229f721bfeeb2eb721a35e01eaf4dca6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
