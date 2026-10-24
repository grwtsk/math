# exists_eq_pow_p_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfde9f2b-3a93-91ca-305b-68be6834e86e",
  "kind": "theorem",
  "lexical_name": "exists_eq_pow_p_mul",
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
  "slug": "exists-eq-pow-p-mul--1439b0e2a51b43e393c35707",
  "source": {
    "blob": "583d1a6ba66a2cb2b7ceaea2963a895c1c0a27c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 121,
    "path": "GRWTSK/Algebra/DiscreteValuationRing/Variant8dedfd5de2395975545d36462cfdf59958a12d1b9b721b76830eb5dd2df57a56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1439b0e2a51b43e393c357075a72b59b40de20dd7a045071f9d120fc86c8c599",
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

Occurrence: `result:bfde9f2b-3a93-91ca-305b-68be6834e86e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_pow_p_mul (a : 𝕎 k) (ha : a ≠ 0) :
    ∃ (m : ℕ) (b : 𝕎 k), b.coeff 0 ≠ 0 ∧ a = (p : 𝕎 k) ^ m * b := by
  obtain ⟨m, c, hc, hcm⟩ := WittVector.verschiebung_nonzero ha
  obtain ⟨b, rfl⟩ := (frobenius_bijective p k).surjective.iterate m c
  rw [WittVector.iterate_frobenius_coeff] at hc
  have := congr_fun (WittVector.verschiebung_frobenius_comm.comp_iterate m) b
  simp only [Function.comp_apply] at this
  rw [← this] at hcm
  refine ⟨m, b, ?_, ?_⟩
  · contrapose! hc
    simp [hc, zero_pow <| pow_ne_zero _ hp.out.ne_zero]
  · simp_rw [← mul_left_iterate (p : 𝕎 k) m]
    convert hcm using 2
    ext1 x
    rw [mul_comm, ← WittVector.verschiebung_frobenius x]; rfl

end PerfectRing

section PerfectField

variable {k : Type*} [Field k] [CharP k p] [PerfectRing k p]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DiscreteValuationRing/Variant8dedfd5de2395975545d36462cfdf59958a12d1b9b721b76830eb5dd2df57a56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DiscreteValuationRing/Variant8dedfd5de2395975545d36462cfdf59958a12d1b9b721b76830eb5dd2df57a56.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `583d1a6ba66a2cb2b7ceaea2963a895c1c0a27c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
