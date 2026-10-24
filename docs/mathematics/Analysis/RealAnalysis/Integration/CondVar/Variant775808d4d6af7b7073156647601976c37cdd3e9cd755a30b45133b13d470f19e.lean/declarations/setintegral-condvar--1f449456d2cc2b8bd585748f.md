# setIntegral_condVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3f3a2b06e8f7e1b3b4026499c31386f3600dbd7d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62d73c8e-db69-5bf5-cbc2-6de3b623e098",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8353194e-c175-9a3b-e5bd-7595c511bb85",
  "kind": "lemma",
  "lexical_name": "setIntegral_condVar",
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
  "slug": "setintegral-condvar--1f449456d2cc2b8bd585748f",
  "source": {
    "blob": "3f3a2b06e8f7e1b3b4026499c31386f3600dbd7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f449456d2cc2b8bd585748fa31ef7d75ee0d639064457e8fa0b48daecb44fa8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8353194e-c175-9a3b-e5bd-7595c511bb85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setIntegral_condVar [SigmaFinite (μ.trim hm)] (hX : Integrable ((X - μ[X | m]) ^ 2) μ)
    (hs : MeasurableSet[m] s) :
    ∫ ω in s, (Var[X; μ | m]) ω ∂μ = ∫ ω in s, (X ω - (μ[X | m]) ω) ^ 2 ∂μ :=
  setIntegral_condExp _ hX hs

-- `(· ^ 2)` is a postfix operator called `_sq` in lemma names, but
-- `condVar_ae_eq_condExp_sq_sub_condExp_sq` is a bit ridiculous, so we exceptionally denote it by
-- `sq_` as it were a prefix.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondVar/Variant775808d4d6af7b7073156647601976c37cdd3e9cd755a30b45133b13d470f19e.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f3a2b06e8f7e1b3b4026499c31386f3600dbd7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
