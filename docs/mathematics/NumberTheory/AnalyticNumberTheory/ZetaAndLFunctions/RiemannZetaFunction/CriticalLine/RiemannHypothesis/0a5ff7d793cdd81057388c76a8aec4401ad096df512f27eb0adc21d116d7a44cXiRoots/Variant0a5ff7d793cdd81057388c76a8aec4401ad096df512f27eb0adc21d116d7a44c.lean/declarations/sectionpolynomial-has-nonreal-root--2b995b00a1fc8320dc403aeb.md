# sectionPolynomial_has_nonreal_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "487c61fb096dea28af396fec804ac2d0ed675b8b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb7f3f05-8909-cd74-2d11-91a94370c1a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e458c4df-f521-70f4-faa4-59751d6be238",
  "kind": "theorem",
  "lexical_name": "sectionPolynomial_has_nonreal_root",
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
  "slug": "sectionpolynomial-has-nonreal-root--2b995b00a1fc8320dc403aeb",
  "source": {
    "blob": "487c61fb096dea28af396fec804ac2d0ed675b8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44cXiRoots/Variant0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b995b00a1fc8320dc403aeb6bf6c5269b68a0eac0f8c7bee5a1b493c6047fdd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44cXiRoots/Variant0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e458c4df-f521-70f4-faa4-59751d6be238`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sectionPolynomial_has_nonreal_root (n : ℕ) (hn : 2 ≤ n) :
    ∃ w ∈ (sectionPolynomial (n + 2)).roots, w.im ≠ 0 := by
  by_contra! h
  exact (sectionPolynomial_roots_square_sum_re_neg n hn).not_ge
    (roots_square_sum_re_nonneg _ h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44cXiRoots/Variant0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44cXiRoots/Variant0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44c.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `487c61fb096dea28af396fec804ac2d0ed675b8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
