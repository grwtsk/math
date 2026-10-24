# smul_top_eq_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6ad5bb3-a8f3-10dd-3249-21646610153b",
  "kind": "theorem",
  "lexical_name": "smul_top_eq_map",
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
  "slug": "smul-top-eq-map--b27fd1bf0979e15f62656139",
  "source": {
    "blob": "78b13e000b0f7a434acd12f304133cec8247015a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 275,
    "path": "GRWTSK/Algebra/Maps/Variant1a9bed5409f1eb9c610eb05afccc23778b31ea46c0f0d0ca8d37bf1e338de002.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b27fd1bf0979e15f62656139e29c45bc3c360634de6300abe05d88fbb01dc4a3",
  "verification": {
    "reference": "docs/verification/Algebra/Maps/Variant1a9bed5409f1eb9c610eb05afccc23778b31ea46c0f0d0ca8d37bf1e338de002.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6ad5bb3-a8f3-10dd-3249-21646610153b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_top_eq_map {R S : Type*} [CommSemiring R] [CommSemiring S] [Algebra R S]
    (I : Ideal R) : I • (⊤ : Submodule R S) = (I.map (algebraMap R S)).restrictScalars R :=
  Eq.trans (smul_restrictScalars I (⊤ : Ideal S)).symm <|
    congrArg _ <| Eq.trans (Ideal.smul_eq_mul _ _) (Ideal.mul_top _)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Maps/Variant1a9bed5409f1eb9c610eb05afccc23778b31ea46c0f0d0ca8d37bf1e338de002.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Maps/Variant1a9bed5409f1eb9c610eb05afccc23778b31ea46c0f0d0ca8d37bf1e338de002.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78b13e000b0f7a434acd12f304133cec8247015a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
