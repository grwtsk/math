# int_valuation_exists_uniformizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "074c3feec6c9b4af33d8d33a3d7cc253fd8791d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df430a84-db20-489d-c076-4416bb202941",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:958689b9-5d1f-1fc6-a531-542083dfa2d0",
  "kind": "theorem",
  "lexical_name": "int_valuation_exists_uniformizer",
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
  "slug": "int-valuation-exists-uniformizer--8e98b7889be520f16a5eb5d7",
  "source": {
    "blob": "074c3feec6c9b4af33d8d33a3d7cc253fd8791d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 232,
    "path": "GRWTSK/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e98b7889be520f16a5eb5d7a574c67d13aab2bd356b8a5aa5f1999159c28ae1",
  "verification": {
    "reference": "docs/verification/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:958689b9-5d1f-1fc6-a531-542083dfa2d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem int_valuation_exists_uniformizer :
    ∃ π : R, v.intValuationDef π = Multiplicative.ofAdd (-1 : ℤ) := by
  have hv : _root_.Irreducible (Associates.mk v.asIdeal) := v.associates_irreducible
  have hlt : v.asIdeal ^ 2 < v.asIdeal := by
    rw [← Ideal.dvdNotUnit_iff_lt]
    exact
      ⟨v.ne_bot, v.asIdeal, (not_congr Ideal.isUnit_iff).mpr (Ideal.IsPrime.ne_top v.isPrime),
        sq v.asIdeal⟩
  obtain ⟨π, mem, nmem⟩ := SetLike.exists_of_lt hlt
  have hπ : Associates.mk (Ideal.span {π}) ≠ 0 := by
    rw [Associates.mk_ne_zero']
    intro h
    rw [h] at nmem
    exact nmem (Submodule.zero_mem (v.asIdeal ^ 2))
  use π
  rw [intValuationDef, if_neg (Associates.mk_ne_zero'.mp hπ), WithZero.coe_inj]
  apply congr_arg
  rw [neg_inj, ← Int.ofNat_one, Int.coe_nat_inj']
  rw [← Ideal.dvd_span_singleton, ← Associates.mk_le_mk_iff_dvd_iff] at mem nmem
  rw [← pow_one (Associates.mk v.asIdeal), Associates.prime_pow_dvd_iff_le hπ hv] at mem
  rw [Associates.mk_pow, Associates.prime_pow_dvd_iff_le hπ hv, not_le] at nmem
  exact Nat.eq_of_le_of_lt_succ mem nmem
#align is_dedekind_domain.height_one_spectrum.int_valuation_exists_uniformizer IsDedekindDomain.HeightOneSpectrum.int_valuation_exists_uniformizer

/-! ### Adic valuations on the field of fractions `K` -/


/-- The `v`-adic valuation of `x ∈ K` is the valuation of `r` divided by the valuation of `s`,
where `r` and `s` are chosen so that `x = r/s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AdicValuation/Variant5913438b68b8de38876c3f459ebcc970f60afadc71f75ff12cb15388a26786b4.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `074c3feec6c9b4af33d8d33a3d7cc253fd8791d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
