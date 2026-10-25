# rStep_respect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:486325a3-a9a6-68f1-8e40-117f1c3e593a",
  "kind": "theorem",
  "lexical_name": "rStep_respect",
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
  "slug": "rstep-respect--5e12dab660f47a780aa572cc",
  "source": {
    "blob": "671204504e601f15ffbc630afc2f2b204f0486e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2150,
    "line": 2124,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variantb9e0d96626729a7bedfdd3130607d1be8825641c7ad02f01b66ded5552c1643f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e12dab660f47a780aa572ccc2c8dfc8e10c60f9be028b12e9b0d6e5b148d1b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variantb9e0d96626729a7bedfdd3130607d1be8825641c7ad02f01b66ded5552c1643f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:486325a3-a9a6-68f1-8e40-117f1c3e593a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2124–2150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rStep_respect {v c x : Expr S}
    (hv : HasType P Γ v B.predType) (mv : WellModed γ v .data)
    (hc : HasType P Γ c B.predType) (mc : WellModed γ c .data)
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data)
    (he : Proves P Γ γ (B.relational.channel.predCompare L.code KY.code B.baseType v c)) :
    Equivalent P Γ γ (B.rStep L.code KY.code KP.code v x) (B.rStep L.code KY.code KP.code c x) := by
  have iv := H.rPred_typed KY KP hv mv
  have ic := H.rPred_typed KY KP hc mc
  have tx := H.tagged_typed 2 hx mx
  apply L.guarded_equivalent_future (H.relational_formed.valid_formula KY KP hx mx)
    (L.imp_formula (H.ev_formula hv mv tx.1 tx.2) (H.relational_formed.le_formula KY KP iv.1
      iv.2 hx mx))
    (L.imp_formula (H.ev_formula hc mc tx.1 tx.2) (H.relational_formed.le_formula KY KP ic.1
      ic.2 hx mx))
  intro Δ δ e hu
  have hu' : Proves P Δ δ ((B.rename e.names).relational.valid (L.rename e).code (KY.rename
    e).code (KP.rename e).code (x.rename e.names)) := by
    simpa only [RelationalCode.valid_rename,relational_rename,LogicSetup.code_rename,
      QuantifierRoute.code_rename] using hu
  simpa only [LogicSetup.imp_rename,ev_rename,ObservationCode.tagged_rename,
    RelationalCode.le_rename,
    rPred_rename,relational_rename,observation_rename,LogicSetup.code_rename,
      QuantifierRoute.code,QuantifierRoute.rename,QuantifierCode.rename] using
    (H.rename e).rConsequence_respect (KY.rename e) (KP.rename e)
      (v_typed_rename (B := B) e hv) (e.moded mv) (v_typed_rename (B := B) e hc) (e.moded mc)
      (x_typed_rename (B := B) e hx) (e.moded mx) (comparison_rename (B := B) KY e he) hu'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variantb9e0d96626729a7bedfdd3130607d1be8825641c7ad02f01b66ded5552c1643f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variantb9e0d96626729a7bedfdd3130607d1be8825641c7ad02f01b66ded5552c1643f.lean#L2124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `671204504e601f15ffbc630afc2f2b204f0486e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
