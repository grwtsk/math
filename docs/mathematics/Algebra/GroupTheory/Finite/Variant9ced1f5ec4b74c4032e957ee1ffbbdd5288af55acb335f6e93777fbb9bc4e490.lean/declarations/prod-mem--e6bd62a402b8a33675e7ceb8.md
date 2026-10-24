# prod_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a196e69-bcaa-d0b6-e0e0-26bc5b3cb9e0",
  "kind": "theorem",
  "lexical_name": "prod_mem",
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
  "slug": "prod-mem--e6bd62a402b8a33675e7ceb8",
  "source": {
    "blob": "e0824df3586b63930f0e623cdbe09b57cb0f51e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 83,
    "path": "GRWTSK/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6bd62a402b8a33675e7ceb8a7bfaf7922f526228d088d4d2c5aa3e8bda912d9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a196e69-bcaa-d0b6-e0e0-26bc5b3cb9e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem prod_mem {G : Type*} [CommGroup G] (K : Subgroup G) {ι : Type*} {t : Finset ι}
    {f : ι → G} (h : ∀ c ∈ t, f c ∈ K) : (∏ c in t, f c) ∈ K :=
  prod_mem h
#align subgroup.prod_mem Subgroup.prod_mem
#align add_subgroup.sum_mem AddSubgroup.sum_mem

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finite/Variant9ced1f5ec4b74c4032e957ee1ffbbdd5288af55acb335f6e93777fbb9bc4e490.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0824df3586b63930f0e623cdbe09b57cb0f51e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
