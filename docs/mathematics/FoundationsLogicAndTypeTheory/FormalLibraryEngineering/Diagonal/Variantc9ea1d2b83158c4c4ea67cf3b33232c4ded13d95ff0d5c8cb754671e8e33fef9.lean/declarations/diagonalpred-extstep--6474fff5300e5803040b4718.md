# diagonalPred_extStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f764a40-e6c5-5a0a-4494-7b7ee2a1e2bf",
  "kind": "theorem",
  "lexical_name": "diagonalPred_extStep",
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
  "slug": "diagonalpred-extstep--6474fff5300e5803040b4718",
  "source": {
    "blob": "12dfb80e98a16c6de90537c08dfb0314cf6ab688",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 504,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc9ea1d2b83158c4c4ea67cf3b33232c4ded13d95ff0d5c8cb754671e8e33fef9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6474fff5300e5803040b47180e90484ca7e1bd402ec0d1b48397d07f465fa9ba",
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

Occurrence: `result:9f764a40-e6c5-5a0a-4494-7b7ee2a1e2bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonalPred_extStep {x y : Expr S}
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data)
    (hy : HasType P Γ y B.xType) (my : WellModed γ y .data)
    :
    Proves P Γ γ (B.relational.extStep L.code KY.code KP.code (B.diagonalPred L.code KY.code
      KP.code) x y) := by
  have iv := H.diagonalPred_typed KY KP
  apply L.imp_intro_future (H.relational_formed.xCompare_formula KY KP hx mx hy my)
    (L.iff_formula (H.relational_formed.channel.eval_formula
      H.relational_formed.probe.carrier_sorted H.relational_formed.probe.carrier_mode iv.1
      iv.2 hx mx)
      (H.relational_formed.channel.eval_formula H.relational_formed.probe.carrier_sorted
        H.relational_formed.probe.carrier_mode iv.1 iv.2 hy my))
  intro Δ δ e he
  simp only [RelationalCode.xCompare_rename] at he
  simp only [LogicSetup.iff_rename,ChannelCode.eval_rename,ProbeCode.carrier_rename,
    diagonalPred_rename]
  have hx' := x_typed_rename (B := B) e hx
  have hy' := x_typed_rename (B := B) e hy
  have iv' := (H.rename e).diagonalPred_typed (KY.rename e) (KP.rename e)
  have ee := (H.rename e).diagonalPred_respect (KY.rename e) (KP.rename e) hx' (e.moded mx)
    hy' (e.moded my) he
  exact (L.rename e).iff_of_equivalent
    ((H.rename e).relational_formed.channel.eval_formula (H.rename
      e).relational_formed.probe.carrier_sorted (H.rename
      e).relational_formed.probe.carrier_mode iv'.1 iv'.2 hx' (e.moded mx))
    ((H.rename e).relational_formed.channel.eval_formula (H.rename
      e).relational_formed.probe.carrier_sorted (H.rename
      e).relational_formed.probe.carrier_mode iv'.1 iv'.2 hy' (e.moded my)) ee

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc9ea1d2b83158c4c4ea67cf3b33232c4ded13d95ff0d5c8cb754671e8e33fef9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc9ea1d2b83158c4c4ea67cf3b33232c4ded13d95ff0d5c8cb754671e8e33fef9.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12dfb80e98a16c6de90537c08dfb0314cf6ab688` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
