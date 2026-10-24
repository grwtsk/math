# emultiplicity_map_eq_ramificationIdx'_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b61e9c13820bfc7d407bc90954f5dd2084bed701",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 366,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee734a8e1c377b66c18ef1aa2658040c49c1a66fd898bc8cd76757dca6a97a9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb8514f3-8c46-8b5c-67e1-20f8fa8ebbda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:feb1e85f-fc74-15b8-927a-1201d808fc47",
  "kind": "theorem",
  "lexical_name": "emultiplicity_map_eq_ramificationIdx'_mul",
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
  "slug": "emultiplicity-map-eq-ramificationidx-mul--b6e13579dda1d5d75b16a76f",
  "source": {
    "blob": "b61e9c13820bfc7d407bc90954f5dd2084bed701",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 366,
    "path": "GRWTSK/Algebra/Ramification/Variantee734a8e1c377b66c18ef1aa2658040c49c1a66fd898bc8cd76757dca6a97a9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6e13579dda1d5d75b16a76f3dfa40f4f008603531f96600a6096992743f7adc",
  "verification": {
    "reference": "docs/verification/Algebra/Ramification/Variantee734a8e1c377b66c18ef1aa2658040c49c1a66fd898bc8cd76757dca6a97a9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:feb1e85f-fc74-15b8-927a-1201d808fc47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem emultiplicity_map_eq_ramificationIdx'_mul [IsDedekindDomain R]
    [FaithfulSMul R S] {v : Ideal R} {w : Ideal S} {I : Ideal R} (h : I ≠ ⊥)
    (hv : Irreducible v) (hw : Irreducible w) (hw_bot : w ≠ ⊥) [w.LiesOver v] :
    emultiplicity w (I.map (algebraMap R S)) =
      v.ramificationIdx' w * emultiplicity v I := by
  induction I using induction_on_prime with
  | h₁ => aesop
  | h₂ I hI =>
    obtain rfl : I = ⊤ := by simpa using hI
    simp_rw [Ideal.map_top, emultiplicity_eq_count_normalizedFactors hw top_ne_bot,
      emultiplicity_eq_count_normalizedFactors hv h, ← Ideal.one_eq_top, normalizedFactors_one]
    simp
  | h₃ I p hI hp IH =>
    rw [Ideal.map_mul, emultiplicity_mul hw.prime, emultiplicity_mul hv.prime, IH hI, mul_add,
      emultiplicity_map_eq_ramificationIdx'_mul_of_prime hv hp hw hw_bot]

@[deprecated (since := "2026-07-01")] alias emultiplicity_map_eq_ramificationIdx_mul :=
  emultiplicity_map_eq_ramificationIdx'_mul

end IsDedekindDomain

end DecEq

section tower

variable {R S T : Type*} [CommRing R] [CommRing S] [CommRing T]
variable [Algebra R S] [Algebra S T] [Algebra R T] [IsScalarTower R S T]

/-- Let `T / S / R` be a tower of algebras, `p, P, Q` be ideals in `R, S, T` respectively,
  and `P` and `Q` are prime. If `P = Q ∩ S`, then `e (Q | p) = e (P | p) * e (Q | P)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ramification/Variantee734a8e1c377b66c18ef1aa2658040c49c1a66fd898bc8cd76757dca6a97a9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ramification/Variantee734a8e1c377b66c18ef1aa2658040c49c1a66fd898bc8cd76757dca6a97a9f.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b61e9c13820bfc7d407bc90954f5dd2084bed701` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
