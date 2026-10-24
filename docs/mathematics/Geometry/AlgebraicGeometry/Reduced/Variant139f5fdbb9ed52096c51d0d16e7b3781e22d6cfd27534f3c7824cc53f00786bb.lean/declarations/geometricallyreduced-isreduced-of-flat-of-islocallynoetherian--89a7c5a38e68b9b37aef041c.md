# GeometricallyReduced.isReduced_of_flat_of_isLocallyNoetherian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b54ce5bb4f3f4dbae2979701ca2036e60e8b0b26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/139f5fdbb9ed52096c51d0d16e7b3781e22d6cfd27534f3c7824cc53f00786bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:999f1b58-039b-2406-26e8-0c186bbb0928",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:210b408e-1b19-22d4-06fb-1cced107b646",
  "kind": "lemma",
  "lexical_name": "GeometricallyReduced.isReduced_of_flat_of_isLocallyNoetherian",
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
  "slug": "geometricallyreduced-isreduced-of-flat-of-islocallynoetherian--89a7c5a38e68b9b37aef041c",
  "source": {
    "blob": "b54ce5bb4f3f4dbae2979701ca2036e60e8b0b26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 109,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Reduced/Variant139f5fdbb9ed52096c51d0d16e7b3781e22d6cfd27534f3c7824cc53f00786bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89a7c5a38e68b9b37aef041cd3b6f6ab1226eab918caaa94fc169662e2a32f42",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Reduced/Variant139f5fdbb9ed52096c51d0d16e7b3781e22d6cfd27534f3c7824cc53f00786bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:210b408e-1b19-22d4-06fb-1cced107b646`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma GeometricallyReduced.isReduced_of_flat_of_isLocallyNoetherian
    (f : X ⟶ Y) [GeometricallyReduced f] [Flat f]
    [IsReduced Y] [IsLocallyNoetherian Y] : IsReduced X := by
  apply +allowSynthFailures @IsReduced.of_openCover (𝒰 := Y.affineCover.pullback₁ f)
  intro i
  have : IsReduced (Y.affineCover.X i) := isReduced_of_isOpenImmersion (Y.affineCover.f i)
  have : Finite ↑(irreducibleComponents ↥(Y.affineCover.X i)) := by
    let : IsNoetherian (Y.affineCover.X i) := {}
    exact TopologicalSpace.NoetherianSpace.finite_irreducibleComponents
  exact isReduced_of_flat_of_finite_irreducibleComponents (pullback.snd _ _)

/-- If `X` is geometrically reduced over `S`, and `Y` is both reduced and locally noetherian,
then `X ×ₛ Y` is also reduced.

TODO: get rid of the noetherian hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Reduced/Variant139f5fdbb9ed52096c51d0d16e7b3781e22d6cfd27534f3c7824cc53f00786bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Reduced/Variant139f5fdbb9ed52096c51d0d16e7b3781e22d6cfd27534f3c7824cc53f00786bb.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b54ce5bb4f3f4dbae2979701ca2036e60e8b0b26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
