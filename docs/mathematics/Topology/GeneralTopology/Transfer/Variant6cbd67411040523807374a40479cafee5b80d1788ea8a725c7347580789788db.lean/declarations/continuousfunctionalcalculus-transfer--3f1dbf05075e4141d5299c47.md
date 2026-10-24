# ContinuousFunctionalCalculus.transfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "01e0fc478fb9b1b918f142d22a9f7227b1dfa154",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8977b412-c726-f4f7-bf85-b2db22bdac76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c74cce02-7c66-f705-a093-0f4529995ce0",
  "kind": "theorem",
  "lexical_name": "ContinuousFunctionalCalculus.transfer",
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
  "slug": "continuousfunctionalcalculus-transfer--3f1dbf05075e4141d5299c47",
  "source": {
    "blob": "01e0fc478fb9b1b918f142d22a9f7227b1dfa154",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 63,
    "path": "GRWTSK/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f1dbf05075e4141d5299c4757096fb2d8a189cae6ddbf99d5b92c85d4db8001",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c74cce02-7c66-f705-a093-0f4529995ce0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousFunctionalCalculus.transfer (e : A ≃⋆ₐ[R] B)
    (he : Continuous e) (hpq : ∀ x, p x ↔ q (e x)) :
    ContinuousFunctionalCalculus R B q where
  predicate_zero := map_zero e ▸ (hpq 0 |>.mp instCFC.predicate_zero)
  compactSpace_spectrum b := by
    rw [← isCompact_iff_compactSpace, ← e.apply_symm_apply b, AlgEquiv.spectrum_eq]
    exact isCompact_spectrum (e.symm b)
  spectrum_nonempty b hb := by
    rw [← e.apply_symm_apply b, AlgEquiv.spectrum_eq]
    have := e.nontrivial
    exact spectrum_nonempty (e.symm b) <| by simpa [hpq]
  exists_cfc_of_predicate b hb :=
    have ha : p (e.symm b) := by simpa [hpq]
    ⟨cfcHomTransfer e hpq b hb,
      continuous_cfcHomTransfer e hpq b hb he,
      cfcHomTransfer_injective e hpq b hb,
      cfcHomTransfer_id e hpq b hb,
      fun f ↦ by simp [cfcHom_map_spectrum ha],
      fun f ↦ by simp [← hpq, cfcHom_predicate ha]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01e0fc478fb9b1b918f142d22a9f7227b1dfa154` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
