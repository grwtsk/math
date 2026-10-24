# primesOver_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a79b324db55b900a4c86c965f46a6cfa7f456e81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1487,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d82c9d68f99afb4d3986965511707a94f7becd5af45aff413763e7684625b018.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0be8248-faef-fbdc-d8c9-30f1f721741a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:319b8a15-a394-03ce-daf6-c2ed85e682af",
  "kind": "theorem",
  "lexical_name": "primesOver_finite",
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
  "slug": "primesover-finite--fe13d8475b9ef00b61b6e809",
  "source": {
    "blob": "a79b324db55b900a4c86c965f46a6cfa7f456e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1495,
    "line": 1487,
    "path": "GRWTSK/Algebra/Ideal/Variantd82c9d68f99afb4d3986965511707a94f7becd5af45aff413763e7684625b018.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe13d8475b9ef00b61b6e80957ac3971d4aa2e0d6669b0cad32606644ca6db95",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variantd82c9d68f99afb4d3986965511707a94f7becd5af45aff413763e7684625b018.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:319b8a15-a394-03ce-daf6-c2ed85e682af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1487–1495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primesOver_finite : (primesOver p B).Finite := by
  by_cases hpb : p = ⊥
  · rw [hpb] at hpm ⊢
    haveI : IsDomain A := IsDomain.of_bot_isPrime A
    rw [primesOver_bot A B]
    exact Set.finite_singleton ⊥
  · rw [← coe_primesOverFinset hpb B]
    exact (primesOverFinset p B).finite_toSet

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variantd82c9d68f99afb4d3986965511707a94f7becd5af45aff413763e7684625b018.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variantd82c9d68f99afb4d3986965511707a94f7becd5af45aff413763e7684625b018.lean#L1487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a79b324db55b900a4c86c965f46a6cfa7f456e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
