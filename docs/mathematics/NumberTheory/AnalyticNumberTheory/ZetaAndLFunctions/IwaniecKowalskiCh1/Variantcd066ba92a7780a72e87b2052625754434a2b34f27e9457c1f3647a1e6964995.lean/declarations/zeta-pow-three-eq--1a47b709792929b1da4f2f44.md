# zeta_pow_three_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b365865c3c2c3a2b16519910930a7370ed08f5fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 697,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1fb30e6f-00b5-2cb0-bcb8-1445700e5d22",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3bbfb9d2-0a23-8736-63ea-26704a5f5dea",
  "kind": "lemma",
  "lexical_name": "zeta_pow_three_eq",
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
  "slug": "zeta-pow-three-eq--1a47b709792929b1da4f2f44",
  "source": {
    "blob": "b365865c3c2c3a2b16519910930a7370ed08f5fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 716,
    "line": 697,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantcd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a47b709792929b1da4f2f44af8faeec570afca653bbbcb801d78ea93c01a8fd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantcd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bbfb9d2-0a23-8736-63ea-26704a5f5dea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 697–716.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zeta_pow_three_eq (s : ℂ) (hs : 1 < s.re) :
    riemannZeta s ^ 3 = riemannZeta (2 * s) * LSeries (fun n ↦ τ (n ^ 2)) s := by
  apply mul_left_cancel₀ (riemannZeta_ne_zero_of_one_lt_re hs)
  linear_combination (zeta_pow_four_eq s hs) - riemannZeta (2 * s) * (zeta_mul_tau_square_eq s hs)

/--
Zeta cubed alt:
`ζ(s)^3 =  ∑_n (∑ d^2 m = n, τ (m^2)) n^(-s)`. -/
@[blueprint
  "zeta_pow_three_eq_alt"
  (title := "zeta pow three eq alt")
  (statement := /-- symmetric square $L$-function for $\zeta^2$:
  $$\zeta(s)^3 = \sum_{n=1}^{\infty} \left( \sum_{d^2 m = n} \tau(m^2) \right) n^{-s}.$$
  \begin{verbatim}
  Alternative expression for `ζ^3`, in IK between (1.30) and (1.31).
  \end{verbatim}
  -/)
  (proof := /--
  This is an alternative expression for $\zeta(s)^3$ that can be derived from the previous results. By expressing $\zeta(s)^3$ in terms of the L-series of $\tau(n^2)$ and using the properties of Dirichlet convolutions, we can rewrite the sum in a way that involves summing over divisors $d$ and corresponding $m$ such that $d^2 m = n$. This rearrangement of the series allows us to express $\zeta(s)^3$ in the desired form.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantcd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantcd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean#L697).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b365865c3c2c3a2b16519910930a7370ed08f5fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
