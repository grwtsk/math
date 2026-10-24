# integral_map_cast_poissonMeasure'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0c85e101a7ed87f0db7dd9138ac26966ba93d1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b84baf35-4328-021f-38cb-2564b461799b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fed9cae-45d9-ea76-55d8-bc2e3bc0fcbc",
  "kind": "lemma",
  "lexical_name": "integral_map_cast_poissonMeasure'",
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
  "slug": "integral-map-cast-poissonmeasure--c0c030fcedcfbf831356a885",
  "source": {
    "blob": "c0c85e101a7ed87f0db7dd9138ac26966ba93d1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0c030fcedcfbf831356a885820a5f96c1bcf3787122f3ea11abb8f2724616c8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fed9cae-45d9-ea76-55d8-bc2e3bc0fcbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_map_cast_poissonMeasure' [CompleteSpace E] [Countable R] [MeasurableSingletonClass R]
    {r : ℝ≥0} {f : R → E} (hf : Integrable f Po(R, r)) :
    ∫ x, f x ∂Po(R, r) = ∑' n, (exp (-r) * r ^ n / (n)!) • f n := by
  rw [integral_map .of_discrete .of_discrete]
  rw [integrable_map_cast_poissonMeasure_iff] at hf
  exact integral_poissonMeasure' hf

/-- The integral of a function taking values in a finite-dimensional space
against `poissonMeasure r` is given by its sum weighted by `exp (-r) * r ^ n / n!`. This version
does not require integrability, as the integral exists if and only if the sum exists, and otherwise
they are both defined to be zero.

See `integral_poissonMeasure'` with a general codomain which assumes integrability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0c85e101a7ed87f0db7dd9138ac26966ba93d1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
