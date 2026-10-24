# map_comp_rTensor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3650e24-1633-3d31-6f82-a870041ef7ae",
  "kind": "theorem",
  "lexical_name": "map_comp_rTensor",
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
  "slug": "map-comp-rtensor--ea3b918a49b65850f9177d0a",
  "source": {
    "blob": "085fb3064e6e44b184dad568041415acb40a6a08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1164,
    "line": 1159,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantfa954dbae214adcdd2bbe67665e81e1ae1e7968330e21e014dcf5b2307748de9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea3b918a49b65850f9177d0aa90ec63b35a186ecc54e9b261be03355cc4f7215",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variantfa954dbae214adcdd2bbe67665e81e1ae1e7968330e21e014dcf5b2307748de9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3650e24-1633-3d31-6f82-a870041ef7ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1159–1164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_comp_rTensor (f : M →ₗ[R] P) (g : N →ₗ[R] Q) (f' : S →ₗ[R] M) :
    (map f g).comp (f'.rTensor _) = map (f.comp f') g := by
  simp only [lTensor, rTensor, ← map_comp, id_comp, comp_id]
#align linear_map.map_comp_rtensor LinearMap.map_comp_rTensor

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variantfa954dbae214adcdd2bbe67665e81e1ae1e7968330e21e014dcf5b2307748de9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantfa954dbae214adcdd2bbe67665e81e1ae1e7968330e21e014dcf5b2307748de9.lean#L1159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `085fb3064e6e44b184dad568041415acb40a6a08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
