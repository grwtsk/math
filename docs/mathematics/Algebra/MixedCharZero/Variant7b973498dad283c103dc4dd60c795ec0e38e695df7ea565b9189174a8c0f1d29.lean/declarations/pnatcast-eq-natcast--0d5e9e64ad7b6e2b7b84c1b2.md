# pnatCast_eq_natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa4ee833-f2de-5747-22ea-9d999e5122ef",
  "kind": "theorem",
  "lexical_name": "pnatCast_eq_natCast",
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
  "slug": "pnatcast-eq-natcast--0d5e9e64ad7b6e2b7b84c1b2",
  "source": {
    "blob": "7f72dde770905fb1753b8e06580b9b79cedb41e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 223,
    "path": "GRWTSK/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d5e9e64ad7b6e2b7b84c1b2c43c8dd27758324b8a59739729ba0be3f8b4d790",
  "verification": {
    "reference": "docs/verification/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa4ee833-f2de-5747-22ea-9d999e5122ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pnatCast_eq_natCast [Fact (∀ I : Ideal R, I ≠ ⊤ → CharZero (R ⧸ I))] (n : ℕ+) :
    ((n : Rˣ) : R) = ↑n := by
  change ((PNat.isUnit_natCast (R := R) n).unit : R) = ↑n
  simp only [IsUnit.unit_spec]
#align equal_char_zero.pnat_coe_units_coe_eq_coe EqualCharZero.pnatCast_eq_natCast

/-- Equal characteristic implies `ℚ`-algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f72dde770905fb1753b8e06580b9b79cedb41e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
