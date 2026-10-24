# Poly.denoteS_mulMon_nc_go

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a783e93b-025c-bc5f-4a95-f41867a29ad8",
  "kind": "theorem",
  "lexical_name": "Poly.denoteS_mulMon_nc_go",
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
  "slug": "poly-denotes-mulmon-nc-go--4d694a5bfb46f3c56e70fe71",
  "source": {
    "blob": "ee8a0434998c1908f6d6af2f41c9607ebec91a06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 253,
    "path": "GRWTSK/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d694a5bfb46f3c56e70fe71a326c1be1c4ab419946939c915d44b2ebe6f14a3",
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

Occurrence: `result:a783e93b-025c-bc5f-4a95-f41867a29ad8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Poly.denoteS_mulMon_nc_go {α} [Semiring α] (ctx : Context α) (k : Int) (m : Mon) (p : Poly) (acc : Poly)
    : k ≥ 0 → p.NonnegCoeffs → acc.NonnegCoeffs
      → (mulMon_nc.go k m p acc).denoteS ctx = k.toNat * m.denote ctx * p.denoteS ctx + acc.denoteS ctx := by
  fun_induction mulMon_nc.go with simp [*]
  | case1 acc k' =>
    intro h₁ h₂ h₃; cases h₂
    have : k * k' ≥ 0 := by apply Int.mul_nonneg <;> assumption
    simp [denoteS_insert, denoteS, Int.toNat_mul, Semiring.natCast_mul, Semiring.mul_assoc, *]
    rw [← Semiring.natCast_mul_comm]
  | case2 acc k' m' p ih =>
    intro h₁ h₂ h₃; rcases h₂
    next _ h₂ =>
    have : k * k' ≥ 0 := by apply Int.mul_nonneg <;> assumption
    have : (insert (k * k') (m.mul_nc m') acc).NonnegCoeffs := by apply Poly.insert_Nonneg <;> assumption
    rw [ih h₁ h₂ this]
    simp [denoteS_insert, Int.toNat_mul, Semiring.natCast_mul, denoteS, left_distrib, Mon.denote_mul_nc, *]
    simp only [← Semiring.add_assoc]
    congr 1
    rw [Semiring.add_comm]
    congr 1
    rw [Semiring.natCast_mul_left_comm]
    conv => enter [1, 1]; rw [Semiring.natCast_mul_comm]
    simp [Semiring.mul_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee8a0434998c1908f6d6af2f41c9607ebec91a06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
