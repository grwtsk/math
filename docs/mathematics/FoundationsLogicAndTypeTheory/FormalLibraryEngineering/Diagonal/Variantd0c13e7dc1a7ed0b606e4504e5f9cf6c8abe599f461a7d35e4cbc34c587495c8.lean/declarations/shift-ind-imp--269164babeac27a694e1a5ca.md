# shift_ind_imp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad64416a-4034-7094-60e0-8a49f60623ea",
  "kind": "theorem",
  "lexical_name": "shift_ind_imp",
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
  "slug": "shift-ind-imp--269164babeac27a694e1a5ca",
  "source": {
    "blob": "92fe1999acd4103b1b0e828ca5aeacf8f814476b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2080,
    "line": 2054,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantd0c13e7dc1a7ed0b606e4504e5f9cf6c8abe599f461a7d35e4cbc34c587495c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:269164babeac27a694e1a5ca9b1d35f81b37f770d1073b755b4c08832dcc7027",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantd0c13e7dc1a7ed0b606e4504e5f9cf6c8abe599f461a7d35e4cbc34c587495c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad64416a-4034-7094-60e0-8a49f60623ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2054–2080.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shift_ind_imp {i x : Expr S}
    (hi : HasType P Γ i B.xPredType) (mi : WellModed γ i .data)
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data)
    (he : Proves P Γ γ (B.relational.extensional L.code KY.code KP.code i))
    (hl : Proves P Γ γ (B.induction L.code KY.code KP.code i))
    (hu : Proves P Γ γ (B.relational.valid L.code KY.code KP.code x)) :
    Proves P Γ γ (L.imp (B.relational.le L.code KY.code KP.code (B.shiftPred L.code KY.code
      KP.code i) x)
      (B.relational.channel.eval B.relational.probe.carrier (B.shiftPred L.code KY.code
        KP.code i) x)) := by
  have si := H.shiftPred_typed KY KP hi mi
  apply L.imp_intro_future (H.relational_formed.le_formula KY KP si.1 si.2 hx mx)
    (H.relational_formed.channel.eval_formula H.relational_formed.probe.carrier_sorted
      H.relational_formed.probe.carrier_mode si.1 si.2 hx mx)
  intro Δ δ e ht
  simp only [RelationalCode.le_rename,shiftPred_rename] at ht
  simp only [ChannelCode.eval_rename,ProbeCode.carrier_rename,shiftPred_rename]
  have he' := he.rename e
  simp only [RelationalCode.extensional_rename] at he'
  have hl' := hl.rename e
  simp only [induction_rename] at hl'
  have hu' := hu.rename e
  simp only [RelationalCode.valid_rename] at hu'
  exact (H.rename e).shift_ind_member (KY.rename e) (KP.rename e) (xPred_typed_rename e hi)
    (e.moded mi)
    (x_typed_rename (B := B) e hx) (e.moded mx) he' hl' hu' ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantd0c13e7dc1a7ed0b606e4504e5f9cf6c8abe599f461a7d35e4cbc34c587495c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantd0c13e7dc1a7ed0b606e4504e5f9cf6c8abe599f461a7d35e4cbc34c587495c8.lean#L2054).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92fe1999acd4103b1b0e828ca5aeacf8f814476b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
