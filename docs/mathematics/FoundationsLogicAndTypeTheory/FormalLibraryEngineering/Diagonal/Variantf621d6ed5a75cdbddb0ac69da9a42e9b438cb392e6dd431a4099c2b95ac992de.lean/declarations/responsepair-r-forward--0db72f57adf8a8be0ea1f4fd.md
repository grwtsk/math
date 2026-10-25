# responsePair_R_forward

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:428f4861-5568-8ac4-2206-a8cb5aa25cec",
  "kind": "theorem",
  "lexical_name": "responsePair_R_forward",
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
  "slug": "responsepair-r-forward--0db72f57adf8a8be0ea1f4fd",
  "source": {
    "blob": "712c86afd17675d2ac360e778368bbff3fb96d4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1235,
    "line": 1214,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantf621d6ed5a75cdbddb0ac69da9a42e9b438cb392e6dd431a4099c2b95ac992de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0db72f57adf8a8be0ea1f4fde5d002726799dece56d5a7102c06018f88d3dc91",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantf621d6ed5a75cdbddb0ac69da9a42e9b438cb392e6dd431a4099c2b95ac992de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:428f4861-5568-8ac4-2206-a8cb5aa25cec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1214–1235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem responsePair_R_forward {v x : Expr S}
    (hv : HasType P Γ v B.relational.probe.carrier) (mv : WellModed γ v .data)
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data)
    (hr : Proves P Γ γ (B.response L.code KY.code KP.code v))
    (hu : Proves P Γ γ (B.relational.valid L.code KY.code KP.code x))
    (hg : Proves P Γ γ (B.propertyR L.code KY.code KP.code
      (B.pair L.code KY.code KP.code (B.part L.code KY.code KP.code v) (B.observation.tagged
        L.code 0 x)))) :
    Proves P Γ γ (B.relational.le L.code KY.code KP.code (B.responsePred L.code KY.code
      KP.code v) x) := by
  have pv := H.part_typed KY KP hv mv
  have tx := H.tagged_typed 0 hx mx
  have px := H.pair_typed KY KP pv.1 pv.2 tx.1 tx.2
  have ir := H.rPred_typed KY KP px.1 px.2
  have iv := H.responsePred_typed KY KP hv mv
  have exP := H.responsePair_pred_extensional KY KP hv mv tx.1 tx.2 hr
  have self := (H.responsePair_right KY KP hv mv hx mx hx mx).2.prove
    (H.relational_formed.xCompare_refl KY KP hx mx)
  have hle := H.propertyR_elim KY KP px.1 px.2 hx mx hg exP hu self
  exact (H.relational_formed.valid_elim KY KP hx mx ir.1 ir.2 iv.1 iv.2 hu
    (H.responsePair_pred_compare KY KP hv mv tx.1 tx.2 hr)).1.prove hle

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantf621d6ed5a75cdbddb0ac69da9a42e9b438cb392e6dd431a4099c2b95ac992de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantf621d6ed5a75cdbddb0ac69da9a42e9b438cb392e6dd431a4099c2b95ac992de.lean#L1214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `712c86afd17675d2ac360e778368bbff3fb96d4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
