# pickup_negative_half_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2c452db-6be4-23e9-aba4-56693ead2783",
  "kind": "theorem",
  "lexical_name": "pickup_negative_half_integral",
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
  "slug": "pickup-negative-half-integral--2140c590877d761e460daa24",
  "source": {
    "blob": "5e6c4b01e48f5cf6e779023aac9098fc0801127d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 106,
    "path": "GRWTSK/NumberTheory/Moebius/FiniteResponseSum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2140c590877d761e460daa2496f7d1d1131a5923020e969f3de6248e7eed0b55",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/FiniteResponseSum.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2c452db-6be4-23e9-aba4-56693ead2783`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickup_negative_half_integral (a b : ℝ) :
    (∫ u in a..b, Real.exp (-u / 2)) =
      2 * (Real.exp (-a / 2) - Real.exp (-b / 2)) := by
  have hd (u : ℝ) : HasDerivAt (fun x : ℝ => -2 * Real.exp (-x / 2))
      (Real.exp (-u / 2)) u := by
    have ha : HasDerivAt (fun x : ℝ => -x / 2) (-(1 : ℝ) / 2) u :=
      (hasDerivAt_id u).neg.div_const 2
    have heq : (-2 : ℝ) * (Real.exp (-u / 2) * (-(1 : ℝ) / 2)) =
        Real.exp (-u / 2) := by ring
    simpa only [heq] using ha.exp.const_mul (-2)
  have hi : IntervalIntegrable (fun u : ℝ => Real.exp (-u / 2)) volume a b :=
    (Real.continuous_exp.comp ((continuous_id.neg).div_const 2)).intervalIntegrable a b
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun u _ => hd u) hi]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/FiniteResponseSum.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FiniteResponseSum.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e6c4b01e48f5cf6e779023aac9098fc0801127d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
