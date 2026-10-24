# prime_inv_sqrt_le_three_quarters

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5114548f-b94f-f3bd-c3c5-e7a806ac5695",
  "kind": "theorem",
  "lexical_name": "prime_inv_sqrt_le_three_quarters",
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
  "slug": "prime-inv-sqrt-le-three-quarters--aea5362d872c41d1c790655d",
  "source": {
    "blob": "624b234ace6b95c789cb23023337af8959fcedc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 46,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aea5362d872c41d1c790655dcd7b11adecbb30c4f366f0d56c907dac9547f607",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5114548f-b94f-f3bd-c3c5-e7a806ac5695`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_inv_sqrt_le_three_quarters (p : Nat.Primes) :
    (Real.sqrt (p : ℝ))⁻¹ ≤ (3 / 4 : ℝ) := by
  have hp : (2 : ℝ) ≤ p := by exact_mod_cast p.prop.two_le
  have hs := Real.sqrt_nonneg (p : ℝ)
  have hss := Real.sq_sqrt (by positivity : 0 ≤ (p : ℝ))
  have hpos : 0 < Real.sqrt (p : ℝ) := by positivity
  apply (inv_le_iff_one_le_mul₀ hpos).mpr
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `624b234ace6b95c789cb23023337af8959fcedc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
