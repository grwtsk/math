# IsSkeletonOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60de522ad0bce749e1e860b38ca1c2e0a2c610c1b71ddffa5b3590fd4e270e6f",
  "kind": "structure",
  "lexical_name": "IsSkeletonOf",
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
  "slug": "isskeletonof--869a782aa64064332d3cbf5b",
  "source": {
    "blob": "e2236d583862a9263107c0b5afd0ccc3ff7c431a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant5c56274abf5bf5a45e0557d2028a4858edb8b4c952e9d18cfa163897887fb77b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:869a782aa64064332d3cbf5b51fe30dd6d39b29cb41780ee14b8ccbc400a117a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant5c56274abf5bf5a45e0557d2028a4858edb8b4c952e9d18cfa163897887fb77b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60de522ad0bce749e1e860b38ca1c2e0a2c610c1b71ddffa5b3590fd4e270e6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsSkeletonOf (F : D ⥤ C) : Prop where
  /-- The category `D` has isomorphic objects equal -/
  skel : Skeletal D
  /-- The functor `F` is an equivalence -/
  eqv : F.IsEquivalence := by infer_instance

attribute [local instance] isIsomorphicSetoid

variable {C D}

/-- If `C` is thin and skeletal, then any naturally isomorphic functors to `C` are equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant5c56274abf5bf5a45e0557d2028a4858edb8b4c952e9d18cfa163897887fb77b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant5c56274abf5bf5a45e0557d2028a4858edb8b4c952e9d18cfa163897887fb77b.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2236d583862a9263107c0b5afd0ccc3ff7c431a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
