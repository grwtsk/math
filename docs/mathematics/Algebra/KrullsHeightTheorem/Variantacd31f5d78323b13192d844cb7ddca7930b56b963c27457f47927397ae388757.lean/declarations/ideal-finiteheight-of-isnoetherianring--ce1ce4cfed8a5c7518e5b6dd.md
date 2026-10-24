# Ideal.finiteHeight_of_isNoetherianRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5807f1f105e9f652e8b21556ae773b80743c78b4ce4ffaea9c52ecaab7e5511",
  "kind": "instance",
  "lexical_name": "Ideal.finiteHeight_of_isNoetherianRing",
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
  "slug": "ideal-finiteheight-of-isnoetherianring--ce1ce4cfed8a5c7518e5b6dd",
  "source": {
    "blob": "1fa404f1e229a5dc7850ad185ac2c9594fd7418f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 297,
    "path": "GRWTSK/Algebra/KrullsHeightTheorem/Variantacd31f5d78323b13192d844cb7ddca7930b56b963c27457f47927397ae388757.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce1ce4cfed8a5c7518e5b6dda2734e9eebbffcf9f698533e846192565a76de84",
  "verification": {
    "reference": "docs/verification/Algebra/KrullsHeightTheorem/Variantacd31f5d78323b13192d844cb7ddca7930b56b963c27457f47927397ae388757.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e5807f1f105e9f652e8b21556ae773b80743c78b4ce4ffaea9c52ecaab7e5511`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Ideal.finiteHeight_of_isNoetherianRing (I : Ideal R) :
    I.FiniteHeight := finiteHeight_iff_lt.mpr <| Or.elim (em (I = ⊤)) Or.inl
  fun h ↦ Or.inr <| (I.height_le_spanFinrank h).trans_lt (ENat.natCast_lt_top _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KrullsHeightTheorem/Variantacd31f5d78323b13192d844cb7ddca7930b56b963c27457f47927397ae388757.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KrullsHeightTheorem/Variantacd31f5d78323b13192d844cb7ddca7930b56b963c27457f47927397ae388757.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fa404f1e229a5dc7850ad185ac2c9594fd7418f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
