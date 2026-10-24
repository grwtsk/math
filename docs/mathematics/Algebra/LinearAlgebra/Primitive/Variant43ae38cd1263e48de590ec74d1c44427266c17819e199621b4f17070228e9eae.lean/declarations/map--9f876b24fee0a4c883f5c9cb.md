# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78738b7b34a5ff8f9f5319c9f13404bcfbd88173",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43ae38cd1263e48de590ec74d1c44427266c17819e199621b4f17070228e9eae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0cad51e5-04bc-7c68-2cb7-d4abda05aaca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a62e786f-297b-5c65-9d5d-c4f2779eca4a",
  "kind": "lemma",
  "lexical_name": "map",
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
  "slug": "map--9f876b24fee0a4c883f5c9cb",
  "source": {
    "blob": "78738b7b34a5ff8f9f5319c9f13404bcfbd88173",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 71,
    "path": "GRWTSK/Algebra/LinearAlgebra/Primitive/Variant43ae38cd1263e48de590ec74d1c44427266c17819e199621b4f17070228e9eae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f876b24fee0a4c883f5c9cbd6c43d156c229fc6a3d8260561d97b3dd0eaf021",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Primitive/Variant43ae38cd1263e48de590ec74d1c44427266c17819e199621b4f17070228e9eae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a62e786f-297b-5c65-9d5d-c4f2779eca4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map [FunLike F A B] [CoalgHomClass F R A B] (f : F) (ha : IsSkewPrimitiveElem R g h a) :
    IsSkewPrimitiveElem R (f g) (f h) (f a) where
  counit_eq_zero := by simp [ha.counit_eq_zero]
  comul_eq_tmul_add_tmul := by
    simp [ha.comul_eq_tmul_add_tmul, ← CoalgHomClass.map_comp_comul_apply]

end IsSkewPrimitiveElem

/-- A coalgebra isomorphism preserves skew-primitivity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Primitive/Variant43ae38cd1263e48de590ec74d1c44427266c17819e199621b4f17070228e9eae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Primitive/Variant43ae38cd1263e48de590ec74d1c44427266c17819e199621b4f17070228e9eae.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78738b7b34a5ff8f9f5319c9f13404bcfbd88173` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
