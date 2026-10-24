# isLocalHom_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40cdfa02cee55698d14beba2a5b55520412b4859019f1a4de3f84cb597122e4e",
  "kind": "instance",
  "lexical_name": "isLocalHom_algebraMap",
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
  "slug": "islocalhom-algebramap--8abdcede3800a5dafbccd6b5",
  "source": {
    "blob": "e956b8d63c139f052f52d5e6554f5dbd6b0f8b0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 151,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant6d732f6cb477166f8363dc4b6a5a4d01401e54ff45cfe96bc08f8949e92feaf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8abdcede3800a5dafbccd6b522ef9aa2fb72680ae987fa39a26e35a0faac7ab5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant6d732f6cb477166f8363dc4b6a5a4d01401e54ff45cfe96bc08f8949e92feaf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40cdfa02cee55698d14beba2a5b55520412b4859019f1a4de3f84cb597122e4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isLocalHom_algebraMap
    {A : Type*} [CommSemiring k] [Semiring A] [Algebra k A] [Monoid G]
    [IsLocalHom (algebraMap k A)] :
    IsLocalHom (algebraMap k (MonoidAlgebra A G)) where
  map_nonunit _ hx := .of_map _ _ <| isLocalHom_singleOneAlgHom (k := k).map_nonunit _ hx

end Algebra

section lift

variable [CommSemiring k] [Monoid G] [Monoid H]
variable {A : Type u₃} [Semiring A] [Algebra k A] {B : Type*} [Semiring B] [Algebra k B]

/-- `liftNCRingHom` as an `AlgHom`, for when `f` is an `AlgHom` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant6d732f6cb477166f8363dc4b6a5a4d01401e54ff45cfe96bc08f8949e92feaf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant6d732f6cb477166f8363dc4b6a5a4d01401e54ff45cfe96bc08f8949e92feaf4.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e956b8d63c139f052f52d5e6554f5dbd6b0f8b0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
