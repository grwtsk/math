# respectsIso_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56ef5c1a583996fcf4bacaf2e50bcaf2a7ed7b8235da3f181f3df91ef7be7415",
  "kind": "instance",
  "lexical_name": "respectsIso_of",
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
  "slug": "respectsiso-of--1768b136c970f8a1282c1b2a",
  "source": {
    "blob": "f45eb43f9d01633687caca22cbd5b9bb380d15b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 390,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1768b136c970f8a1282c1b2a510e7ebc41f866c0f2262d67237b0d09acfc1009",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56ef5c1a583996fcf4bacaf2e50bcaf2a7ed7b8235da3f181f3df91ef7be7415`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance respectsIso_of
    (P : MorphismProperty Scheme) [P.RespectsIso] :
    (of P).toProperty.RespectsIso := by
  apply respectsIso_mk
  · intro _ _ _ _ _ _; apply MorphismProperty.RespectsIso.precomp
  · intro _ _ _ _ _ _; apply MorphismProperty.RespectsIso.postcomp

/-- We say that `P : AffineTargetMorphismProperty` is a local property if
1. `P` respects isomorphisms.
2. If `P` holds for `f : X ⟶ Y`, then `P` holds for `f ∣_ Y.basicOpen r` for any
  global section `r`.
3. If `P` holds for `f ∣_ Y.basicOpen r` for all `r` in a spanning set of the global sections,
  then `P` holds for `f`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f45eb43f9d01633687caca22cbd5b9bb380d15b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
