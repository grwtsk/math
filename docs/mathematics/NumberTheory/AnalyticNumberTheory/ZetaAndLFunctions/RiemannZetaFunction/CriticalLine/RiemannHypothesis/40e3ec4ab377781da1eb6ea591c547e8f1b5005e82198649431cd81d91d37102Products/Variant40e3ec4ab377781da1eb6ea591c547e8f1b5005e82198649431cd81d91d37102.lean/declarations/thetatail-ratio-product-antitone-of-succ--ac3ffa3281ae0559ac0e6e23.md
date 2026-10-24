# thetaTail_ratio_product_antitone_of_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f38819ed11707cfab7a921b1db712ff7a26ea95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba684057-997d-1379-065e-259623f6c8da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e77e79fd-d268-4586-4256-6c967a3cb6c1",
  "kind": "theorem",
  "lexical_name": "thetaTail_ratio_product_antitone_of_succ",
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
  "slug": "thetatail-ratio-product-antitone-of-succ--ac3ffa3281ae0559ac0e6e23",
  "source": {
    "blob": "6f38819ed11707cfab7a921b1db712ff7a26ea95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102Products/Variant40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac3ffa3281ae0559ac0e6e2308587b40c2a0baf8ed711de50116f752e5d73139",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102Products/Variant40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e77e79fd-d268-4586-4256-6c967a3cb6c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTail_ratio_product_antitone_of_succ (r s : ℕ) :
    AntitoneOn (fun t : ℝ =>
      ∏ j ∈ Finset.Ico r s, thetaTail (j + 1) t / thetaTail j t) (Ici 0) := by
  exact AntitoneOn.finsetProd (fun j _ => hsucc j)
    (fun j _ t ht => div_nonneg (thetaTail_nonnegative (j + 1) ht)
      (thetaTail_nonnegative j ht))

/-- Conditional assembly of arbitrary order ratios from the consecutive order result. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102Products/Variant40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102Products/Variant40e3ec4ab377781da1eb6ea591c547e8f1b5005e82198649431cd81d91d37102.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f38819ed11707cfab7a921b1db712ff7a26ea95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
