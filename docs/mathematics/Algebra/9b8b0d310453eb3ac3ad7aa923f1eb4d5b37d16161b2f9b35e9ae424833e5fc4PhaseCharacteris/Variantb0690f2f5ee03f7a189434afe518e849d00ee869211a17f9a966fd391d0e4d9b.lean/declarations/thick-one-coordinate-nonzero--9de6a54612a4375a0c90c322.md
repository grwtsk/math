# thick_one_coordinate_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b68c381-8eef-36f1-32da-96bd35595b5a",
  "kind": "theorem",
  "lexical_name": "thick_one_coordinate_nonzero",
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
  "slug": "thick-one-coordinate-nonzero--9de6a54612a4375a0c90c322",
  "source": {
    "blob": "22efd3b8cf1525b2f3ab03b280de7bf7b6aa16cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 76,
    "path": "GRWTSK/Algebra/9b8b0d310453eb3ac3ad7aa923f1eb4d5b37d16161b2f9b35e9ae424833e5fc4PhaseCharacteris/Variantb0690f2f5ee03f7a189434afe518e849d00ee869211a17f9a966fd391d0e4d9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9de6a54612a4375a0c90c322df8b76f588d9d9bd3c30a6dd45c7a375548c7e81",
  "verification": {
    "reference": "docs/verification/Algebra/9b8b0d310453eb3ac3ad7aa923f1eb4d5b37d16161b2f9b35e9ae424833e5fc4PhaseCharacteris/Variantb0690f2f5ee03f7a189434afe518e849d00ee869211a17f9a966fd391d0e4d9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b68c381-8eef-36f1-32da-96bd35595b5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thick_one_coordinate_nonzero :
    AdjoinRoot.mk ((X - C (1 : ℂ)) ^ 2) (X - C 1) ≠ 0 := by
  apply AdjoinRoot.mk_ne_zero_of_natDegree_lt ((monic_X_sub_C 1).pow 2)
  · exact (monic_X_sub_C 1).ne_zero
  · rw [natDegree_pow, natDegree_X_sub_C]
    norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/9b8b0d310453eb3ac3ad7aa923f1eb4d5b37d16161b2f9b35e9ae424833e5fc4PhaseCharacteris/Variantb0690f2f5ee03f7a189434afe518e849d00ee869211a17f9a966fd391d0e4d9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/9b8b0d310453eb3ac3ad7aa923f1eb4d5b37d16161b2f9b35e9ae424833e5fc4PhaseCharacteris/Variantb0690f2f5ee03f7a189434afe518e849d00ee869211a17f9a966fd391d0e4d9b.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22efd3b8cf1525b2f3ab03b280de7bf7b6aa16cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
