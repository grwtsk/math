# iUnion_range_specComap_comp_evalRingHom

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
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:003f672d-723c-06b1-e5b7-a42d9e7ad98e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:814b48ba-f848-d9d3-79aa-9efc904f50d9",
  "kind": "lemma",
  "lexical_name": "iUnion_range_specComap_comp_evalRingHom",
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
  "slug": "iunion-range-speccomap-comp-evalringhom--7f548e9c79f4d485e92e378b",
  "source": {
    "blob": "ac9cfbd4e297dff17cf05f3073adc13541c0bb6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 177,
    "path": "GRWTSK/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f548e9c79f4d485e92e378b3aa4bebe3e605096621d53b5260fd1e5c889045a",
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

Occurrence: `result:814b48ba-f848-d9d3-79aa-9efc904f50d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iUnion_range_specComap_comp_evalRingHom
    {ι : Type*} {R : ι → Type*} [∀ i, CommRing (R i)] [Finite ι]
    {S : Type*} [CommRing S] (f : S →+* Π i, R i) :
    ⋃ i, Set.range ((Pi.evalRingHom R i).comp f).specComap = Set.range f.specComap := by
  simp_rw [specComap_comp]
  apply subset_antisymm
  · exact Set.iUnion_subset fun _ ↦ Set.range_comp_subset_range _ _
  · rintro _ ⟨p, rfl⟩
    obtain ⟨i, p, rfl⟩ := exists_comap_evalRingHom_eq p
    exact Set.mem_iUnion_of_mem i ⟨p, rfl⟩

end Pi

end PrimeSpectrum

section SpecOfSurjective

open Function RingHom

variable [CommRing R] [CommRing S]
variable (f : R →+* S)
variable {R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingHom/Variantda4dd179792089a4e17e98c453b40ff979a6edbf05498473ddc405aff19384e2.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac9cfbd4e297dff17cf05f3073adc13541c0bb6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
