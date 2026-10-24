# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a9c9bfd8c403df6d1a904a51d0f7cdfe8fed805d1c3eeb22623c308694cc979",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--18d954cf27e4426d3a28cbf3",
  "source": {
    "blob": "9a77d14ea5c8f7d49dfc10fd4287318f10059ea0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 624,
    "line": 614,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18d954cf27e4426d3a28cbf3b7f7943a1d4f241baed6442736aa3db451c58911",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a9c9bfd8c403df6d1a904a51d0f7cdfe8fed805d1c3eeb22623c308694cc979`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 614–624.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (M N : Mat R) : Inhabited (M ⟶ N) :=
  ⟨fun (_ : M) (_ : N) => (0 : R)⟩

end

variable (R : Type) [Ring R]

open Opposite

/-- Auxiliary definition for `CategoryTheory.Mat.equivalenceSingleObj`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean#L614).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a77d14ea5c8f7d49dfc10fd4287318f10059ea0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
