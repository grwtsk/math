# compare_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8233b68a-8964-ed8b-4e2b-8e2c280dfa9d",
  "kind": "theorem",
  "lexical_name": "compare_trans",
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
  "slug": "compare-trans--8c84d5f1fa36a2a4ab4b1426",
  "source": {
    "blob": "5e0d083ec1beb708a9e8efdc39363be16152f8d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24004,
    "line": 23985,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c84d5f1fa36a2a4ab4b1426e37529ef91b3035471cc6af156a805d2c37ec339",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8233b68a-8964-ed8b-4e2b-8e2c280dfa9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23985–24004.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compare_trans {y z w : Expr S}
    (hy : HasType P Γ y O.carrier) (my : WellModed γ y .data)
    (hz : HasType P Γ z O.carrier) (mz : WellModed γ z .data)
    (hw : HasType P Γ w O.carrier) (mw : WellModed γ w .data)
    (e0 : Proves P Γ γ (O.compare L.code KY.code KP.code y z))
    (e1 : Proves P Γ γ (O.compare L.code KY.code KP.code z w))
    : Proves P Γ γ (O.compare L.code KY.code KP.code y w) := by
  apply H.compare_intro KY KP hy my hw mw
  intro Δ δ e i hi mi
  have fy := (H.rename e).observe_formula (KY.rename e) (KP.rename e) hi mi (carrier_typed_rename (O := O) e hy) (e.moded my)
  have fz := (H.rename e).observe_formula (KY.rename e) (KP.rename e) hi mi (carrier_typed_rename (O := O) e hz) (e.moded mz)
  have fw := (H.rename e).observe_formula (KY.rename e) (KP.rename e) hi mi (carrier_typed_rename (O := O) e hw) (e.moded mw)
  have d0 := (H.rename e).compare_elim (KY.rename e) (KP.rename e)
    (carrier_typed_rename (O := O) e hy) (e.moded my) (carrier_typed_rename (O := O) e hz) (e.moded mz) hi mi
    (compare_proof_rename (O := O) KY KP e e0)
  have d1 := (H.rename e).compare_elim (KY.rename e) (KP.rename e)
    (carrier_typed_rename (O := O) e hz) (e.moded mz) (carrier_typed_rename (O := O) e hw) (e.moded mw) hi mi
    (compare_proof_rename (O := O) KY KP e e1)
  exact fy.equivalent_trans fz fw d0 d1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean#L23985).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e0d083ec1beb708a9e8efdc39363be16152f8d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
