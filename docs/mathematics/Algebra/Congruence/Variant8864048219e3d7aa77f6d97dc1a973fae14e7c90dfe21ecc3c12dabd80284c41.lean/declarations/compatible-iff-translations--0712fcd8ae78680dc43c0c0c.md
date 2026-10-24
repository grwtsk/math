# compatible_iff_translations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f24c7432ed8448fcd4e7b4220c4344841665837b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a1992d0-8907-aff4-3655-d30100f039ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae1cc72f-810e-d87d-4463-b7a6520a1d00",
  "kind": "theorem",
  "lexical_name": "compatible_iff_translations",
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
  "slug": "compatible-iff-translations--0712fcd8ae78680dc43c0c0c",
  "source": {
    "blob": "f24c7432ed8448fcd4e7b4220c4344841665837b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 164,
    "path": "GRWTSK/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0712fcd8ae78680dc43c0c0cfe080c34412eeca7847e53ae12703021d9db7441",
  "verification": {
    "reference": "docs/verification/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae1cc72f-810e-d87d-4463-b7a6520a1d00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compatible_iff_translations {Carrier : Type} (alg : Algebra Carrier)
    (rel : Setoid Carrier) :
    Compatible alg rel ↔ ∀ (index : Fin alg.numOps) (coord : Fin (alg.arity index))
      (inputs : Fin (alg.arity index) → Carrier) (left right : Carrier), rel left right →
      rel (translation alg index coord inputs left) (translation alg index coord inputs right) := by
  constructor
  · intro compatible index coord inputs left right related
    exact translation_preserves ⟨rel, compatible⟩ index coord inputs related
  · intro stable index left right related
    exact relation_map_of_updates rel (alg.op index) (stable index) left right related

end FiniteCongruence

end OAI
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f24c7432ed8448fcd4e7b4220c4344841665837b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
