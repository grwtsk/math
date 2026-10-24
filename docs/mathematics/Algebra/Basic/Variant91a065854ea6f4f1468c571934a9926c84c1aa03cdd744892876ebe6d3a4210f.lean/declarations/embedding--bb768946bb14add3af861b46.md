# Embedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40cee85fc76073ff9914018d90524866c8ae5ed828ef7305d77d4a4f0fa3ea14",
  "kind": "structure",
  "lexical_name": "Embedding",
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
  "slug": "embedding--bb768946bb14add3af861b46",
  "source": {
    "blob": "88eda7bd2ed3157059989f5004bb9ca072b06b4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 62,
    "path": "GRWTSK/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb768946bb14add3af861b460b4d360b260b5df34e01ad327a2b4e944c3c5a7a",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40cee85fc76073ff9914018d90524866c8ae5ed828ef7305d77d4a4f0fa3ea14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Embedding where
  /-- the map between the underlying types of indices -/
  f : ι → ι'
  injective_f : Function.Injective f
  rel {i₁ i₂ : ι} (h : c.Rel i₁ i₂) : c'.Rel (f i₁) (f i₂)

namespace Embedding

variable {c c'}
variable (e : Embedding c c')

/-- The opposite embedding in `Embedding c.symm c'.symm` of `e : Embedding c c'`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88eda7bd2ed3157059989f5004bb9ca072b06b4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
