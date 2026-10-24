# emultiplicity_factor_dvd_iso_eq_emultiplicity_of_mem_normalizedFactors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20457e71-58d7-00e9-b661-cee06eee76bf",
  "kind": "theorem",
  "lexical_name": "emultiplicity_factor_dvd_iso_eq_emultiplicity_of_mem_normalizedFactors",
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
  "slug": "emultiplicity-factor-dvd-iso-eq-emultiplicity-of-mem-normalizedfactors--f9a4bd1c523bd0e87e104733",
  "source": {
    "blob": "53f7cb831b5646ae6829ef1e99a40b3dda66ed5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 411,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9a4bd1c523bd0e87e104733980361f603a186ae44d1beeaed077ec4ccd1db98",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20457e71-58d7-00e9-b661-cee06eee76bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem emultiplicity_factor_dvd_iso_eq_emultiplicity_of_mem_normalizedFactors {m p : M} {n : N}
    (hm : m ≠ 0) (hn : n ≠ 0) (hp : p ∈ normalizedFactors m)
    {d : { l : M // l ∣ m } ≃ { l : N // l ∣ n }} (hd : ∀ l l', (d l : N) ∣ d l' ↔ (l : M) ∣ l') :
    emultiplicity (d ⟨p, dvd_of_mem_normalizedFactors hp⟩ : N) n = emultiplicity p m := by
  apply Eq.symm
  suffices emultiplicity (Associates.mk p) (Associates.mk m) = emultiplicity (Associates.mk
    ↑(d ⟨associatesEquivOfUniqueUnits (associatesEquivOfUniqueUnits.symm p), by
      simp [dvd_of_mem_normalizedFactors hp]⟩)) (Associates.mk n) by
    simpa only [emultiplicity_mk_eq_emultiplicity, associatesEquivOfUniqueUnits_symm_apply,
      associatesEquivOfUniqueUnits_apply, out_mk, normalize_eq] using this
  have : Associates.mk (d ⟨associatesEquivOfUniqueUnits (associatesEquivOfUniqueUnits.symm p), by
    simp only [dvd_of_mem_normalizedFactors hp, associatesEquivOfUniqueUnits_symm_apply,
      associatesEquivOfUniqueUnits_apply, out_mk, normalize_eq]⟩ : N) =
    ↑(mkFactorOrderIsoOfFactorDvdEquiv hd ⟨associatesEquivOfUniqueUnits.symm p, by
      rw [associatesEquivOfUniqueUnits_symm_apply]
      exact mk_le_mk_of_dvd (dvd_of_mem_normalizedFactors hp)⟩) := by
    rw [mkFactorOrderIsoOfFactorDvdEquiv_apply_coe]
  rw [this]
  refine
    emultiplicity_prime_eq_emultiplicity_image_by_factor_orderIso (mk_ne_zero.mpr hn) ?_
      (mkFactorOrderIsoOfFactorDvdEquiv hd)
  obtain ⟨q, hq, hq'⟩ :=
    exists_mem_normalizedFactors_of_dvd (mk_ne_zero.mpr hm)
      (prime_mk.mpr (prime_of_normalized_factor p hp)).irreducible
      (mk_le_mk_of_dvd (dvd_of_mem_normalizedFactors hp))
  rwa [associated_iff_eq.mp hq']
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant04789da3f309c82864f047b92ba7c2675ed920d75c1a3074d523e928addbfd34.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53f7cb831b5646ae6829ef1e99a40b3dda66ed5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
