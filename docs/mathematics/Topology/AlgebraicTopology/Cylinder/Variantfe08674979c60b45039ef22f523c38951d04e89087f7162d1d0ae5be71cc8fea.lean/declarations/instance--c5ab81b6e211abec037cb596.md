# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6fad7c7c97c9aea722e66c642e1a21878c2eb94df6ecebb3d5c13388aa4e7d4c",
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
  "slug": "instance--c5ab81b6e211abec037cb596",
  "source": {
    "blob": "27161f3430e606dd6cfed91a48431d1e25532e79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 211,
    "path": "GRWTSK/Topology/AlgebraicTopology/Cylinder/Variantfe08674979c60b45039ef22f523c38951d04e89087f7162d1d0ae5be71cc8fea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5ab81b6e211abec037cb5968460470b41f4f1d923d8e9ce9e0f109179637d81",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Cylinder/Variantfe08674979c60b45039ef22f523c38951d04e89087f7162d1d0ae5be71cc8fea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6fad7c7c97c9aea722e66c642e1a21878c2eb94df6ecebb3d5c13388aa4e7d4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [HasBinaryCoproducts C] [CategoryWithCofibrations C] [P.IsGood]
    [(cofibrations C).RespectsIso] : P.symm.IsGood where
  cofibration_i := by
    have hi : cofibrations C P.i := by rw [← cofibration_iff]; infer_instance
    rw [P.symm_i, cofibration_iff]
    refine ((cofibrations C).arrow_mk_iso_iff ?_).2 hi
    exact Arrow.isoMk (coprod.braiding A A) (Iso.refl _)

section

variable [CategoryWithCofibrations C] [CategoryWithFibrations C]
  [(fibrations C).IsStableUnderComposition]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Cylinder/Variantfe08674979c60b45039ef22f523c38951d04e89087f7162d1d0ae5be71cc8fea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Cylinder/Variantfe08674979c60b45039ef22f523c38951d04e89087f7162d1d0ae5be71cc8fea.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27161f3430e606dd6cfed91a48431d1e25532e79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
