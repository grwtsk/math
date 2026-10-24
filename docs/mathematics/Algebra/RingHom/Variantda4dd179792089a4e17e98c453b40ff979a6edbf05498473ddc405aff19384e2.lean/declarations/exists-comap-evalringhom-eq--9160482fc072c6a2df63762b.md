# exists_comap_evalRingHom_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac9cfbd4e297dff17cf05f3073adc13541c0bb6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1610ba3b-cb4c-20e7-4ac2-f289eb88c5c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f34683d7-ffae-f697-6d25-0a507b2ef119",
  "kind": "lemma",
  "lexical_name": "exists_comap_evalRingHom_eq",
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
  "slug": "exists-comap-evalringhom-eq--9160482fc072c6a2df63762b",
  "source": {
    "blob": "ac9cfbd4e297dff17cf05f3073adc13541c0bb6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 145,
    "path": "GRWTSK/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9160482fc072c6a2df63762b4fa57e7a5a831a5e159b5fc146c1bb58b4e8a72b",
  "verification": {
    "reference": "docs/verification/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f34683d7-ffae-f697-6d25-0a507b2ef119`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_comap_evalRingHom_eq
    {ι : Type*} {R : ι → Type*} [∀ i, CommRing (R i)] [Finite ι]
    (p : PrimeSpectrum (Π i, R i)) :
    ∃ (i : ι) (q : PrimeSpectrum (R i)), (Pi.evalRingHom R i).specComap q = p := by
  classical
  cases nonempty_fintype ι
  let e (i) : Π i, R i := Function.update 1 i 0
  have H : ∏ i, e i = 0 := by
    ext j
    rw [Finset.prod_apply, Pi.zero_apply, Finset.prod_eq_zero (Finset.mem_univ j)]
    simp [e]
  obtain ⟨i, hi⟩ : ∃ i, e i ∈ p.asIdeal := by
    simpa [← H, Ideal.IsPrime.prod_mem_iff] using p.asIdeal.zero_mem
  let h₁ : Function.Surjective (Pi.evalRingHom R i) := RingHomSurjective.is_surjective
  have h₂ : RingHom.ker (Pi.evalRingHom R i) ≤ p.asIdeal := by
    intro x hx
    convert p.asIdeal.mul_mem_left x hi
    ext j
    by_cases hj : i = j
    · subst hj; simpa [e]
    · simp [e, Function.update_of_ne (.symm hj)]
  have : (p.asIdeal.map (Pi.evalRingHom R i)).comap (Pi.evalRingHom R i) = p.asIdeal := by
    rwa [Ideal.comap_map_of_surjective _ h₁, sup_eq_left]
  exact ⟨i, ⟨_, Ideal.map_isPrime_of_surjective h₁ h₂⟩, PrimeSpectrum.ext this⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac9cfbd4e297dff17cf05f3073adc13541c0bb6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
