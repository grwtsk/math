# Units.mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "357fac7c61b45cd38232a35196cbb61d79a465ee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:493b73b2-fd63-5ede-666b-160c016469b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:548654c4-ea30-e132-4c93-27cb08680870",
  "kind": "theorem",
  "lexical_name": "Units.mem",
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
  "slug": "units-mem--efaf7939c179c961bc71f8ff",
  "source": {
    "blob": "357fac7c61b45cd38232a35196cbb61d79a465ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 47,
    "path": "GRWTSK/NumberTheory/Three/Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efaf7939c179c961bc71f8ff8bcd5944ea5b48bde8b8c0afee7e4dae529a1f6a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Three/Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:548654c4-ea30-e132-4c93-27cb08680870`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Units.mem [NumberField K] [IsCyclotomicExtension {3} ℚ K] :
    u ∈ [1, -1, η, -η, η ^ 2, -η ^ 2] := by
  have hrank : rank K = 0 := by
    dsimp only [rank]
    rw [card_eq_nrRealPlaces_add_nrComplexPlaces, nrRealPlaces_eq_zero (n := 3) K (by decide),
      zero_add, nrComplexPlaces_eq_totient_div_two (n := 3)]
    rfl
  obtain ⟨⟨x, e⟩, hxu, -⟩ := exist_unique_eq_mul_prod _ u
  replace hxu : u = x := by
    rw [← mul_one x.1, hxu]
    apply congr_arg
    rw [← Finset.prod_empty]
    congr
    rw [Finset.univ_eq_empty_iff, hrank]
    infer_instance
  obtain ⟨n, hnpos, hn⟩ := isOfFinOrder_iff_pow_eq_one.1 <| (CommGroup.mem_torsion _ _).1 x.2
  replace hn : (↑u : K) ^ ((⟨n, hnpos⟩ : ℕ+) : ℕ) = 1 := by
    rw [← map_pow]
    convert map_one (algebraMap (𝓞 K) K)
    rw_mod_cast [hxu, hn]
    simp
  obtain ⟨r, hr3, hru⟩ := hζ.exists_pow_or_neg_mul_pow_of_isOfFinOrder (by decide)
    (isOfFinOrder_iff_pow_eq_one.2 ⟨n, hnpos, hn⟩)
  replace hr : r ∈ Finset.Ico 0 3 := Finset.mem_Ico.2 ⟨by simp, hr3⟩
  replace hru : ↑u = η ^ r ∨ ↑u = -η ^ r := by
    rcases hru with h | h
    · left; ext; exact h
    · right; ext; exact h
  fin_cases hr <;> rcases hru with h | h <;> simp [h]

/-- We have that `λ ^ 2 = -3 * η`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Three/Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Three/Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `357fac7c61b45cd38232a35196cbb61d79a465ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
