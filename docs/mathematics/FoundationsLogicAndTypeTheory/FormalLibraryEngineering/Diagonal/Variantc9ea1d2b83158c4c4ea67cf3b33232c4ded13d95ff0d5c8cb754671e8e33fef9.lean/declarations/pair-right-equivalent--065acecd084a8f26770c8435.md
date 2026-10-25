# pair_right_equivalent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f74b8e3-495f-999a-053e-4e9469ddaa8b",
  "kind": "theorem",
  "lexical_name": "pair_right_equivalent",
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
  "slug": "pair-right-equivalent--065acecd084a8f26770c8435",
  "source": {
    "blob": "12dfb80e98a16c6de90537c08dfb0314cf6ab688",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1030,
    "line": 1007,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc9ea1d2b83158c4c4ea67cf3b33232c4ded13d95ff0d5c8cb754671e8e33fef9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:065acecd084a8f26770c84350e9cc4d0bc6a1066258f0f31ce14465eac81707d",
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

Occurrence: `result:1f74b8e3-495f-999a-053e-4e9469ddaa8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1007–1030.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pair_right_equivalent {v a x : Expr S}
    (hv : HasType P Γ v B.predType) (mv : WellModed γ v .data)
    (ha : HasType P Γ a B.yType) (ma : WellModed γ a .data)
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data) :
    Equivalent P Γ γ (B.ev (B.pair L.code KY.code KP.code v a) (B.observation.tagged L.code 2 x))
      (B.relation L.code KY.code KP.code a (B.observation.tagged L.code 0 x)) := by
  have hp := H.pair_typed KY KP hv mv ha ma
  have ht := H.tagged_typed 2 hx mx
  have h0 := H.tagged_typed 0 hx mx
  apply (H.ev_formula hp.1 hp.2 ht.1 ht.2).equivalent_of_future
    (H.relation_formula KY KP ha ma h0.1 h0.2)
  · intro Δ δ e he
    simp only [ev_rename,pair_rename,ObservationCode.tagged_rename] at he
    simp only [relation_rename,ObservationCode.tagged_rename]
    exact (H.rename e).pair_right_forward (KY.rename e) (KP.rename e) (v_typed_rename (B := B)
      e hv) (e.moded mv)
      (y_typed_rename (B := B) e ha) (e.moded ma) (x_typed_rename (B := B) e hx) (e.moded mx) he
  · intro Δ δ e he
    simp only [relation_rename,ObservationCode.tagged_rename] at he
    simp only [ev_rename,pair_rename,ObservationCode.tagged_rename]
    exact (H.rename e).pair_right_backward (KY.rename e) (KP.rename e) (v_typed_rename (B :=
      B) e hv) (e.moded mv)
      (y_typed_rename (B := B) e ha) (e.moded ma) (x_typed_rename (B := B) e hx) (e.moded mx) he

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc9ea1d2b83158c4c4ea67cf3b33232c4ded13d95ff0d5c8cb754671e8e33fef9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc9ea1d2b83158c4c4ea67cf3b33232c4ded13d95ff0d5c8cb754671e8e33fef9.lean#L1007).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12dfb80e98a16c6de90537c08dfb0314cf6ab688` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
