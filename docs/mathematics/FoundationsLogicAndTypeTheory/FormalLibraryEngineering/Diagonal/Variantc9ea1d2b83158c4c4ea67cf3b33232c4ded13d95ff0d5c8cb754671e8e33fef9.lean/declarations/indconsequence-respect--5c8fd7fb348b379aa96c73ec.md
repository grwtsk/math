# indConsequence_respect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:844dd12e-34a8-d3da-04c1-6286ee2e570e",
  "kind": "theorem",
  "lexical_name": "indConsequence_respect",
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
  "slug": "indconsequence-respect--5c8fd7fb348b379aa96c73ec",
  "source": {
    "blob": "12dfb80e98a16c6de90537c08dfb0314cf6ab688",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1822,
    "line": 1799,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc9ea1d2b83158c4c4ea67cf3b33232c4ded13d95ff0d5c8cb754671e8e33fef9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c8fd7fb348b379aa96c73ec8f968c9eedfae97d451ba922e8d7bd00e13d7c7e",
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

Occurrence: `result:844dd12e-34a8-d3da-04c1-6286ee2e570e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1799–1822.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem indConsequence_respect {v c x : Expr S}
    (hv : HasType P Γ v B.xPredType) (mv : WellModed γ v .data)
    (hc : HasType P Γ c B.xPredType) (mc : WellModed γ c .data)
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data)
    (he : Proves P Γ γ (B.relational.channel.predCompare L.code KY.code
      B.relational.probe.carrier v c))
    (hu : Proves P Γ γ (B.relational.valid L.code KY.code KP.code x)) :
    Equivalent P Γ γ
      (L.imp (B.relational.le L.code KY.code KP.code v x) (B.relational.channel.eval
        B.relational.probe.carrier v x))
      (L.imp (B.relational.le L.code KY.code KP.code c x) (B.relational.channel.eval
        B.relational.probe.carrier c x)) := by
  have evc := H.relational_formed.channel.predCompare_elim
    H.relational_formed.probe.carrier_sorted H.relational_formed.probe.carrier_mode KY hv mv
    hc mc hx mx he
  have el := H.relational_formed.valid_elim KY KP hx mx hv mv hc mc hu he
  exact L.imp_equivalent (H.relational_formed.le_formula KY KP hv mv hx mx)
    (H.relational_formed.le_formula KY KP hc mc hx mx)
    (H.relational_formed.channel.eval_formula H.relational_formed.probe.carrier_sorted
      H.relational_formed.probe.carrier_mode hv mv hx mx)
    (H.relational_formed.channel.eval_formula H.relational_formed.probe.carrier_sorted
      H.relational_formed.probe.carrier_mode hc mc hx mx) el evc

omit H in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc9ea1d2b83158c4c4ea67cf3b33232c4ded13d95ff0d5c8cb754671e8e33fef9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc9ea1d2b83158c4c4ea67cf3b33232c4ded13d95ff0d5c8cb754671e8e33fef9.lean#L1799).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12dfb80e98a16c6de90537c08dfb0314cf6ab688` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
