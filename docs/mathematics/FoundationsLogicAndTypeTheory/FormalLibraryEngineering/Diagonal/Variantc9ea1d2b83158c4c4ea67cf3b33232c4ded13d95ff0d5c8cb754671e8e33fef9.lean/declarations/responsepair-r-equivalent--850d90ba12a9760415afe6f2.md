# responsePair_R_equivalent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c097b0e-0347-d068-8169-6cdfc3264f63",
  "kind": "theorem",
  "lexical_name": "responsePair_R_equivalent",
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
  "slug": "responsepair-r-equivalent--850d90ba12a9760415afe6f2",
  "source": {
    "blob": "12dfb80e98a16c6de90537c08dfb0314cf6ab688",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1390,
    "line": 1357,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc9ea1d2b83158c4c4ea67cf3b33232c4ded13d95ff0d5c8cb754671e8e33fef9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:850d90ba12a9760415afe6f21d4461f8af936ecc57e52a5bd7631e6ef0247435",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc9ea1d2b83158c4c4ea67cf3b33232c4ded13d95ff0d5c8cb754671e8e33fef9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c097b0e-0347-d068-8169-6cdfc3264f63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1357–1390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem responsePair_R_equivalent {v x : Expr S}
    (hv : HasType P Γ v B.relational.probe.carrier) (mv : WellModed γ v .data)
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data)
    (hr : Proves P Γ γ (B.response L.code KY.code KP.code v))
    (hu : Proves P Γ γ (B.relational.valid L.code KY.code KP.code x)) :
    Equivalent P Γ γ (B.propertyR L.code KY.code KP.code
      (B.pair L.code KY.code KP.code (B.part L.code KY.code KP.code v) (B.observation.tagged
        L.code 0 x)))
      (B.relational.le L.code KY.code KP.code (B.responsePred L.code KY.code KP.code v) x) := by
  have pv := H.part_typed KY KP hv mv
  have tx := H.tagged_typed 0 hx mx
  have px := H.pair_typed KY KP pv.1 pv.2 tx.1 tx.2
  have iv := H.responsePred_typed KY KP hv mv
  apply (H.propertyR_formula KY KP px.1 px.2).equivalent_of_future
    (H.relational_formed.le_formula KY KP iv.1 iv.2 hx mx)
  · intro Δ δ e hg
    simp only [propertyR_rename,pair_rename,part_rename,ObservationCode.tagged_rename] at hg
    simp only [RelationalCode.le_rename,responsePred_rename]
    have hr' := hr.rename e
    simp only [response_rename] at hr'
    have hu' := hu.rename e
    simp only [RelationalCode.valid_rename] at hu'
    exact (H.rename e).responsePair_R_forward (KY.rename e) (KP.rename e)
      (carrier_typed_rename e hv) (e.moded mv)
      (x_typed_rename (B := B) e hx) (e.moded mx) hr' hu' hg
  · intro Δ δ e hl
    simp only [RelationalCode.le_rename,responsePred_rename] at hl
    simp only [propertyR_rename,pair_rename,part_rename,ObservationCode.tagged_rename]
    have hr' := hr.rename e
    simp only [response_rename] at hr'
    exact (H.rename e).responsePair_R_backward (KY.rename e) (KP.rename e)
      (carrier_typed_rename e hv) (e.moded mv)
      (x_typed_rename (B := B) e hx) (e.moded mx) hr' hl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc9ea1d2b83158c4c4ea67cf3b33232c4ded13d95ff0d5c8cb754671e8e33fef9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc9ea1d2b83158c4c4ea67cf3b33232c4ded13d95ff0d5c8cb754671e8e33fef9.lean#L1357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12dfb80e98a16c6de90537c08dfb0314cf6ab688` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
