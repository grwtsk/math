# Invertible.algebraTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:573479ca7a3d5079923babb2c94e27840a7ebb0c7124fc68ac3b096f64f9ca4b",
  "kind": "def",
  "lexical_name": "Invertible.algebraTower",
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
  "slug": "invertible-algebratower--05facb5f7d34f3bd5e3bfe1d",
  "source": {
    "blob": "673800dc83bf2bd0c5719081831b9492fc0721b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 58,
    "path": "GRWTSK/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05facb5f7d34f3bd5e3bfe1d5b1d7cf47298e1e072ce30c9153cbdd8ae002126",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:573479ca7a3d5079923babb2c94e27840a7ebb0c7124fc68ac3b096f64f9ca4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Invertible.algebraTower (r : R) [Invertible (algebraMap R S r)] :
    Invertible (algebraMap R A r) :=
  Invertible.copy (Invertible.map (algebraMap S A) (algebraMap R S r)) (algebraMap R A r)
    (IsScalarTower.algebraMap_apply R S A r)
#align is_scalar_tower.invertible.algebra_tower IsScalarTower.Invertible.algebraTower

/-- A natural number that is invertible when coerced to `R` is also invertible
when coerced to any `R`-algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AlgebraTower/Variantc27a10fc29d855634a52671abb6be0f1f13fdd53e0cb6ae7e2c2b0a1c7b444da.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `673800dc83bf2bd0c5719081831b9492fc0721b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
