# zmod_congr_of_sub_mem_span_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2846869d-394c-dfaf-86bd-75b58259b2c2",
  "kind": "theorem",
  "lexical_name": "zmod_congr_of_sub_mem_span_aux",
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
  "slug": "zmod-congr-of-sub-mem-span-aux--80daa5bf237075f150be76c8",
  "source": {
    "blob": "133710057c59a33dfd614205c183159246a63030",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 149,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant3dba06d9d29432c0709db5a65b632b10672dbf14d6726b7e4cdb508b78b6640c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80daa5bf237075f150be76c825715caba05fd63742f66f14a24a399464fb0589",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant3dba06d9d29432c0709db5a65b632b10672dbf14d6726b7e4cdb508b78b6640c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2846869d-394c-dfaf-86bd-75b58259b2c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zmod_congr_of_sub_mem_span_aux (n : ℕ) (x : ℤ_[p]) (a b : ℤ)
    (ha : x - a ∈ (Ideal.span {(p : ℤ_[p]) ^ n}))
    (hb : x - b ∈ (Ideal.span {(p : ℤ_[p]) ^ n})) : (a : ZMod (p ^ n)) = b := by
  rw [Ideal.mem_span_singleton] at ha hb
  rw [← sub_eq_zero, ← Int.cast_sub, ZMod.int_cast_zmod_eq_zero_iff_dvd, Int.coe_nat_pow]
  rw [← dvd_neg, neg_sub] at ha
  have := dvd_add ha hb
  rwa [sub_eq_add_neg, sub_eq_add_neg, add_assoc, neg_add_cancel_left, ← sub_eq_add_neg, ←
    Int.cast_sub, pow_p_dvd_int_iff, Nat.cast_pow] at this
#align padic_int.zmod_congr_of_sub_mem_span_aux PadicInt.zmod_congr_of_sub_mem_span_aux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant3dba06d9d29432c0709db5a65b632b10672dbf14d6726b7e4cdb508b78b6640c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant3dba06d9d29432c0709db5a65b632b10672dbf14d6726b7e4cdb508b78b6640c.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `133710057c59a33dfd614205c183159246a63030` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
