# domRestrict_eq_domRestrict_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8cb7a820a5558ce6de09c81e3a2df27be248e09",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 199,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f630d806fa1ec2c554b78f4618c1c05ca2bcd59c5550af223908b0334577be4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18e8e0da-84c9-400d-03ee-3b95428ac88f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:309a0de0-00dc-50eb-1be1-bcaaf189a9e4",
  "kind": "theorem",
  "lexical_name": "domRestrict_eq_domRestrict_iff",
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
  "slug": "domrestrict-eq-domrestrict-iff--edcb718bb5bdd4bd00b8712b",
  "source": {
    "blob": "a8cb7a820a5558ce6de09c81e3a2df27be248e09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant7f630d806fa1ec2c554b78f4618c1c05ca2bcd59c5550af223908b0334577be4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edcb718bb5bdd4bd00b8712b01a94e407e735f49bb29cb7f12f2fb380e903222",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant7f630d806fa1ec2c554b78f4618c1c05ca2bcd59c5550af223908b0334577be4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:309a0de0-00dc-50eb-1be1-bcaaf189a9e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem domRestrict_eq_domRestrict_iff :
    domRestrict s f₁ = domRestrict s f₂ ↔ EqOn f₁ f₂ s := domRestrict_eq_iff

@[deprecated (since := "2026-07-19")] alias restrict := domRestrict
@[deprecated (since := "2026-07-19")] alias restrict_def := domRestrict_def
@[deprecated (since := "2026-07-19")] alias restrict_eq := domRestrict_eq
@[deprecated (since := "2026-07-19")] alias restrict_id := domRestrict_id
@[deprecated (since := "2026-07-19")] alias restrict_apply := domRestrict_apply
@[deprecated (since := "2026-07-19")] alias restrict_eq_iff := domRestrict_eq_iff
@[deprecated (since := "2026-07-19")] alias eq_restrict_iff := eq_domRestrict_iff
@[deprecated (since := "2026-07-19")] alias range_restrict := range_domRestrict
@[deprecated (since := "2026-07-19")] alias image_restrict := image_domRestrict
@[deprecated (since := "2026-07-19")] alias restrict_dite := domRestrict_dite
@[deprecated (since := "2026-07-19")] alias restrict_dite_compl := domRestrict_dite_compl
@[deprecated (since := "2026-07-19")] alias restrict_ite := domRestrict_ite
@[deprecated (since := "2026-07-19")] alias restrict_ite_compl := domRestrict_ite_compl
@[deprecated (since := "2026-07-19")] alias restrict_piecewise := domRestrict_piecewise
@[deprecated (since := "2026-07-19")] alias restrict_piecewise_compl := domRestrict_piecewise_compl
@[deprecated (since := "2026-07-19")] alias restrict_extend_range := domRestrict_extend_range
@[deprecated (since := "2026-07-19")]
alias restrict_extend_compl_range := domRestrict_extend_compl_range
@[deprecated (since := "2026-07-19")] alias restrict₂ := domRestrict₂
@[deprecated (since := "2026-07-19")] alias restrict₂_def := domRestrict₂_def
@[deprecated (since := "2026-07-19")] alias restrict₂_comp_restrict := domRestrict₂_comp_domRestrict
@[deprecated (since := "2026-07-19")]
alias restrict₂_comp_restrict₂ := domRestrict₂_comp_domRestrict₂
@[deprecated (since := "2026-07-19")]
alias restrict_comp_codRestrict := domRestrict_comp_codRestrict
@[deprecated (since := "2026-07-19")]
alias restrict_eq_restrict_iff := domRestrict_eq_domRestrict_iff

end domRestrict

variable {s : Set α} {t : Set β} {p : Set γ} {f : α → β} {g : β → γ} {a : α} {b : β}

section MapsTo

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant7f630d806fa1ec2c554b78f4618c1c05ca2bcd59c5550af223908b0334577be4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant7f630d806fa1ec2c554b78f4618c1c05ca2bcd59c5550af223908b0334577be4.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8cb7a820a5558ce6de09c81e3a2df27be248e09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
