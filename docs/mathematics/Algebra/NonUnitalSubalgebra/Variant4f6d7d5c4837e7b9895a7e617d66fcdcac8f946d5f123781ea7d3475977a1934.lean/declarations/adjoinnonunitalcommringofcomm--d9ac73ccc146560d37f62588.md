# adjoinNonUnitalCommRingOfComm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f865efdc21e8acf45c136d8c57883000028729e24ff0b06082de7d39c25bc0c7",
  "kind": "abbrev",
  "lexical_name": "adjoinNonUnitalCommRingOfComm",
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
  "slug": "adjoinnonunitalcommringofcomm--d9ac73ccc146560d37f62588",
  "source": {
    "blob": "2c2cc44baaf756c6950c625a00e1cae111236d6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1249,
    "line": 1243,
    "path": "GRWTSK/Algebra/NonUnitalSubalgebra/Variant4f6d7d5c4837e7b9895a7e617d66fcdcac8f946d5f123781ea7d3475977a1934.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d9ac73ccc146560d37f6258892de5d5b9c16e8e72e1b8d9f2afe33f62bd49376",
  "verification": {
    "reference": "docs/verification/Algebra/NonUnitalSubalgebra/Variant4f6d7d5c4837e7b9895a7e617d66fcdcac8f946d5f123781ea7d3475977a1934.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f865efdc21e8acf45c136d8c57883000028729e24ff0b06082de7d39c25bc0c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1243–1249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev adjoinNonUnitalCommRingOfComm (R : Type*) {A : Type*} [CommRing R] [StarRing R]
    [NonUnitalRing A] [StarRing A] [Module R A] [IsScalarTower R A A] [SMulCommClass R A A]
    [StarModule R A] {s : Set A} (hcomm : ∀ a ∈ s, ∀ b ∈ s, a * b = b * a)
    (hcomm_star : ∀ a ∈ s, ∀ b ∈ s, a * star b = star b * a) : NonUnitalCommRing (adjoin R s) :=
  { (adjoin R s).toNonUnitalRing, adjoinNonUnitalCommSemiringOfComm R hcomm hcomm_star with }

end NonUnitalStarAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NonUnitalSubalgebra/Variant4f6d7d5c4837e7b9895a7e617d66fcdcac8f946d5f123781ea7d3475977a1934.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NonUnitalSubalgebra/Variant4f6d7d5c4837e7b9895a7e617d66fcdcac8f946d5f123781ea7d3475977a1934.lean#L1243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c2cc44baaf756c6950c625a00e1cae111236d6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
