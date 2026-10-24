# ofPrime_idealOfLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d116f4e8-3662-772b-1f6e-4c50c739717a",
  "kind": "theorem",
  "lexical_name": "ofPrime_idealOfLE",
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
  "slug": "ofprime-idealofle--f261a0c61f73c75d9913240f",
  "source": {
    "blob": "d166e10be6c81bee254371ab1d283e62605f6104",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 354,
    "path": "GRWTSK/Algebra/ValuationSubring/Variant865f9469a5133a3ebaafc4884b583870e271a15f81649b15db5eec45a36ed2d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f261a0c61f73c75d9913240ff913f4b37113d7f3d300b0bdc99c7db2eb17c575",
  "verification": {
    "reference": "docs/verification/Algebra/ValuationSubring/Variant865f9469a5133a3ebaafc4884b583870e271a15f81649b15db5eec45a36ed2d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d116f4e8-3662-772b-1f6e-4c50c739717a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofPrime_idealOfLE (R S : ValuationSubring K) (h : R ≤ S) :
    ofPrime R (idealOfLE R S h) = S := by
  ext x; constructor
  · rintro ⟨a, r, hr, rfl⟩; apply mul_mem; · exact h a.2
    · rw [← valuation_le_one_iff, map_inv₀, ← inv_one, inv_le_inv₀]
      · exact not_lt.1 ((not_iff_not.2 <| valuation_lt_one_iff S _).1 hr)
      · intro hh; erw [Valuation.zero_iff, Subring.coe_eq_zero_iff] at hh
        apply hr; rw [hh]; apply Ideal.zero_mem (R.idealOfLE S h)
      · exact one_ne_zero
  · intro hx; by_cases hr : x ∈ R; · exact R.le_ofPrime _ hr
    have : x ≠ 0 := fun h => hr (by rw [h]; exact R.zero_mem)
    replace hr := (R.mem_or_inv_mem x).resolve_left hr
    · -- Porting note: added `⟨⟩` brackets and reordered goals
      use 1, ⟨x⁻¹, hr⟩; constructor
      · field_simp
      · change (⟨x⁻¹, h hr⟩ : S) ∉ nonunits S
        rw [mem_nonunits_iff, Classical.not_not]
        apply isUnit_of_mul_eq_one _ (⟨x, hx⟩ : S)
        ext; field_simp
#align valuation_subring.of_prime_ideal_of_le ValuationSubring.ofPrime_idealOfLE

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ValuationSubring/Variant865f9469a5133a3ebaafc4884b583870e271a15f81649b15db5eec45a36ed2d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ValuationSubring/Variant865f9469a5133a3ebaafc4884b583870e271a15f81649b15db5eec45a36ed2d9.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d166e10be6c81bee254371ab1d283e62605f6104` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
