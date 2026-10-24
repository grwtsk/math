# add_num_den'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59047607-b208-19a4-1513-61171cfd1a2f",
  "kind": "theorem",
  "lexical_name": "add_num_den'",
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
  "slug": "add-num-den--26eaf0018da36d10eb6c0aa4",
  "source": {
    "blob": "66077b1e0338e339e3217ada594ed979aff95f74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 161,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26eaf0018da36d10eb6c0aa463cfaccd3cec69606ff9c0313b63f4ceb87f4f24",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59047607-b208-19a4-1513-61171cfd1a2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_num_den' (q r : ℚ) :
    (q + r).num * q.den * r.den = (q.num * r.den + r.num * q.den) * (q + r).den := by
  let s := divInt (q.num * r.den + r.num * q.den) (q.den * r.den : ℤ)
  have hs : (q.den * r.den : ℤ) ≠ 0 := Int.natCast_ne_zero_iff_pos.mpr (Nat.mul_pos q.pos r.pos)
  obtain ⟨c, ⟨c_mul_num, c_mul_den⟩⟩ :=
    exists_eq_mul_div_num_and_eq_mul_div_den (q.num * r.den + r.num * q.den) hs
  rw [c_mul_num, mul_assoc, mul_comm]
  nth_rw 1 [c_mul_den]
  repeat rw [Int.mul_assoc]
  apply mul_eq_mul_left_iff.2
  rw [or_iff_not_imp_right]
  intro
  have h : _ = s := divInt_add_divInt q.num r.num (mod_cast q.den_ne_zero) (mod_cast r.den_ne_zero)
  rw [num_divInt_den, num_divInt_den] at h
  rw [h]
  rw [mul_comm]
  apply Rat.eq_iff_mul_eq_mul.mp
  rw [← divInt_eq_div]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66077b1e0338e339e3217ada594ed979aff95f74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
