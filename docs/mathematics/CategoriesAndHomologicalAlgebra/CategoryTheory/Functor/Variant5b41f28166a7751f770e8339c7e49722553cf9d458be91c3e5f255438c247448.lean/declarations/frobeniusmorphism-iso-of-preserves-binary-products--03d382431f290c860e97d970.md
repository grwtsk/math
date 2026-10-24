# frobeniusMorphism_iso_of_preserves_binary_products

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9deba740deb28d09bc9f0cd8e2c68cc232468b5c2f57d34bd23dc76c3f8d8ea0",
  "kind": "instance",
  "lexical_name": "frobeniusMorphism_iso_of_preserves_binary_products",
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
  "slug": "frobeniusmorphism-iso-of-preserves-binary-products--03d382431f290c860e97d970",
  "source": {
    "blob": "f2c6b4e7523655eb2efc511e2c7d6f74cfd0505a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 62,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:03d382431f290c860e97d970190659d4ea9a4288896c693c8cf44bfdd28d161f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9deba740deb28d09bc9f0cd8e2c68cc232468b5c2f57d34bd23dc76c3f8d8ea0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance frobeniusMorphism_iso_of_preserves_binary_products (h : L ⊣ F) (A : C)
    [Limits.PreservesLimitsOfShape (Discrete Limits.WalkingPair) L] [F.Full] [F.Faithful] :
    IsIso (frobeniusMorphism F h A).natTrans :=
  suffices ∀ (X : D), IsIso ((frobeniusMorphism F h A).natTrans.app X) from
    NatIso.isIso_of_isIso_app _
  fun B ↦ by dsimp [frobeniusMorphism]; infer_instance

variable [CartesianClosed C] [CartesianClosed D]
variable [Limits.PreservesLimitsOfShape (Discrete Limits.WalkingPair) F]

/-- The exponential comparison map.
`F` is a cartesian closed functor if this is an iso for all `A`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2c6b4e7523655eb2efc511e2c7d6f74cfd0505a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
