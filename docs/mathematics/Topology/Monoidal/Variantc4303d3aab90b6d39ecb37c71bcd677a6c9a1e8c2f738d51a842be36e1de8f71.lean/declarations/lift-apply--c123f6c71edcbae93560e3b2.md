# lift_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30789f59cf195c066a2bce023f70ec9b9cd6bd7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4303d3aab90b6d39ecb37c71bcd677a6c9a1e8c2f738d51a842be36e1de8f71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b60d6f8f-d1fd-67ce-fe62-3d2ca93e3b73",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa616580-8c19-3f4b-b5ed-979380a4c929",
  "kind": "theorem",
  "lexical_name": "lift_apply",
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
  "slug": "lift-apply--c123f6c71edcbae93560e3b2",
  "source": {
    "blob": "30789f59cf195c066a2bce023f70ec9b9cd6bd7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 114,
    "path": "GRWTSK/Topology/Monoidal/Variantc4303d3aab90b6d39ecb37c71bcd677a6c9a1e8c2f738d51a842be36e1de8f71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c123f6c71edcbae93560e3b2ab49c292dfc71fb1679b656312fc83bd12fbc4d0",
  "verification": {
    "reference": "docs/verification/Topology/Monoidal/Variantc4303d3aab90b6d39ecb37c71bcd677a6c9a1e8c2f738d51a842be36e1de8f71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa616580-8c19-3f4b-b5ed-979380a4c929`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem lift_apply {X Y Z : TopCat.{u}} {f : X ⟶ Y} {g : X ⟶ Z} {x : X} :
    CartesianMonoidalCategory.lift f g x = (f x, g x) :=
  rfl

/-- The unit interval, as an object of `TopCat`. -/
@[implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Monoidal/Variantc4303d3aab90b6d39ecb37c71bcd677a6c9a1e8c2f738d51a842be36e1de8f71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Monoidal/Variantc4303d3aab90b6d39ecb37c71bcd677a6c9a1e8c2f738d51a842be36e1de8f71.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30789f59cf195c066a2bce023f70ec9b9cd6bd7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
