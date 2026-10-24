# barResolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f92d129812c3781f0deef7b8bafb06e158e5aac0166aa99d27a3f7d59221708a",
  "kind": "def",
  "lexical_name": "barResolution",
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
  "slug": "barresolution--024c7beedcfe3c3e2ecf8bff",
  "source": {
    "blob": "4090623d8bb6f4b1448591080bcb02470b7b2ff6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 429,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant0280c87df1dff1c91f105b00e75ec2eebfe2d81dd1028be7ae26d5280022896b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:024c7beedcfe3c3e2ecf8bff80168602229dd240657a085004a1912101c27f94",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant0280c87df1dff1c91f105b00e75ec2eebfe2d81dd1028be7ae26d5280022896b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f92d129812c3781f0deef7b8bafb06e158e5aac0166aa99d27a3f7d59221708a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def barResolution : ProjectiveResolution (Rep.trivial k G k) where
  complex := barComplex k G
  projective n := (inferInstance : Projective (free k G (Fin n → G)))
  π := (isoStandardComplex k G).hom ≫ standardComplex.εToSingle₀ k G

/-- Given a `k`-linear `G`-representation `V`, `Extⁿ(k, V)` (where `k` is the trivial `k`-linear
`G`-representation) is isomorphic to the `n`th cohomology group of `Hom(P, V)`, where `P` is the
bar resolution of `k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant0280c87df1dff1c91f105b00e75ec2eebfe2d81dd1028be7ae26d5280022896b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant0280c87df1dff1c91f105b00e75ec2eebfe2d81dd1028be7ae26d5280022896b.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4090623d8bb6f4b1448591080bcb02470b7b2ff6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
