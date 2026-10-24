# integral_indicator_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2f23b4ffdeaafa6c1e4faf7407788f785400da8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 535,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f72e6c2a2ab3173fe6c51896535196ce5df3ab93bccb9c2237e84fd850108ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c044119-3f77-4b6d-21ac-91468d05c95d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e9f88fc-3f8a-62a5-0110-002424b5c4e1",
  "kind": "theorem",
  "lexical_name": "integral_indicator_one",
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
  "slug": "integral-indicator-one--f799a20d5ade4e6618c0adca",
  "source": {
    "blob": "c2f23b4ffdeaafa6c1e4faf7407788f785400da8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 538,
    "line": 535,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Set/Variant6f72e6c2a2ab3173fe6c51896535196ce5df3ab93bccb9c2237e84fd850108ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f799a20d5ade4e6618c0adcaae32bc0c9e10f10fcba8c529b651976b0918b153",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Set/Variant6f72e6c2a2ab3173fe6c51896535196ce5df3ab93bccb9c2237e84fd850108ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e9f88fc-3f8a-62a5-0110-002424b5c4e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_indicator_one ⦃s : Set X⦄ (hs : MeasurableSet s) :
    ∫ x, s.indicator 1 x ∂μ = μ.real s :=
  (integral_indicator_const 1 hs).trans ((smul_eq_mul ..).trans (mul_one _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Set/Variant6f72e6c2a2ab3173fe6c51896535196ce5df3ab93bccb9c2237e84fd850108ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Set/Variant6f72e6c2a2ab3173fe6c51896535196ce5df3ab93bccb9c2237e84fd850108ea.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2f23b4ffdeaafa6c1e4faf7407788f785400da8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
