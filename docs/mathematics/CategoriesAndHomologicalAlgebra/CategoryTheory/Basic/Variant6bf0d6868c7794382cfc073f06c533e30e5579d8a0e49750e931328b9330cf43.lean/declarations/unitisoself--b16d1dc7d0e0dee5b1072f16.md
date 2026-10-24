# unitIsoSelf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:235fe117bdef47a7aa93703fcc03ebbe9bf3dbac4a4082e519dfb6f48bbbb558",
  "kind": "def",
  "lexical_name": "unitIsoSelf",
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
  "slug": "unitisoself--b16d1dc7d0e0dee5b1072f16",
  "source": {
    "blob": "540f74b75972ff6e8f35f4f461607f228aab0651",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 233,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6bf0d6868c7794382cfc073f06c533e30e5579d8a0e49750e931328b9330cf43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b16d1dc7d0e0dee5b1072f16cbdec019e8b13bc902c0126406e55cf04232615b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6bf0d6868c7794382cfc073f06c533e30e5579d8a0e49750e931328b9330cf43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:235fe117bdef47a7aa93703fcc03ebbe9bf3dbac4a4082e519dfb6f48bbbb558`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitIsoSelf [Closed (𝟙_ C)] : ((𝟙_ C) ⟶[C] X) ≅ X :=
  (unitNatIso.app X).symm

section Pre

variable {A B}
variable [Closed B]

/-- Pre-compose an internal hom with an external hom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6bf0d6868c7794382cfc073f06c533e30e5579d8a0e49750e931328b9330cf43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6bf0d6868c7794382cfc073f06c533e30e5579d8a0e49750e931328b9330cf43.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `540f74b75972ff6e8f35f4f461607f228aab0651` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
