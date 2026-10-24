# factorPowSucc.isUnit_of_isUnit_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c0a0137-f07a-500c-511c-0fe67152815f",
  "kind": "lemma",
  "lexical_name": "factorPowSucc.isUnit_of_isUnit_image",
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
  "slug": "factorpowsucc-isunit-of-isunit-image--4da699a5cbe430bafb3f5706",
  "source": {
    "blob": "3b102a61d06714039051207d7bc3d1d97ba3833d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 141,
    "path": "GRWTSK/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4da699a5cbe430bafb3f5706c04d52568750768052a7e0c78fc0ddd5ed1c6bba",
  "verification": {
    "reference": "docs/verification/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c0a0137-f07a-500c-511c-0fe67152815f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma factorPowSucc.isUnit_of_isUnit_image {n : ℕ} (npos : n > 0) {a : R ⧸ I ^ (n + 1)}
    (h : IsUnit (factorPow I n.le_succ a)) : IsUnit a := by
  rcases isUnit_iff_exists.mp h with ⟨b, hb, _⟩
  rcases factor_surjective (pow_le_pow_right n.le_succ) b with ⟨b', hb'⟩
  rw [← hb', ← map_one (factorPow I n.le_succ), ← map_mul] at hb
  apply (RingHom.sub_mem_ker_iff (factorPow I n.le_succ)).mpr at hb
  rw [factor_ker (pow_le_pow_right n.le_succ)] at hb
  rcases Ideal.mem_image_of_mem_map_of_surjective (Ideal.Quotient.mk (I ^ (n + 1)))
    Ideal.Quotient.mk_surjective hb with ⟨c, hc, eq⟩
  apply isUnit_of_mul_eq_one _ (b' * (1 - ((Ideal.Quotient.mk (I ^ (n + 1))) c)))
  calc
    _ = (a * b' - 1) * (1 - ((Ideal.Quotient.mk (I ^ (n + 1))) c)) +
        (1 - ((Ideal.Quotient.mk (I ^ (n + 1))) c)) := by ring
    _ = 1 := by
      rw [← eq, mul_sub, mul_one, sub_add_sub_cancel', sub_eq_self, ← map_mul,
        Ideal.Quotient.eq_zero_iff_mem, pow_add]
      apply Ideal.mul_mem_mul hc (Ideal.mul_le_left (I := I ^ (n - 1)) _)
      simpa only [← pow_add, Nat.sub_add_cancel npos] using hc
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b102a61d06714039051207d7bc3d1d97ba3833d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
