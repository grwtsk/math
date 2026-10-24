# AddMonoidHom.map_mul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41839a4f07368d9125d33053d49f01f4a855a386",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 327,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1034286e-a0df-f44f-bdef-bcad81497a47",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f3d761f-c141-f924-5405-e7fe707d2e72",
  "kind": "theorem",
  "lexical_name": "AddMonoidHom.map_mul_iff",
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
  "slug": "addmonoidhom-map-mul-iff--813c43ae6721ec15aa77f81a",
  "source": {
    "blob": "41839a4f07368d9125d33053d49f01f4a855a386",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 327,
    "path": "GRWTSK/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:813c43ae6721ec15aa77f81a8699a91c7314ffe5ae3e0f95c3ba40a9ed0dba7f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f3d761f-c141-f924-5405-e7fe707d2e72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AddMonoidHom.map_mul_iff (f : R →+ S) :
    (∀ x y, f (x * y) = f x * f y) ↔
      (AddMonoidHom.mul : R →+ R →+ R).compr₂ f = (AddMonoidHom.mul.comp f).compl₂ f :=
  Iff.symm AddMonoidHom.ext_iff₂
#align add_monoid_hom.map_mul_iff AddMonoidHom.map_mul_iff

/-- The left multiplication map: `(a, b) ↦ a * b`. See also `AddMonoidHom.mulLeft`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/GroupInstances/Variant1c1a1bd3d3fe58c41754083d8ae18361bbfef86abacfc0f4befcc22f25a3e2d8.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41839a4f07368d9125d33053d49f01f4a855a386` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
