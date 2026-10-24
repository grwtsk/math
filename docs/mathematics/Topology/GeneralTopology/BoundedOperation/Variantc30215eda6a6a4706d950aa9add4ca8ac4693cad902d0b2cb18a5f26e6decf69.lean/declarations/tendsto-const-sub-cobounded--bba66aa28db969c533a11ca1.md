# tendsto_const_sub_cobounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db72c9f1de65f0511b9d94e2ca5d94873e5437c8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1daf54be-7cf1-a9fd-2567-a77c06f24094",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b71523bf-3ec8-e565-eb75-97b7aebc1a8c",
  "kind": "theorem",
  "lexical_name": "tendsto_const_sub_cobounded",
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
  "slug": "tendsto-const-sub-cobounded--bba66aa28db969c533a11ca1",
  "source": {
    "blob": "db72c9f1de65f0511b9d94e2ca5d94873e5437c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 201,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bba66aa28db969c533a11ca1a9c335ec6a744258d7fff412e0d70d0bc5f8c270",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b71523bf-3ec8-e565-eb75-97b7aebc1a8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_const_sub_cobounded (x : R) :
    Tendsto (x - ·) (cobounded R) (cobounded R) := by
  simpa only [sub_eq_add_neg] using! (tendsto_const_add_cobounded x).comp tendsto_neg_cobounded

end SeminormedAddCommGroup

section NonUnitalSeminormedRing
/-!
### Bounded operations in non-unital seminormed rings
-/

variable {R : Type*} [NonUnitalSeminormedRing R]

set_option linter.style.whitespace false in -- manual alignment is not recognised
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db72c9f1de65f0511b9d94e2ca5d94873e5437c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
