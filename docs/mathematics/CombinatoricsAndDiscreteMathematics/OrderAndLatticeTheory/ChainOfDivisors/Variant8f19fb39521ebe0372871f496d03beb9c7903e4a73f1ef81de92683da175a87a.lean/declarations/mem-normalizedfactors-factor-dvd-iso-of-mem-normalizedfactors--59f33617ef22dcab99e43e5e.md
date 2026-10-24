# mem_normalizedFactors_factor_dvd_iso_of_mem_normalizedFactors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce0ff1cd269a361b949443ad25be5c6e6d1d8f23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 395,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28cc80fb-41f5-ef31-8d4d-8ef4872fdce9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9938373-87f7-82ab-40b4-c877648fdb72",
  "kind": "theorem",
  "lexical_name": "mem_normalizedFactors_factor_dvd_iso_of_mem_normalizedFactors",
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
  "slug": "mem-normalizedfactors-factor-dvd-iso-of-mem-normalizedfactors--59f33617ef22dcab99e43e5e",
  "source": {
    "blob": "ce0ff1cd269a361b949443ad25be5c6e6d1d8f23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 395,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59f33617ef22dcab99e43e5ef0475218a38fa8cbe918919b684f425c91c59c39",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9938373-87f7-82ab-40b4-c877648fdb72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_normalizedFactors_factor_dvd_iso_of_mem_normalizedFactors [DecidableEq N] {m p : M}
    {n : N} (hm : m ≠ 0) (hn : n ≠ 0) (hp : p ∈ normalizedFactors m)
    {d : { l : M // l ∣ m } ≃ { l : N // l ∣ n }}
    (hd : ∀ l l', (d l : N) ∣ d l' ↔ (l : M) ∣ (l' : M)) :
    ↑(d ⟨p, dvd_of_mem_normalizedFactors hp⟩) ∈ normalizedFactors n := by
  suffices
    Prime (d ⟨associatesEquivOfUniqueUnits (associatesEquivOfUniqueUnits.symm p), by
            simp [dvd_of_mem_normalizedFactors hp]⟩ : N) by
    simp only [associatesEquivOfUniqueUnits_apply, out_mk, normalize_eq,
      associatesEquivOfUniqueUnits_symm_apply] at this
    obtain ⟨q, hq, hq'⟩ :=
      exists_mem_normalizedFactors_of_dvd hn this.irreducible
        (d ⟨p, by apply dvd_of_mem_normalizedFactors; convert hp⟩).prop
    rwa [associated_iff_eq.mp hq']
  have :
    Associates.mk
        (d ⟨associatesEquivOfUniqueUnits (associatesEquivOfUniqueUnits.symm p), by
              simp only [dvd_of_mem_normalizedFactors hp, associatesEquivOfUniqueUnits_apply,
                out_mk, normalize_eq, associatesEquivOfUniqueUnits_symm_apply]⟩ : N) =
      ↑(mkFactorOrderIsoOfFactorDvdEquiv hd
          ⟨associatesEquivOfUniqueUnits.symm p, by
            simp only [associatesEquivOfUniqueUnits_symm_apply]
            exact mk_dvd_mk.mpr (dvd_of_mem_normalizedFactors hp)⟩) := by
    rw [mkFactorOrderIsoOfFactorDvdEquiv_apply_coe]
  rw [← Associates.prime_mk, this]
  letI := Classical.decEq (Associates M)
  refine' map_prime_of_factor_orderIso (mk_ne_zero.mpr hn) _ _
  obtain ⟨q, hq, hq'⟩ :=
    exists_mem_normalizedFactors_of_dvd (mk_ne_zero.mpr hm)
      ((prime_mk p).mpr (prime_of_normalized_factor p (by convert hp))).irreducible
      (mk_le_mk_of_dvd (dvd_of_mem_normalizedFactors hp))
  simpa only [associated_iff_eq.mp hq', associatesEquivOfUniqueUnits_symm_apply] using hq
#align mem_normalized_factors_factor_dvd_iso_of_mem_normalized_factors mem_normalizedFactors_factor_dvd_iso_of_mem_normalizedFactors

variable [DecidableRel ((· ∣ ·) : M → M → Prop)] [DecidableRel ((· ∣ ·) : N → N → Prop)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce0ff1cd269a361b949443ad25be5c6e6d1d8f23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
