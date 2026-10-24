# coeFn_negPart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c25c3921c0edef4a0a45b185dee06bb379f33821",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 878,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23b9ecb4eac45165b2821c52c3eabe79fcc64b65ac9da8de246c23a57db2cc84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a461488d-09f4-ac51-5371-8569b902d50b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0701fb51-3144-80c3-d13e-50e61ea4d9f5",
  "kind": "theorem",
  "lexical_name": "coeFn_negPart",
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
  "slug": "coefn-negpart--fcc19e4f0de662890b39e9bd",
  "source": {
    "blob": "c25c3921c0edef4a0a45b185dee06bb379f33821",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 880,
    "line": 878,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant23b9ecb4eac45165b2821c52c3eabe79fcc64b65ac9da8de246c23a57db2cc84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcc19e4f0de662890b39e9bd5c4bcf094e717975cc7d8428f2ec283bae1c5da0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant23b9ecb4eac45165b2821c52c3eabe79fcc64b65ac9da8de246c23a57db2cc84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0701fb51-3144-80c3-d13e-50e61ea4d9f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 878–880.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeFn_negPart (f : Lp ℝ p μ) : ∀ᵐ a ∂μ, negPart f a = -min (f a) 0 :=
  (coeFn_negPart_eq_max f).mono fun a h => by rw [h, ← max_neg_neg, neg_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant23b9ecb4eac45165b2821c52c3eabe79fcc64b65ac9da8de246c23a57db2cc84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant23b9ecb4eac45165b2821c52c3eabe79fcc64b65ac9da8de246c23a57db2cc84.lean#L878).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c25c3921c0edef4a0a45b185dee06bb379f33821` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
