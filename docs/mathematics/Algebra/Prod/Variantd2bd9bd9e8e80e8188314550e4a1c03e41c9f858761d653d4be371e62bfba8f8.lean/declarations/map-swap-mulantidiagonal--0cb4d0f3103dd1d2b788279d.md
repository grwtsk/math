# map_swap_mulAntidiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "038622a4fcf4e5e2f5a767511d6b6552198bdb2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1e80ae3-5450-b90d-6eae-db51013d2074",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1fa700dd-5b59-d807-2a4a-52a7e0a07cf5",
  "kind": "theorem",
  "lexical_name": "map_swap_mulAntidiagonal",
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
  "slug": "map-swap-mulantidiagonal--0cb4d0f3103dd1d2b788279d",
  "source": {
    "blob": "038622a4fcf4e5e2f5a767511d6b6552198bdb2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 125,
    "path": "GRWTSK/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cb4d0f3103dd1d2b788279d878cb6c46cccd9d46a3dd3db84e808c5f0a888f7",
  "verification": {
    "reference": "docs/verification/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fa700dd-5b59-d807-2a4a-52a7e0a07cf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_swap_mulAntidiagonal [CommMagma A] [HasMulAntidiagonal A] {n : A} :
    (mulAntidiagonal n).map ⟨Prod.swap, Prod.swap_injective⟩ = mulAntidiagonal n :=
  map_prodComm_mulAntidiagonal

section CancelMonoid

variable [CancelMonoid A] [HasMulAntidiagonal A] {p q : A × A} {n : A}

/-- A point in the mulAntidiagonal is determined by its first coordinate.

See also `Finset.mulAntidiagonal_congr'`. -/
@[to_additive
/-- A point in the antidiagonal is determined by its first coordinate.

See also `Finset.antidiagonal_congr'`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Prod/Variantd2bd9bd9e8e80e8188314550e4a1c03e41c9f858761d653d4be371e62bfba8f8.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `038622a4fcf4e5e2f5a767511d6b6552198bdb2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
