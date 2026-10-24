# Poly.mulMon_nc_NonnegCoeffs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcee875c-02e2-cdff-ef3f-d0ba9c6bc071",
  "kind": "theorem",
  "lexical_name": "Poly.mulMon_nc_NonnegCoeffs",
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
  "slug": "poly-mulmon-nc-nonnegcoeffs--61e64f2374af1d17d29d22e4",
  "source": {
    "blob": "ee8a0434998c1908f6d6af2f41c9607ebec91a06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 335,
    "path": "GRWTSK/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61e64f2374af1d17d29d22e40e6d19eef97831924a64b7b62e67fc3fe16b18cb",
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

Occurrence: `result:fcee875c-02e2-cdff-ef3f-d0ba9c6bc071`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Poly.mulMon_nc_NonnegCoeffs {p : Poly} {k : Int} (m : Mon) : k ≥ 0 → p.NonnegCoeffs → (p.mulMon_nc k m).NonnegCoeffs := by
  simp [mulMon_nc, cond_eq_ite]; split
  next => intros; constructor; decide
  split
  next => intros; apply mulConst_NonnegCoeffs <;> assumption
  intro h₁ h₂
  apply Poly.mulMon_nc_go_NonnegCoeffs; assumption; assumption
  exact Poly.num_zero_NonnegCoeffs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee8a0434998c1908f6d6af2f41c9607ebec91a06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
