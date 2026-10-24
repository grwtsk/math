# mapAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50719d39aabd1c2712f170e43f82a6174c214746350644b98d7952c009b64593",
  "kind": "def",
  "lexical_name": "mapAlgHom",
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
  "slug": "mapalghom--36c8b279add0702c36cf29c6",
  "source": {
    "blob": "f96ad5d92ab1aa56fff76d250d1a4749565425c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 222,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant9df494cb1a689cd298ac9e9a8257ec412f06c99db32078d25fab978450f9de24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36c8b279add0702c36cf29c6b2b929a93adb2a27ff74c9732293283543439318",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant9df494cb1a689cd298ac9e9a8257ec412f06c99db32078d25fab978450f9de24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50719d39aabd1c2712f170e43f82a6174c214746350644b98d7952c009b64593`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapAlgHom {k K L F : Type*} [Field k] [Field K] [Field L] [Algebra k K]
    [Algebra k L] [FunLike F K L] [AlgHomClass F k K L] (f : F) : (𝓞 K) →ₐ[𝓞 k] (𝓞 L) where
  toRingHom := mapRingHom f
  commutes' x := SetCoe.ext (AlgHomClass.commutes
    ((AlgHom.ofClass f).restrictScalars (𝓞 k)) x)

/-- The isomorphism of algebras `(𝓞 K) ≃ₐ[𝓞 k] (𝓞 L)` given by restricting
  an isomorphism of algebras `e : K ≃ₐ[k] L` to `𝓞 K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant9df494cb1a689cd298ac9e9a8257ec412f06c99db32078d25fab978450f9de24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant9df494cb1a689cd298ac9e9a8257ec412f06c99db32078d25fab978450f9de24.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f96ad5d92ab1aa56fff76d250d1a4749565425c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
