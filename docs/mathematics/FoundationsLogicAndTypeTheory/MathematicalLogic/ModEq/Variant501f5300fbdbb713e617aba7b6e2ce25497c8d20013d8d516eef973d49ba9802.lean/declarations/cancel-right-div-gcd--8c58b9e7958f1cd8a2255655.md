# cancel_right_div_gcd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f51ffa24-d44e-52e4-adcc-e918e75e766b",
  "kind": "theorem",
  "lexical_name": "cancel_right_div_gcd",
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
  "slug": "cancel-right-div-gcd--8c58b9e7958f1cd8a2255655",
  "source": {
    "blob": "585ab555b88a89d3b5b05dce2f3bcd2aa203655f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 184,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant501f5300fbdbb713e617aba7b6e2ce25497c8d20013d8d516eef973d49ba9802.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c58b9e7958f1cd8a2255655238e842a5a2537407f3c50b39d4946c94ea8855f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant501f5300fbdbb713e617aba7b6e2ce25497c8d20013d8d516eef973d49ba9802.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f51ffa24-d44e-52e4-adcc-e918e75e766b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cancel_right_div_gcd (hm : 0 < m) (h : a * c ≡ b * c [ZMOD m]) :
    a ≡ b [ZMOD m / gcd m c] := by
  letI d := gcd m c
  rw [modEq_iff_dvd] at h ⊢
  refine Int.dvd_of_dvd_mul_right_of_gcd_one (?_ : m / d ∣ c / d * (b - a)) ?_
  · rw [mul_comm, ← Int.mul_ediv_assoc (b - a) (gcd_dvd_right ..), Int.sub_mul]
    exact Int.ediv_dvd_ediv (gcd_dvd_left ..) h
  · rw [gcd_div (gcd_dvd_left ..) (gcd_dvd_right ..), natAbs_natCast,
      Nat.div_self (gcd_pos_of_ne_zero_left c hm.ne')]

/-- To cancel a common factor `c` from a `ModEq` we must divide the modulus `m` by `gcd m c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant501f5300fbdbb713e617aba7b6e2ce25497c8d20013d8d516eef973d49ba9802.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant501f5300fbdbb713e617aba7b6e2ce25497c8d20013d8d516eef973d49ba9802.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `585ab555b88a89d3b5b05dce2f3bcd2aa203655f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
