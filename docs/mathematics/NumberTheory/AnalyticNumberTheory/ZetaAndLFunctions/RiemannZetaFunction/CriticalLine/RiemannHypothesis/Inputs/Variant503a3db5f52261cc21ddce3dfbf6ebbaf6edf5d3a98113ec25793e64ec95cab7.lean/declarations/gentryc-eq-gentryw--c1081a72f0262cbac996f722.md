# GentryC_eq_GentryW

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ccd29e1f0da1d7dd9b903e981b7bd614578b74a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/503a3db5f52261cc21ddce3dfbf6ebbaf6edf5d3a98113ec25793e64ec95cab7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4121f54-80de-40cc-c315-ad1de9456f52",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c3f6df3-f6ca-edb4-6b79-b10688f701c0",
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
  "slug": "gentryc-eq-gentryw--c1081a72f0262cbac996f722",
  "source": {
    "blob": "9ccd29e1f0da1d7dd9b903e981b7bd614578b74a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant503a3db5f52261cc21ddce3dfbf6ebbaf6edf5d3a98113ec25793e64ec95cab7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1081a72f0262cbac996f722dfb779d8f9306743dda5dbeb21f4cdfc7456135e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant503a3db5f52261cc21ddce3dfbf6ebbaf6edf5d3a98113ec25793e64ec95cab7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c3f6df3-f6ca-edb4-6b79-b10688f701c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–55.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant503a3db5f52261cc21ddce3dfbf6ebbaf6edf5d3a98113ec25793e64ec95cab7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant503a3db5f52261cc21ddce3dfbf6ebbaf6edf5d3a98113ec25793e64ec95cab7.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ccd29e1f0da1d7dd9b903e981b7bd614578b74a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
