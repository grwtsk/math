# irreducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee81f577-a036-188f-806c-e28da71a1c3c",
  "kind": "theorem",
  "lexical_name": "irreducible",
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
  "slug": "irreducible--df805832ee58c568402fc7ee",
  "source": {
    "blob": "583d1a6ba66a2cb2b7ceaea2963a895c1c0a27c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 97,
    "path": "GRWTSK/Algebra/DiscreteValuationRing/Variant8dedfd5de2395975545d36462cfdf59958a12d1b9b721b76830eb5dd2df57a56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df805832ee58c568402fc7eeddcdd3fa5347b65972fe2a1fa0eab1bc5ab27326",
  "verification": {
    "reference": "docs/verification/Algebra/DiscreteValuationRing/Variant8dedfd5de2395975545d36462cfdf59958a12d1b9b721b76830eb5dd2df57a56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee81f577-a036-188f-806c-e28da71a1c3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem irreducible : Irreducible (p : 𝕎 k) := by
  have hp : ¬IsUnit (p : 𝕎 k) := by
    intro hp
    simpa only [constantCoeff_apply, coeff_p_zero, not_isUnit_zero] using
      (constantCoeff : WittVector p k →+* _).isUnit_map hp
  refine ⟨hp, fun a b hab => ?_⟩
  obtain ⟨ha0, hb0⟩ : a ≠ 0 ∧ b ≠ 0 := by
    rw [← mul_ne_zero_iff]; intro h; rw [h] at hab; exact p_nonzero p k hab
  obtain ⟨m, a, ha, rfl⟩ := verschiebung_nonzero ha0
  obtain ⟨n, b, hb, rfl⟩ := verschiebung_nonzero hb0
  cases m; · exact Or.inl (isUnit_of_coeff_zero_ne_zero a ha)
  rcases n with - | n; · exact Or.inr (isUnit_of_coeff_zero_ne_zero b hb)
  rw [iterate_verschiebung_mul] at hab
  apply_fun fun x => coeff x 1 at hab
  simp only [coeff_p_one, Nat.add_succ, add_comm _ n, Function.iterate_succ', Function.comp_apply,
    verschiebung_coeff_add_one, verschiebung_coeff_zero] at hab
  exact (one_ne_zero hab).elim

end Field

section PerfectRing

variable {k : Type*} [CommRing k] [CharP k p] [PerfectRing k p]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DiscreteValuationRing/Variant8dedfd5de2395975545d36462cfdf59958a12d1b9b721b76830eb5dd2df57a56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DiscreteValuationRing/Variant8dedfd5de2395975545d36462cfdf59958a12d1b9b721b76830eb5dd2df57a56.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `583d1a6ba66a2cb2b7ceaea2963a895c1c0a27c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
