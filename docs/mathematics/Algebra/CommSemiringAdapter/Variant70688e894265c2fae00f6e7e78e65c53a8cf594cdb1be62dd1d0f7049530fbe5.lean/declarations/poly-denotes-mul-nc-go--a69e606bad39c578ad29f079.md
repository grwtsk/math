# Poly.denoteS_mul_nc_go

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcab5f22-94c4-3913-8e1c-26ed5a511a71",
  "kind": "theorem",
  "lexical_name": "Poly.denoteS_mul_nc_go",
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
  "slug": "poly-denotes-mul-nc-go--a69e606bad39c578ad29f079",
  "source": {
    "blob": "ee8a0434998c1908f6d6af2f41c9607ebec91a06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 446,
    "path": "GRWTSK/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a69e606bad39c578ad29f079679048bd1b6b76f39d9313ba7b7bf036abb4e604",
  "verification": {
    "reference": "docs/verification/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcab5f22-94c4-3913-8e1c-26ed5a511a71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Poly.denoteS_mul_nc_go {α} [Semiring α] (ctx : Context α) (p₁ p₂ acc : Poly)
    : p₁.NonnegCoeffs → p₂.NonnegCoeffs → acc.NonnegCoeffs → (mul_nc.go p₂ p₁ acc).denoteS ctx = acc.denoteS ctx + p₁.denoteS ctx * p₂.denoteS ctx := by
  fun_induction mul_nc.go <;> intro h₁ h₂ h₃
  next k =>
    cases h₁; rename_i h₁
    have := p₂.mulConst_NonnegCoeffs h₁ h₂
    simp [denoteS, denoteS_combine, denoteS_mulConst, *]
  next acc a m p ih =>
    cases h₁; rename_i h₁ h₁'
    have := p₂.mulMon_nc_NonnegCoeffs m h₁ h₂
    have := acc.combine_NonnegCoeffs h₃ this
    replace ih := ih h₁' h₂ this
    rw [ih, denoteS_combine, denoteS_mulMon_nc]
    simp [denoteS, add_assoc, right_distrib]
    all_goals assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee8a0434998c1908f6d6af2f41c9607ebec91a06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
