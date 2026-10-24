# theoremOneFiveClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16b2d998112b8526dcf83001424dcbdac8cc9fdf1836604ac53676f9d93c12da",
  "kind": "def",
  "lexical_name": "theoremOneFiveClaim",
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
  "slug": "theoremonefiveclaim--01ac8e09a7ce5dca696d6d61",
  "source": {
    "blob": "3509e63db39a98af44c9de6d2f0854415f321257",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 149,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BuildingAnosovFlows/Variant74ae2b45a1bb6a82b2934b347974b98f1650a6f4b20ae5226e00b7262fafa906.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01ac8e09a7ce5dca696d6d61e20e834f79fc0d4ea9073ec6af15b090671a0f2a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BuildingAnosovFlows/Variant74ae2b45a1bb6a82b2934b347974b98f1650a6f4b20ae5226e00b7262fafa906.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16b2d998112b8526dcf83001424dcbdac8cc9fdf1836604ac53676f9d93c12da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def theoremOneFiveClaim (ctx : Context) : Prop :=
  ∀ U : ctx.HyperbolicPlug,
    ∀ phi : ctx.GluingMap,
      ctx.IsHyperbolicPlug U ->
        ctx.HasFillingMSLaminations U ->
          ctx.NoAttractorOrRepellerInMaximalInvariantSet U ->
            (∀ Tout Tin : ctx.BoundaryComponent,
                ∀ Lu Ls : ctx.Lamination,
                  ctx.ExitBoundary U Tout ->
                    ctx.EntranceBoundary U Tin ->
                      ctx.UnstableExitLamination U Tout Lu ->
                        ctx.StableEntranceLamination U Tin Ls ->
                          ctx.GluesBoundary phi Tout Tin ->
                            ctx.PushforwardStronglyTransverse phi Lu Ls) ->
              ∃ Y : ctx.HyperbolicPlug,
                ∃ psi : ctx.GluingMap,
                  ctx.ConstructedPlugEquivalent U Y ∧
                  ctx.HasFillingMSLaminations Y ∧
                  ctx.IsotopicGluing phi psi ∧
                  ctx.IsAnosovVectorField
                    (ctx.GluedManifold Y Y psi)
                    (ctx.InducedVectorField Y Y psi)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BuildingAnosovFlows/Variant74ae2b45a1bb6a82b2934b347974b98f1650a6f4b20ae5226e00b7262fafa906.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BuildingAnosovFlows/Variant74ae2b45a1bb6a82b2934b347974b98f1650a6f4b20ae5226e00b7262fafa906.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3509e63db39a98af44c9de6d2f0854415f321257` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
