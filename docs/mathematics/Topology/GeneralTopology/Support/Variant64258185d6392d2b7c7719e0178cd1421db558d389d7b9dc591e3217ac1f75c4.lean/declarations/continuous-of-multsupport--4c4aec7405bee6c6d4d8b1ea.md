# continuous_of_mulTSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4e215efd8fc8d81ecf98cdc1b7e091cfe9de8a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64258185d6392d2b7c7719e0178cd1421db558d389d7b9dc591e3217ac1f75c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:abbb9f0b-fa60-d6cb-8e0e-6eff878d4e5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af5165b7-5960-94e8-aba9-827bd0ef8a2e",
  "kind": "theorem",
  "lexical_name": "continuous_of_mulTSupport",
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
  "slug": "continuous-of-multsupport--4c4aec7405bee6c6d4d8b1ea",
  "source": {
    "blob": "d4e215efd8fc8d81ecf98cdc1b7e091cfe9de8a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 191,
    "path": "GRWTSK/Topology/GeneralTopology/Support/Variant64258185d6392d2b7c7719e0178cd1421db558d389d7b9dc591e3217ac1f75c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c4aec7405bee6c6d4d8b1ea1712cfdc350636673b68f3c5706f099218307a1d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Support/Variant64258185d6392d2b7c7719e0178cd1421db558d389d7b9dc591e3217ac1f75c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af5165b7-5960-94e8-aba9-827bd0ef8a2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_of_mulTSupport [TopologicalSpace β] {f : α → β}
    (hf : ∀ x ∈ mulTSupport f, ContinuousAt f x) : Continuous f :=
  continuous_iff_continuousAt.2 fun x => (em _).elim (hf x) fun hx =>
    (@continuousAt_const _ _ _ _ _ 1).congr (notMem_mulTSupport_iff_eventuallyEq.mp hx).symm

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Support/Variant64258185d6392d2b7c7719e0178cd1421db558d389d7b9dc591e3217ac1f75c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Support/Variant64258185d6392d2b7c7719e0178cd1421db558d389d7b9dc591e3217ac1f75c4.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e215efd8fc8d81ecf98cdc1b7e091cfe9de8a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
