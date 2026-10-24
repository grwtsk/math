# propositionOneOneClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:531ecd686e08fbc850fce838541243062a323a7f9517c866a183e3b512937557",
  "kind": "def",
  "lexical_name": "propositionOneOneClaim",
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
  "slug": "propositiononeoneclaim--92b573feada8a884d9ce485e",
  "source": {
    "blob": "0daa4dc2c9e37293a8d8fee972673742fbf8028b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 140,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BuildingAnosovFlows/Variant66e8994be3e1ee89f0fbd22316d2745fd22f28b5908771d03d017ebde7799e31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92b573feada8a884d9ce485e160d6dd3590f9d6d846b2b5790c6a06d7a3e2667",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BuildingAnosovFlows/Variant66e8994be3e1ee89f0fbd22316d2745fd22f28b5908771d03d017ebde7799e31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:531ecd686e08fbc850fce838541243062a323a7f9517c866a183e3b512937557`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def propositionOneOneClaim (ctx : Context) : Prop :=
  ∀ U V : ctx.HyperbolicPlug,
    ∀ Tout Tin : ctx.BoundaryComponent,
      ∀ Lu Ls : ctx.Lamination,
        ∀ phi : ctx.GluingMap,
          ctx.IsHyperbolicPlug U ->
            ctx.IsHyperbolicPlug V ->
              ctx.ExitBoundary U Tout ->
                ctx.EntranceBoundary V Tin ->
                  ctx.UnstableExitLamination U Tout Lu ->
                    ctx.StableEntranceLamination V Tin Ls ->
                      ctx.GluesBoundary phi Tout Tin ->
                        ctx.PushforwardTransverse phi Lu Ls ->
                          ctx.IsHyperbolicPlugOn
                            (ctx.GluedManifold U V phi)
                            (ctx.InducedVectorField U V phi)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BuildingAnosovFlows/Variant66e8994be3e1ee89f0fbd22316d2745fd22f28b5908771d03d017ebde7799e31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BuildingAnosovFlows/Variant66e8994be3e1ee89f0fbd22316d2745fd22f28b5908771d03d017ebde7799e31.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0daa4dc2c9e37293a8d8fee972673742fbf8028b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
