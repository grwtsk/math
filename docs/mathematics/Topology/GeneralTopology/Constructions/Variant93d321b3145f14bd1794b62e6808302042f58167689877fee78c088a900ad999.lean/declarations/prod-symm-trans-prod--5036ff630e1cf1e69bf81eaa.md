# prod_symm_trans_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ac6255f70bd0ad14b02d6a3d58c98779ca6af35",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93d321b3145f14bd1794b62e6808302042f58167689877fee78c088a900ad999.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e058a5be-1706-1dfc-710b-22e8c40fe68a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df99444d-5692-3cee-22ca-16345e1c834b",
  "kind": "theorem",
  "lexical_name": "prod_symm_trans_prod",
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
  "slug": "prod-symm-trans-prod--5036ff630e1cf1e69bf81eaa",
  "source": {
    "blob": "1ac6255f70bd0ad14b02d6a3d58c98779ca6af35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 127,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant93d321b3145f14bd1794b62e6808302042f58167689877fee78c088a900ad999.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5036ff630e1cf1e69bf81eaa45002663d2e9deb67ea002d2359c836c1be8275a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant93d321b3145f14bd1794b62e6808302042f58167689877fee78c088a900ad999.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df99444d-5692-3cee-22ca-16345e1c834b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_symm_trans_prod
    (e f : OpenPartialHomeomorph X Y) (e' f' : OpenPartialHomeomorph X' Y') :
    (e.prod e').symm.trans (f.prod f') = (e.symm.trans f).prod (e'.symm.trans f') := by
  simp

end Prod

/-!
## Pi types

Finite indexed products of partial homeomorphisms
-/
section Pi

variable {ι : Type*} [Finite ι] {X Y : ι → Type*} [∀ i, TopologicalSpace (X i)]
  [∀ i, TopologicalSpace (Y i)] (ei : ∀ i, OpenPartialHomeomorph (X i) (Y i))

/-- The product of a finite family of `OpenPartialHomeomorph`s. -/
@[simps! toPartialHomeomorph apply symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant93d321b3145f14bd1794b62e6808302042f58167689877fee78c088a900ad999.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant93d321b3145f14bd1794b62e6808302042f58167689877fee78c088a900ad999.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ac6255f70bd0ad14b02d6a3d58c98779ca6af35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
